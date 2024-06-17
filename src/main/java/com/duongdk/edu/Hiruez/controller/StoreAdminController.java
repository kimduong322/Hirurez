package com.duongdk.edu.Hiruez.controller;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.duongdk.edu.Hiruez.Utils.CurrentUserUtil;
import com.duongdk.edu.Hiruez.Utils.QrcodeConfiguration;
import com.duongdk.edu.Hiruez.model.FoodItem;
import com.duongdk.edu.Hiruez.model.FoodMenu;
import com.duongdk.edu.Hiruez.model.Invoice;
import com.duongdk.edu.Hiruez.model.InvoiceLog;
import com.duongdk.edu.Hiruez.model.Menu;
import com.duongdk.edu.Hiruez.model.Order;
import com.duongdk.edu.Hiruez.model.OrderItem;
import com.duongdk.edu.Hiruez.model.Payment;
import com.duongdk.edu.Hiruez.model.Store;
import com.duongdk.edu.Hiruez.model.Table;
import com.duongdk.edu.Hiruez.model.User;
import com.duongdk.edu.Hiruez.repository.FoodMenuRepository;
import com.duongdk.edu.Hiruez.repository.InvoiceLogRepository;
import com.duongdk.edu.Hiruez.repository.InvoiceRepository;
import com.duongdk.edu.Hiruez.repository.MenuRepository;
import com.duongdk.edu.Hiruez.repository.OrderItemRepository;
import com.duongdk.edu.Hiruez.repository.OrderRepository;
import com.duongdk.edu.Hiruez.repository.PaymentRepository;
import com.duongdk.edu.Hiruez.repository.TableRepository;
import com.duongdk.edu.Hiruez.service.FoodItemService;
import com.duongdk.edu.Hiruez.service.FoodMenuService;
import com.duongdk.edu.Hiruez.service.MenuService;
import com.duongdk.edu.Hiruez.service.OrderService;
import com.duongdk.edu.Hiruez.service.TableService;
import com.duongdk.edu.Hiruez.service.impl.StoreServiceImpl;
import com.duongdk.edu.Hiruez.support.MenuFoodWrapper;

import org.springframework.ui.Model;

@Controller
public class StoreAdminController {
	@Autowired public StoreServiceImpl storeServiceImpl;
	
	@Autowired private PaymentRepository paymentRepository;
	
	@Autowired private TableRepository tableRepository;
	
	@Autowired private TableService tableSerVice;
	
	@Autowired private OrderService orderService;
	
	@Autowired private MenuService menuService;
	
	@Autowired private FoodItemService foodItemService;
	
	@Autowired private FoodMenuService foodMenuService;
	
	@Autowired private FoodMenuRepository foodMenuRepository;
	
	@Autowired private MenuRepository menuRepository;
	
	@Autowired private OrderItemRepository orderItemRepository;
	
	@Autowired private QrcodeConfiguration qrcodeConfiguration;

	@Autowired private OrderRepository orderRepository;

	@Autowired private InvoiceRepository invoiceRepository;

	@Autowired private InvoiceLogRepository invoiceLogRepository;
	
	@GetMapping("/storemanagement/dashboard/{username}")
	public String getStoreDashboard(@PathVariable String username, Model model) {

	    Store store = storeServiceImpl.findStoreByUsername(username);
	    model.addAttribute("store", store);
	    
	    LocalDateTime endDate = LocalDateTime.now();
        LocalDateTime startDate = endDate.minusDays(30);

        List<Payment> actualPayments = paymentRepository.findByPaymentTimeBetweenAndOrderOnTableBelongsToStoreId(startDate, endDate, store.getId());

		List<Payment> paymentsByDate = new ArrayList<Payment>();
		
		for (Payment payment : actualPayments) {
			int check = 0;
			for (Payment p2 : paymentsByDate) {
				if (p2.getPaymentTime().toLocalDate().equals(payment.getPaymentTime().toLocalDate())) {
					p2.setAmount(p2.getAmount() + payment.getAmount());
					check = 1;
					break;
				}
			}
			if (check == 0) {
				paymentsByDate.add(payment);
			}
		}

     // Generate default payment values for the last 30 days
        List<Payment> defaultPayments = generateDefaultPayments(startDate, endDate, store.getId(), actualPayments);

        // Combine actual and default payments
        List<Payment> combinedPayments = combinePayments(paymentsByDate, defaultPayments);
        
        model.addAttribute("payments", combinedPayments);
        model.addAttribute("storeId", 1);
	    return "store_dashboard";
	}
	private List<Payment> generateDefaultPayments(LocalDateTime startDate, LocalDateTime endDate, Long storeId, List<Payment> actualPayments) {
	    List<Payment> defaultPayments = new ArrayList<>();

	    for (LocalDateTime currentDate = startDate; currentDate.isBefore(endDate) || currentDate.isEqual(endDate); currentDate = currentDate.plusDays(1)) {
	        final LocalDateTime currentDateTime = currentDate;  // Declare a final variable

	        // Check if there is an actual payment for the current date
	        boolean hasActualPayment = actualPayments.stream().anyMatch(payment -> payment.getPaymentTime().toLocalDate().isEqual(currentDateTime.toLocalDate()));

	        // If no actual payment, generate a default payment
	        if (!hasActualPayment) {
	            Payment defaultPayment = new Payment();
	            defaultPayment.setAmount(0L);
	            defaultPayment.setPaymentTime(currentDateTime);
	            defaultPayment.setStatus("DEFAULT");
	            // Set other necessary relationships (order, table, etc.) based on your data model

	            defaultPayments.add(defaultPayment);
	        }
	    }

	    return defaultPayments;
	}

    private List<Payment> combinePayments(List<Payment> actualPayments, List<Payment> defaultPayments) {
        List<Payment> combinedPayments = new ArrayList<>(actualPayments);
        combinedPayments.addAll(defaultPayments);

        // Sort the combined list by payment time
        combinedPayments.sort(Comparator.comparing(Payment::getPaymentTime));

        return combinedPayments;
    }
    
    @GetMapping("/storemanagement/dashboard/{username}/table")
    public String tableManagements(@PathVariable String username, Model model) {
    	Store store = storeServiceImpl.findStoreByUsername(username);
	    model.addAttribute("store", store);
	    
	    List<Table> tableBelongsTo = tableRepository.findByBelongsToStore(store);
	    model.addAttribute("tables", tableBelongsTo);
    	return "store_table";
    }
    
    @GetMapping("/storemanagement/dashboard/{username}/table/{id}/details")
    public String tableDetails(@PathVariable String username, Model model, @PathVariable Long id) {
    	Store store = storeServiceImpl.findStoreByUsername(username);
	    model.addAttribute("store", store);
	    
	    Table table = tableSerVice.getTableById(id);

	    if (table != null) {
	        // Get orders for the specific table
	        List<Order> orders = orderService.getOrdersByTable(table);

	        model.addAttribute("table", table);
	        model.addAttribute("orders", orders);

	        return "table_details";
	    } else {
	        
	        return "error";
	    }
    }
    
    @GetMapping("/storemanagement/dashboard/{username}/table/{id}/update")
    public String showTableUpdateform(@PathVariable String username, Model model, @PathVariable Long id) {
    	Store store = storeServiceImpl.findStoreByUsername(username);
	    model.addAttribute("store", store);
	    
	    Table table = tableSerVice.getTableById(id);
	    model.addAttribute("table", table);
    	return "table_update";
    }
    
    @PostMapping("/storemanagement/dashboard/{username}/table/{id}/update")
    public String updateTable(@PathVariable String username, 
    		@PathVariable Long id, 
    		@ModelAttribute("table") Table updatedTable) {
    	Table existingTable = tableRepository.findById(id)
                .orElseThrow(() -> new IllegalArgumentException("Invalid table ID: " + id));
    	
    	// Update the fields with the new values
        existingTable.setStatus(updatedTable.getStatus());
        existingTable.setBelongsToStore(updatedTable.getBelongsToStore());
        existingTable.setMaxCapacity(updatedTable.getMaxCapacity());
        existingTable.setMinCapacity(updatedTable.getMinCapacity());
        existingTable.setName(updatedTable.getName());

        // Save the updated table to the database
        tableRepository.save(existingTable);
    	return "redirect:/storemanagement/dashboard/{username}/table";
    }
    
    @PostMapping("/storemanagement/dashboard/{username}/table/{id}/delete")
    public String deleteTable(@PathVariable String username, 
    		@PathVariable Long id) {
    	
    	tableRepository.deleteById(id);
    	return "redirect:/storemanagement/dashboard/{username}/table";
    }
    
    @GetMapping("/storemanagement/dashboard/{username}/table/create")
    public String showCreateform(@PathVariable String username, Model model) {
    	Store store = storeServiceImpl.findStoreByUsername(username);
	    model.addAttribute("store", store);
	    Table newTbl = new Table();
	    newTbl.setBelongsToStore(store);
	    model.addAttribute("table", newTbl);
    	return "table_create";
    }
    
    @PostMapping("/storemanagement/dashboard/{username}/table/create")
    public String createTable (@PathVariable String username, @ModelAttribute Table newTable) {
    	tableRepository.save(newTable);
    	return "redirect:/storemanagement/dashboard/{username}/table";
    }
    
    
    @GetMapping("/storemanagement/dashboard/{username}/menu")
    public String getMenuPage(@PathVariable String username, Model model) {
    	Store store = storeServiceImpl.findStoreByUsername(username);
	    model.addAttribute("store", store);
	    
	    List<Menu> menus = menuService.getAllMenusForStore(store);
	    model.addAttribute("menus", menus);
    	return "store_menu";
    }
    
    @GetMapping("/storemanagement/dashboard/{username}/menu/create")
    public String getCreateNewMenuForm(@PathVariable String username, Model model) {
    	Store store = storeServiceImpl.findStoreByUsername(username);
	    model.addAttribute("store", store);
	    
	    Menu newMenu = new Menu(store, LocalDateTime.now(), false);
	    Logger logger = LoggerFactory.getLogger(getClass());
	    logger.info("New menu: {}", newMenu.toString());
	    List<FoodItem> foodItems = foodItemService.getAllFoodItemsForStore(store);
	    MenuFoodWrapper wrapperForForm =  new MenuFoodWrapper();
	    for (int i = 0; i < foodItems.size(); i++) {
	    	FoodMenu foodMenu = new FoodMenu();
			foodMenu.setMenu(newMenu);
			foodMenu.setFood(foodItems.get(i));
			logger.info("Food at index i: {}", foodItems.get(i).getName());
			wrapperForForm.add(foodMenu);
		}
	    menuRepository.save(newMenu);
	    model.addAttribute("form", wrapperForForm);
	    model.addAttribute("newMenu", newMenu);
	    model.addAttribute("foodItems", foodItems);
	    logger.info("New Menu Info: {}", newMenu);
    	return "menu_create";
    }
    
    @PostMapping("/storemanagement/dashboard/{username}/menu/create")
    public String createNewMenu(@PathVariable String username, @ModelAttribute("form") MenuFoodWrapper form) {
    	foodMenuRepository.saveAll(form.getFoodsInMenu());
    	return "redirect:/storemanagement/dashboard/{username}/menu";
    }
    
    @GetMapping("/storemanagement/dashboard/{username}/menu/{id}/details")
    public String getDetailMenu(@PathVariable String username, @PathVariable Long id, Model model) {
    	Store store = storeServiceImpl.findStoreByUsername(username);
	    model.addAttribute("store", store);
	    Menu menu = menuService.findMenuById(id);
	    model.addAttribute("menu", menu);
	    model.addAttribute("foodsInMenu", foodMenuService.getAllFoodMenuByMenuId(id));
    	return "menu_detail";
    }
    
    
    // Food
    @GetMapping("/storemanagement/dashboard/{username}/food")
    public String getFoodPage(@PathVariable String username, Model model) {
    	Store store = storeServiceImpl.findStoreByUsername(username);
	    model.addAttribute("store", store);
    	List<FoodItem> foodItems = foodItemService.getAllFoodItemsForStore(store);
    	model.addAttribute("foodItems", foodItems);
    	return "store_food";
    }
    
    // Order
    @GetMapping("/storemanagement/dashboard/{username}/order")
    public String getOrderPage(@PathVariable String username, Model model) {
    	Store store = storeServiceImpl.findStoreByUsername(username);
	    model.addAttribute("store", store);
	    List<Table> tables = tableRepository.findByBelongsToStore(store);
	    List<Order> orders = new ArrayList<>();
		List<Order> ordersConfirmed = new ArrayList<>();
		List<Order> ordersDelivered = new ArrayList<>();
	    for(Table table: tables) {
	    	List<Order> tableOrders = orderService.getOrdersByTable(table);
			for (Order order : tableOrders) {
				if (order.getStatus().equals("PAID")) {
					orders.add(order);
				} else if (order.getStatus().equals("CONFIRMED")) {
					ordersConfirmed.add(order);
				} else if (order.getStatus().equals("DELIVERED")) {
					ordersDelivered.add(order);
				}
			}
	    }
	    Collections.sort(orders, Comparator.comparing(Order::getOrderTime));
	    model.addAttribute("orders", orders);
		Collections.sort(ordersConfirmed, Comparator.comparing(Order::getOrderTime));
		model.addAttribute("ordersConfirmed", ordersConfirmed);
		Collections.sort(ordersDelivered, Comparator.comparing(Order::getOrderTime));
		model.addAttribute("ordersDelivered", ordersDelivered);

    	return "store_order";
    }
    
    
    @GetMapping("/storemanagement/dashboard/{username}/order/{id}/details")
    public String getOrderDetails(@PathVariable String username, @PathVariable Long id, Model model) {
    	Store store = storeServiceImpl.findStoreByUsername(username);
	    model.addAttribute("store", store);
	    Order order = orderService.findById(id);
	    model.addAttribute("order", order);
	    List<OrderItem> items = orderItemRepository.findByOrder(order);
	    model.addAttribute("items", items);
    	return "order_detail";
    }
    
    @GetMapping("/storemanagement/dashboard/{username}/payment")
    public String getPaymentPage(@PathVariable String username, Model model) {
    	Store store = storeServiceImpl.findStoreByUsername(username);
	    model.addAttribute("store", store);
	    List<Table> tables = tableRepository.findByBelongsToStore(store);
	    List<Order> orders = new ArrayList<>();
	    for(Table table: tables) {
	    	List<Order> tableOrders = orderService.getOrdersByTable(table);
	    	orders.addAll(tableOrders);
	    }
	    model.addAttribute("orders", orders);
	    List<Payment> payments = new ArrayList<>();
	    for (Order order: orders) {
	    	List<Payment> orderPayments = paymentRepository.findByOrder(order);
	    	payments.addAll(orderPayments);
	    }
	    model.addAttribute("payments", payments);
    	return "store_payment";
    }
    
    // Payment detail
    @GetMapping("/storemanagement/dashboard/{username}/payment/{id}/details")
    public String getPaymentDetails(@PathVariable String username, @PathVariable Long id, Model model) {
    	Store store = storeServiceImpl.findStoreByUsername(username);
	    model.addAttribute("store", store);
	    Payment payment = paymentRepository.findById(id).get();
	    model.addAttribute("payment", payment);
	    List<OrderItem> items = orderItemRepository.findByOrder(payment.getOrder());
	    model.addAttribute("items", items);
    	return "payment_detail";
    }
    
    
    // Export Qr code for admin
    @GetMapping("/storemanagement/dashboard/{username}/table/exportqrcode")
    public String exportQrcode(@PathVariable String username, Model model) {
    	Store store = storeServiceImpl.findStoreByUsername(username);
	    model.addAttribute("store", store);
	    List<Table> tables = tableRepository.findByBelongsToStore(store);
		model.addAttribute("tables", tables);
		
		List<String> qrcodeBase64s = new ArrayList<>();
		
		for(Table table: tables) {
			String url = qrcodeConfiguration.getQrcodeBaseIpAndPort() 
					+ "/store/table/invoice?storeid=" 
					+ store.getId()
					+ "&tableid="
					+ table.getId();
					
			try {
	            // Generate QR code for the URL and add it to the list
	            String qrcode = CustomerController.generateQrCodeBase64(url);
	            qrcodeBase64s.add(qrcode);
	        } catch (Exception e) {
	            // Handle the exception, e.g., log it or show an error message
	            e.printStackTrace();
	        }
		}
		model.addAttribute("qrcodeBase64s", qrcodeBase64s);
    	return "store_qrcode";
    }
    
	@GetMapping("/storemanagement/confirmOrder")
	public String confirmOrder(@RequestParam("orderid") Long orderid) {
		UserDetails curUser = CurrentUserUtil.getCurrentUserDetails();
		Order order = orderRepository.findById(orderid).get();
		order.setStatus("CONFIRMED");
		order = orderRepository.save(order);
		Invoice invoice = invoiceRepository.findByCreatedOnTable(order.getOnTable())
							.stream().filter(i -> i.getIsCurrentOnTable() == 1).findFirst().get();
		InvoiceLog confirmLog = new InvoiceLog(LocalDateTime.now(), invoice, curUser.getUsername() + " has confirmed order");
		invoiceLogRepository.save(confirmLog);

		return "redirect:/storemanagement/dashboard/" + curUser.getUsername() + "/order";
	}
}
