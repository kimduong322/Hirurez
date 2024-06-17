package com.duongdk.edu.Hiruez.controller;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.Base64;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.duongdk.edu.Hiruez.Utils.CurrentUserUtil;
import com.duongdk.edu.Hiruez.Utils.QrcodeConfiguration;
import com.duongdk.edu.Hiruez.dto.MyOrderDto;
import com.duongdk.edu.Hiruez.model.FoodMenu;
import com.duongdk.edu.Hiruez.model.Invoice;
import com.duongdk.edu.Hiruez.model.InvoiceItem;
import com.duongdk.edu.Hiruez.model.InvoiceLog;
import com.duongdk.edu.Hiruez.model.Menu;
import com.duongdk.edu.Hiruez.model.Order;
import com.duongdk.edu.Hiruez.model.OrderItem;
import com.duongdk.edu.Hiruez.model.Payment;
import com.duongdk.edu.Hiruez.model.Store;
import com.duongdk.edu.Hiruez.model.StoreRate;
import com.duongdk.edu.Hiruez.model.Table;
import com.duongdk.edu.Hiruez.model.User;
import com.duongdk.edu.Hiruez.model.DepositMoneyPayment;
import com.duongdk.edu.Hiruez.model.FoodItem;
import com.duongdk.edu.Hiruez.repository.FoodMenuRepository;
import com.duongdk.edu.Hiruez.repository.InvoiceItemRepository;
import com.duongdk.edu.Hiruez.repository.InvoiceLogRepository;
import com.duongdk.edu.Hiruez.repository.InvoiceRepository;
import com.duongdk.edu.Hiruez.repository.MenuRepository;
import com.duongdk.edu.Hiruez.repository.OrderItemRepository;
import com.duongdk.edu.Hiruez.repository.OrderRepository;
import com.duongdk.edu.Hiruez.repository.PaymentRepository;
import com.duongdk.edu.Hiruez.repository.StoreRateRepository;
import com.duongdk.edu.Hiruez.repository.StoreRepository;
import com.duongdk.edu.Hiruez.repository.TableRepository;
import com.duongdk.edu.Hiruez.repository.UserRepository;
import com.duongdk.edu.Hiruez.repository.DepositMoneyPaymentRepository;
import com.duongdk.edu.Hiruez.repository.FoodItemRepository;
import com.google.zxing.BarcodeFormat;
import com.google.zxing.MultiFormatWriter;
import com.google.zxing.common.BitMatrix;

import jakarta.servlet.http.HttpServletRequest;

import com.google.zxing.client.j2se.MatrixToImageWriter;

import com.duongdk.edu.Hiruez.service.VnPayService;

@Controller
public class CustomerController {
	private Logger logger = LoggerFactory.getLogger(CustomerController.class);

	@Autowired private StoreRepository storeRepository;
	
	@Autowired private TableRepository tableRepository;
	
	@Autowired private QrcodeConfiguration qrcodeConfiguration;
	
	@Autowired private InvoiceRepository invoiceRepository;
	
	@Autowired private InvoiceItemRepository invoiceItemRepository;
	
	@Autowired private MenuRepository menuRepository;
	
	@Autowired private FoodMenuRepository foodMenuRepository;
	
	@Autowired private UserRepository userRepository;

	@Autowired private VnPayService vnPayService;

	@Autowired private DepositMoneyPaymentRepository depositMoneyPaymentRepository;

	@Autowired private StoreRateRepository storeRateRepository;

	@Autowired private FoodItemRepository foodItemRepository;

	@Autowired private InvoiceLogRepository invoiceLogRepository;

	@Autowired private OrderRepository orderRepository;

	@Autowired private OrderItemRepository orderItemRepository;

	@Autowired private PaymentRepository paymentRepository;
	
	@GetMapping("/customer/home")
	public String getHomePage(Model model) {
		List<Store> stores = storeRepository.findAll();
		model.addAttribute("stores", stores);
		Logger logger = LoggerFactory.getLogger(getClass());
		logger.info("List menu: {}", stores.get(1).getDescription());
		return "customer_home";
	}
	
	@GetMapping("/customer/store/{id}/table")
	public String getStorePage(@PathVariable Long id, Model model) {
		Store store = storeRepository.findById(id).get();
		model.addAttribute("store", store);
		
		List<Table> tables = tableRepository.findByBelongsToStore(store);
		model.addAttribute("tables", tables);
		
		List<String> qrcodeBase64s = new ArrayList<>();
		
		for(Table table: tables) {
			String url = qrcodeConfiguration.getQrcodeBaseIpAndPort() 
					+ "/customer/store/" 
					+ store.getId()
					+ "/table/"
					+ table.getId()
					+"/invoice";
			try {
	            // Generate QR code for the URL and add it to the list
	            String qrcode = generateQrCodeBase64(url);
	            qrcodeBase64s.add(qrcode);
	        } catch (Exception e) {
	            // Handle the exception, e.g., log it or show an error message
	            e.printStackTrace();
	        }
		}
		model.addAttribute("qrcodeBase64s", qrcodeBase64s);
		return "customer_store_table";
	}
	
	public static String generateQrCodeBase64(String content) throws Exception {
	    // Use your QR code generation logic here (similar to the previous example)
	    BitMatrix matrix = new MultiFormatWriter().encode(content, BarcodeFormat.QR_CODE, 200, 200);
	    byte[] qrCodeBytes = convertBitMatrixToByteArray(matrix);
	    return Base64.getEncoder().encodeToString(qrCodeBytes);
	}
	
	public static byte[] convertBitMatrixToByteArray(BitMatrix matrix) throws IOException {
	    ByteArrayOutputStream baos = new ByteArrayOutputStream();
	    MatrixToImageWriter.writeToStream(matrix, "PNG", baos);
	    return baos.toByteArray();
	}
	
	
	@GetMapping("/customer/store/{storeId}/table/{tableId}/invoice")
	public String getInvoicePage(@PathVariable Long storeId, @PathVariable Long tableId, Model model) {
		Store store = storeRepository.findById(storeId).get();
		model.addAttribute("store", store);
		
		Table table = tableRepository.findById(tableId).get();
		model.addAttribute("table", table);
		
		List<Invoice> invoices = invoiceRepository.findByCreatedOnTable(table);
		List<InvoiceItem> items = null;
		int hasInvoice = 0;
		
		for(Invoice invoice: invoices) {
			if (invoice.getIsCurrentOnTable() != 0) {
				hasInvoice = 1;
				model.addAttribute("invoice", invoice);
				items = invoiceItemRepository.findByInvoice(invoice);
			}
		}
		model.addAttribute("hasInvoice", hasInvoice);
		
		return "customer_invoice";
	}
	
	@GetMapping("/customer/store/{storeId}/table/{tableId}/invoice/detail")
	public String getDetailInvoice(@PathVariable Long storeId, @PathVariable Long tableId, Model model) {
		Store store = storeRepository.findById(storeId).get();
		model.addAttribute("store", store);
		Table table = tableRepository.findById(tableId).get();
		model.addAttribute("table", table);
		List<Invoice> invoices = invoiceRepository.findByCreatedOnTable(table);
		List<InvoiceItem> items = null;
		
		for(Invoice invoice: invoices) {
			if (invoice.getIsCurrentOnTable() != 0) {
				model.addAttribute("invoice", invoice);
				items = invoiceItemRepository.findByInvoice(invoice);
			}
		}
		model.addAttribute("items", items);
		
		int itemCount;
		if (items == null) itemCount = 0;
		else itemCount = items.size();
		model.addAttribute("itemCount", itemCount);
		
		List<Menu> menus = menuRepository.findByStore(store);
		Menu curMenu = null;
		for (Menu menu: menus) {
			if (menu.getIsCurrent() == true) curMenu = menu;
		}
		model.addAttribute("curMenu", curMenu);
		
		List<FoodMenu> foodsInCurrentMenu = foodMenuRepository.findByMenuId(curMenu.getId());
		model.addAttribute("foodsInCurrentMenu", foodsInCurrentMenu);
		return "customer_store_invoice_detail";
		
	}

	@GetMapping("/customer/store/{storeId}/table/{tableId}/checkout")
	public String getCheckout(@PathVariable Long storeId, @PathVariable Long tableId, Model model) {
		Store store = storeRepository.findById(storeId).get();
		model.addAttribute("store", store);
		Table table = tableRepository.findById(tableId).get();
		model.addAttribute("table", table);
		List<Invoice> invoices = invoiceRepository.findByCreatedOnTable(table);
		List<InvoiceItem> items = null;
		
		for(Invoice invoice: invoices) {
			if (invoice.getIsCurrentOnTable() != 0) {
				model.addAttribute("invoice", invoice);
				items = invoiceItemRepository.findByInvoice(invoice);
			}
		}
		model.addAttribute("items", items);
		
		float totalPrice = 0.0f;
		Map<User, Float> userTotalAmountMap = new HashMap<>();
		List<Float> totalforEachItem = new ArrayList<>();
		for (int i = 0; i < items.size(); i++) {
			InvoiceItem item = items.get(i);
			User user = item.getByUser();
			float amount = item.getQuantity() * item.getFood().getPrice();
			totalforEachItem.add(amount);
			totalPrice += amount;
			// Nếu user đã có trong map, cập nhật tổng số tiền
            if (userTotalAmountMap.containsKey(user)) {
                userTotalAmountMap.put(user, userTotalAmountMap.get(user) + amount);
            } else {
                // Nếu user chưa có trong map, thêm mới
                userTotalAmountMap.put(user, amount);
            }
		}
		model.addAttribute("totalforEachItem", totalforEachItem);
		model.addAttribute("userTotalAmountMap", userTotalAmountMap);
		model.addAttribute("totalPrice", totalPrice);
		return "customer_store_checkout";
	}
	
	@GetMapping("/customer/store/{storeId}/table/{tableId}/createnew/{username}")
	public String getNewInvoice(@PathVariable Long storeId, @PathVariable Long tableId, @PathVariable String username, Model model) {
		Invoice newInvoice = new Invoice();
		newInvoice.setCreatedByUser(userRepository.findByUsername(username));
		newInvoice.setCreatedOnTable(tableRepository.findById(tableId).get());
		newInvoice.setIsCurrentOnTable(1);
		newInvoice.setCreatedTime(LocalDateTime.now());
		invoiceRepository.save(newInvoice);
		return "redirect:/customer/store/" + storeId + "/table/" + tableId + "/invoice/detail" ;
	}
	
	
	// -----------------------------------
	// add new template
	// -----------------------------------
	
	@GetMapping("/")
	public String getHomePage2(Model model) {
		User curUser = userRepository.findByUsername(CurrentUserUtil.getCurrentUsername());
		UserDetails curUserDetails = CurrentUserUtil.getCurrentUserDetails();
		logger.info("Current user: {}", curUser);
		logger.info("Current user details: {}", curUserDetails.getUsername());

		model.addAttribute("currentUser", curUser);

		// get list of only 5 stores with highest by rating decreasing
		List<Store> stores = storeRepository.findAllByOrderByRatingDesc();
		model.addAttribute("stores", stores);
		return "index";
	}
	
	@GetMapping("/depositMoney")
	public String getDepositMoneyForm(Model model) {
		User curUser = userRepository.findByUsername(CurrentUserUtil.getCurrentUsername());
		model.addAttribute("currentUser", curUser);
		return "deposit_money_page";
	}

	@PostMapping("/depositMoney")
	public String submitDepositMoneyForm(@RequestParam("amount") int orderTotal,
                            @RequestParam("orderInfo") String orderInfo,
                            HttpServletRequest request) {
		String baseUrl = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort();
		String vnpayUrl = vnPayService.createOrder(request, orderTotal, orderInfo, baseUrl);
		
		return "redirect:" + vnpayUrl;
	}

	@GetMapping("/profile")
	public String getProfilePage(Model model) {
		User curUser = userRepository.findByUsername(CurrentUserUtil.getCurrentUsername());
		model.addAttribute("curUser", curUser);
		
		return "profile";
	}

	@GetMapping("/my-payment")
	public String getMyPaymentPage(Model model) {
		User curUser = userRepository.findByUsername(CurrentUserUtil.getCurrentUsername());
		model.addAttribute("curUser", curUser);
		List<DepositMoneyPayment> payments = depositMoneyPaymentRepository.findByUserIdOrderByUserIdDesc(curUser.getId());
		model.addAttribute("payments", payments);
		return "my_payment";
	}

	@GetMapping("/setting")
	public String getSettingPage(Model model) {
		User curUser = userRepository.findByUsername(CurrentUserUtil.getCurrentUsername());
		model.addAttribute("curUser", curUser);
		return "user_setting";
	}

	// new table controller
	@GetMapping("/store/table")
	public String getRestaurantTablePage (@RequestParam("id") Long id, Model model) {
		User curUser = userRepository.findByUsername(CurrentUserUtil.getCurrentUsername());
		model.addAttribute("curUser", curUser);
		Store store = storeRepository.findById(id).get();
		model.addAttribute("store", store);
		List<Table> tables = tableRepository.findByBelongsToStore(store);
		model.addAttribute("tables", tables);
		return "cus_store_table";
	}

	@GetMapping("/store/table/invoice")
	public String getInvoicePage2(@RequestParam("storeid") Long storeId, @RequestParam("tableid") Long tableId, Model model) {
		User curUser = userRepository.findByUsername(CurrentUserUtil.getCurrentUsername());
		model.addAttribute("curUser", curUser);
		Store store = storeRepository.findById(storeId).get();
		model.addAttribute("store", store);
		Table table = tableRepository.findById(tableId).get();
		model.addAttribute("table", table);
		List<Invoice> invoices = invoiceRepository.findByCreatedOnTable(table);
		List<InvoiceItem> items = null;
		int hasInvoice = 0;
		
		for(Invoice invoice: invoices) {
			if (invoice.getIsCurrentOnTable() != 0) {
				hasInvoice = 1;
				model.addAttribute("invoice", invoice);
				items = invoiceItemRepository.findByInvoice(invoice);
			}
		}

		int is_curUser_in_order = 0;
		if (items != null) {
			Map<User, List<InvoiceItem>> itemsByUser = items.stream()
					.collect(Collectors.groupingBy(InvoiceItem::getByUser));
			model.addAttribute("itemsByUser", itemsByUser);
			for (Map.Entry<User, List<InvoiceItem>> i : itemsByUser.entrySet()) {
				if (i.getKey().getUsername().equals(curUser.getUsername())) {
					is_curUser_in_order = 1;
					break;
				}
			}
		}
		model.addAttribute("is_curUser_in_order", is_curUser_in_order);

		
		
		model.addAttribute("hasInvoice", hasInvoice);
		return "cus_invoice";
	}

	@GetMapping("/store/table/invoice/detail")
	public String getInvoiceDetailPage2(@RequestParam("tableid") Long tableId, Model model) {
		User curUser = userRepository.findByUsername(CurrentUserUtil.getCurrentUsername());
		model.addAttribute("curUser", curUser);
		Table table = tableRepository.findById(tableId).get();
		model.addAttribute("table", table);
		model.addAttribute("store", table.getBelongsToStore());

		List<Invoice> invoices = invoiceRepository.findByCreatedOnTable(table);
		List<InvoiceItem> items = null;
		int hasInvoice = 0;

		for (Invoice invoice : invoices) {
			if (invoice.getIsCurrentOnTable() != 0) {
				hasInvoice = 1;
				model.addAttribute("invoice", invoice);
				items = invoiceItemRepository.findByInvoice(invoice);
			}
		}

		if (items != null) {
			model.addAttribute("numberOfItems", items.size());
			Map<User, List<InvoiceItem>> itemsByUser = items.stream()
					.collect(Collectors.groupingBy(InvoiceItem::getByUser));
			model.addAttribute("itemsByUser", itemsByUser);

			Map<User, Double> totalMoneyByUser = items.stream()
					.collect(Collectors.groupingBy(InvoiceItem::getByUser,
							Collectors.summingDouble(item -> item.getQuantity() * item.getFood().getPrice())));
			model.addAttribute("totalMoneyByUser", totalMoneyByUser);
			double totalMoney = items.stream()
					.mapToDouble(item -> item.getQuantity() * item.getFood().getPrice())
					.sum();
			model.addAttribute("totalMoney", totalMoney);
		}
		model.addAttribute("hasInvoice", hasInvoice);

		List<Menu> menus = menuRepository.findByStore(table.getBelongsToStore());
		Menu curMenu = null;
		for (Menu menu : menus) {
			if (menu.getIsCurrent() == true)
				curMenu = menu;
		}
		model.addAttribute("curMenu", curMenu);
		List<FoodMenu> foodsInCurrentMenu = foodMenuRepository.findByMenuId(curMenu.getId());
		model.addAttribute("foodsInCurrentMenu", foodsInCurrentMenu);

		List<StoreRate> rates = storeRateRepository.findAllByRestaurantId(table.getBelongsToStore().getId());
		model.addAttribute("rates", rates);
		return "cus_invoice_detail";
	}

	@GetMapping("/store/table/invoice/create")
	public String createNewInvoice(@RequestParam("tableid") Long tableId, Model model) {
		Table table = tableRepository.findById(tableId).get();
		Invoice newInvoice = new Invoice();
		User curUser = userRepository.findByUsername(CurrentUserUtil.getCurrentUsername());
		model.addAttribute("curUser", curUser);
		newInvoice.setCreatedByUser(curUser);
		newInvoice.setCreatedOnTable(table);
		newInvoice.setCreatedTime(LocalDateTime.now());
		newInvoice.setIsCurrentOnTable(1);
		newInvoice.setStatus("ORDERING");
		invoiceRepository.save(newInvoice);

		invoiceLogRepository.save (
			new InvoiceLog(
				LocalDateTime.now(),
				newInvoice,
				curUser.getUsername() + " created the order"
			)
		);
		return "redirect:/store/table/invoice/detail?tableid=" + tableId;
	}

	@GetMapping("/store/table/invoice/additem")
	public String addItem(@RequestParam("itemid") Long itemId, @RequestParam("invoiceid") Long invoiceId, @RequestParam("byuserid") Long byUserId) {
		Invoice invoice = invoiceRepository.findById(invoiceId).get();
		List<InvoiceItem> items = invoiceItemRepository.findByInvoice(invoice);
		User user = userRepository.findById(byUserId).get();
		int isAddNew = 1; // add new
		for (InvoiceItem i : items) {
			if (i.getByUser().getId().equals(byUserId) && i.getFood().getId().equals(itemId)) {
				i.setQuantity(i.getQuantity() + 1);
				invoiceItemRepository.save(i);
				isAddNew = 0;
				break;
			}
		}

		if (isAddNew ==  1) {
			invoiceItemRepository.save(
				new InvoiceItem(
					invoice, 
					foodItemRepository.findById(itemId).get(),
					1L,
					user
				)
			);
		}
		
		return "redirect:/store/table/invoice/detail?tableid=" + invoice.getCreatedOnTable().getId();
	}

	@GetMapping("/increaseItem")
	public String incrementItem(@RequestParam("invoiceItemId") Long invoiceItemId) {
		InvoiceItem invoiceItem = invoiceItemRepository.findById(invoiceItemId).get();
		invoiceItem.setQuantity(invoiceItem.getQuantity() + 1);
		invoiceItemRepository.save(invoiceItem);
		return "redirect:/store/table/invoice/detail?tableid=" + invoiceItem.getInvoice().getCreatedOnTable().getId();
	}

	@GetMapping("/decreaseItem")
	public String decreaseItem(@RequestParam("invoiceItemId") Long invoiceItemId) {
		InvoiceItem invoiceItem = invoiceItemRepository.findById(invoiceItemId).get();
		invoiceItem.setQuantity(invoiceItem.getQuantity() - 1);
		invoiceItemRepository.save(invoiceItem);
		return "redirect:/store/table/invoice/detail?tableid=" + invoiceItem.getInvoice().getCreatedOnTable().getId();
	}

	@GetMapping("/store/table/invoice/checkout")
	public String getCheckout(@RequestParam("tableid") Long tableId, Model model) {
		User curUser = userRepository.findByUsername(CurrentUserUtil.getCurrentUsername());
		model.addAttribute("curUser", curUser);

		Table table = tableRepository.findById(tableId).get();
		model.addAttribute("table", table);
		model.addAttribute("store", table.getBelongsToStore());

		List<Invoice> invoices = invoiceRepository.findByCreatedOnTable(table);
		List<InvoiceItem> items = null;
		int hasInvoice = 0;
		int is_invoiceCreated_user = 0;
		Invoice curInvoice = null;

		for (Invoice invoice : invoices) {
			if (invoice.getIsCurrentOnTable() != 0) {
				curInvoice = invoice;
				hasInvoice = 1;
				model.addAttribute("invoice", invoice);
				if (invoice.getCreatedByUser().getId() == curUser.getId()) {
					is_invoiceCreated_user = 1;
				}
				items = invoiceItemRepository.findByInvoice(invoice);
				List<InvoiceLog> logs = invoiceLogRepository.findByOnInvoice(invoice);
				model.addAttribute("logs", logs);
			}
		}

		if (items != null) {
			model.addAttribute("numberOfItems", items.size());
			Map<User, List<InvoiceItem>> itemsByUser = items.stream()
					.collect(Collectors.groupingBy(InvoiceItem::getByUser));
			model.addAttribute("itemsByUser", itemsByUser);

			Map<User, Double> totalMoneyByUser = items.stream()
					.collect(Collectors.groupingBy(InvoiceItem::getByUser,
							Collectors.summingDouble(item -> item.getQuantity() * item.getFood().getPrice())));
			model.addAttribute("totalMoneyByUser", totalMoneyByUser);
			double totalMoney = items.stream()
					.mapToDouble(item -> item.getQuantity() * item.getFood().getPrice())
					.sum();
			model.addAttribute("totalMoney", totalMoney);
		}
		model.addAttribute("hasInvoice", hasInvoice);
		int is_confirmed_user = 1;
		int is_everyone_confirmed = 1;

		for (InvoiceItem item : items) {
			if (item.getIsConfirmed() == 0) {
				is_everyone_confirmed = 0;
			}
			if (item.getByUser().getId() == curUser.getId() && item.getIsConfirmed() == 0) {
				is_confirmed_user = 0;
			}
		}
		model.addAttribute("is_confirmed_user", is_confirmed_user);
		model.addAttribute("is_everyone_confirmed", is_everyone_confirmed);
		model.addAttribute("is_invoiceCreated_user", is_invoiceCreated_user);

		if(is_everyone_confirmed == 1) {
			curInvoice.setStatus("QUANTITY_CONFRIMED");
			curInvoice = invoiceRepository.save(curInvoice);
		}

		logger.info("is_confirmed_user: {}", is_confirmed_user);
		logger.info("is_everyone_confirmed: {}", is_everyone_confirmed);
		logger.info("is_invoiceCreated_user: {}", is_invoiceCreated_user);
		return "checkout";
	}

	@GetMapping("/store/table/invoice/confirm")
	public String confirm(@RequestParam("invoiceid") Long invoiceId, Model model) {
		Invoice invoice = invoiceRepository.findById(invoiceId).get();
		User curUser = userRepository.findByUsername(CurrentUserUtil.getCurrentUsername());
		List<InvoiceItem> items = invoiceItemRepository.findByInvoice(invoice);
		for (InvoiceItem item : items) {
			if(item.getByUser().getId().equals(curUser.getId())) {
				item.setIsConfirmed(1);
				invoiceItemRepository.save(item);
			}
		}
		invoiceLogRepository.save(
			new InvoiceLog(
				LocalDateTime.now(),
				invoice,
				curUser.getUsername() + " has confirmed quantity"
			)
		);
		return "redirect:/store/table/invoice/checkout?tableid=" + invoice.getCreatedOnTable().getId();
	}

	@GetMapping("/store/table/invoice/checkout/billtype")
	public String getBillTypePage(@RequestParam("tableid") Long tableId, Model model) {
		User curUser = userRepository.findByUsername(CurrentUserUtil.getCurrentUsername());
		model.addAttribute("curUser", curUser);
		Table table = tableRepository.findById(tableId).get();
		model.addAttribute("table", table);
		model.addAttribute("store", table.getBelongsToStore());

		List<Invoice> invoices = invoiceRepository.findByCreatedOnTable(table);
		List<InvoiceItem> items = null;
		int hasInvoice = 0;

		for (Invoice invoice : invoices) {
			if (invoice.getIsCurrentOnTable() != 0) {
				hasInvoice = 1;
				model.addAttribute("invoice", invoice);
				
				items = invoiceItemRepository.findByInvoice(invoice);
				List<InvoiceLog> logs = invoiceLogRepository.findByOnInvoice(invoice);
				model.addAttribute("logs", logs);
			}
		}

		if (items != null) {
			model.addAttribute("numberOfItems", items.size());
			Map<User, List<InvoiceItem>> itemsByUser = items.stream()
					.collect(Collectors.groupingBy(InvoiceItem::getByUser));
			model.addAttribute("itemsByUser", itemsByUser);

			Map<User, Double> totalMoneyByUser = items.stream()
					.collect(Collectors.groupingBy(InvoiceItem::getByUser,
							Collectors.summingDouble(item -> item.getQuantity() * item.getFood().getPrice())));
			model.addAttribute("totalMoneyByUser", totalMoneyByUser);
			double totalMoney = items.stream()
					.mapToDouble(item -> item.getQuantity() * item.getFood().getPrice())
					.sum();
			model.addAttribute("totalMoney", totalMoney);
		}
		model.addAttribute("hasInvoice", hasInvoice);
		return "cus_choosing_billtype";
	}

	@GetMapping("/store/table/invoice/payment")
	public String getMethodName(
		@RequestParam("invoiceid") Long invoiceId, 
		@RequestParam("sharebill") int sharebill,
		@RequestParam("payall") int payall, Model model) 
	{
			User curUser = userRepository.findByUsername(CurrentUserUtil.getCurrentUsername());
			model.addAttribute("curUser", curUser);
			Invoice invoice = invoiceRepository.findById(invoiceId).get();
			model.addAttribute("invoice", invoice);
			model.addAttribute("store", invoice.getCreatedOnTable().getBelongsToStore());
			List<InvoiceItem> items = invoiceItemRepository.findByInvoice(invoice);
			Map<User, Double> totalMoneyByUser = items.stream()
					.collect(Collectors.groupingBy(InvoiceItem::getByUser,
							Collectors.summingDouble(item -> item.getQuantity() * item.getFood().getPrice())));
			model.addAttribute("totalMoneyByUser", totalMoneyByUser);
			double totalMoney = items.stream()
					.mapToDouble(item -> item.getQuantity() * item.getFood().getPrice())
					.sum();
			model.addAttribute("totalMoney", totalMoney);
			boolean isAllUserEnoughMoney = totalMoneyByUser.entrySet().stream()
					.allMatch(entry -> entry.getKey().getBalance() >= entry.getValue());
			model.addAttribute("isAllUserEnoughMoney", isAllUserEnoughMoney);
			if (sharebill == 1 && payall == 0) {
				logger.info("Invoice payment type: sharebill = 1, payall = 0");
				return "payment_sharebill";
			} else if (sharebill == 0 && payall == 1) {
				logger.info("Invoice payment type: sharebill = 0, payall = 1");
				return "payment_payall";
			}
			return "redirect:/store/table/invoice/checkout/billtype?tableid=" + invoice.getId();
	}

	@GetMapping("/store/table/invoice/paymentsharebill")
	public String getPaymentShareBill(@RequestParam("invoiceid") Long invoiceId, Model model) {
		User curUser = userRepository.findByUsername(CurrentUserUtil.getCurrentUsername());
		model.addAttribute("curUser", curUser);
		
		Invoice invoice = invoiceRepository.findById(invoiceId).get();
		model.addAttribute("invoice", invoice);
		model.addAttribute("store", invoice.getCreatedOnTable().getBelongsToStore());
		
		List<InvoiceItem> items = invoiceItemRepository.findByInvoice(invoice);
		double totalMoney = items.stream()
				.mapToDouble(item -> item.getQuantity() * item.getFood().getPrice())
				.sum();
		model.addAttribute("totalMoney", totalMoney);

		Order order = new Order(curUser, invoice.getCreatedOnTable(), LocalDateTime.now(), totalMoney, "PAID");
		order = orderRepository.save(order);
		model.addAttribute("order", order);
		logger.info("Save order: " + order.toString());

		Map<User, Double> totalMoneyByUser = items.stream()
				.collect(Collectors.groupingBy(InvoiceItem::getByUser,
						Collectors.summingDouble(item -> item.getQuantity() * item.getFood().getPrice())));
		Map<FoodItem, Long> quantityGroupByFood = items.stream()
    		.collect(Collectors.groupingBy(InvoiceItem::getFood, Collectors.summingLong(item -> item.getQuantity())));
		List<OrderItem> orderItems = new ArrayList<OrderItem>();
		for (Map.Entry<FoodItem, Long> item: quantityGroupByFood.entrySet()) {
			OrderItem orderItem = new OrderItem(order, item.getKey(), item.getValue());
			orderItem = orderItemRepository.save(orderItem);
			orderItems.add(orderItem);
			logger.info("Save order item: " + orderItem.toString() + " on Order with Id = " + order.getId());
		}
		model.addAttribute("orderItems", orderItems);
		
		List<Payment> payments = new ArrayList<Payment>();
		for (Map.Entry<User, Double> entry: totalMoneyByUser.entrySet()) {
			double amout = entry.getValue();
			User user = entry.getKey();
			user.setBalance(user.getBalance() - amout);
			userRepository.save(user);
			logger.info("Update user balance: " + user.toString());
			Payment payment = new Payment(order, amout, LocalDateTime.now(), "SUCCESSFULL", user);
			payment = paymentRepository.save(payment);
			payments.add(payment);
			logger.info("Save payment: " + payment.toString());
		}
		model.addAttribute("payments", payments);
		
		Store store = invoice.getCreatedOnTable().getBelongsToStore();
		User owner = store.getOwner();
		owner.setBalance(owner.getBalance() + totalMoney);
		userRepository.save(owner);
		logger.info("Update owner balance: " + owner.toString());

		invoiceLogRepository.save(
			new InvoiceLog(LocalDateTime.now(), invoice, curUser.getUsername() + " has ordered successfull.")
		);
		return "order_sucessfull";
	}
	
	@GetMapping("/my-order")
	public String getMyOrderPage(Model model) {
		User curUser = userRepository.findByUsername(CurrentUserUtil.getCurrentUsername());
		model.addAttribute("curUser", curUser);
		List<Order> myOrders = orderRepository.findAllByByUser(curUser);
		
		List<MyOrderDto> orderDtos = new ArrayList<>();
		for (Order o : myOrders) {
			orderDtos.add(
				new MyOrderDto(o, orderItemRepository.findByOrder(o), paymentRepository.findByOrder(o))
			);
		}
		model.addAttribute("orderDtos", orderDtos);
		return "my_order";
	}
}
