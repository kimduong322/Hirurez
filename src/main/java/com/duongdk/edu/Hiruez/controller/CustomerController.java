package com.duongdk.edu.Hiruez.controller;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.Base64;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.duongdk.edu.Hiruez.model.FoodMenu;
import com.duongdk.edu.Hiruez.model.Invoice;
import com.duongdk.edu.Hiruez.model.InvoiceItem;
import com.duongdk.edu.Hiruez.model.Menu;
import com.duongdk.edu.Hiruez.model.Store;
import com.duongdk.edu.Hiruez.model.Table;
import com.duongdk.edu.Hiruez.model.User;
import com.duongdk.edu.Hiruez.qrcodeUtils.QrcodeConfiguration;
import com.duongdk.edu.Hiruez.repository.FoodItemRepository;
import com.duongdk.edu.Hiruez.repository.FoodMenuRepository;
import com.duongdk.edu.Hiruez.repository.InvoiceItemRepository;
import com.duongdk.edu.Hiruez.repository.InvoiceRepository;
import com.duongdk.edu.Hiruez.repository.MenuRepository;
import com.duongdk.edu.Hiruez.repository.StoreRepository;
import com.duongdk.edu.Hiruez.repository.TableRepository;
import com.duongdk.edu.Hiruez.repository.UserRepository;
import com.google.zxing.BarcodeFormat;
import com.google.zxing.MultiFormatWriter;
import com.google.zxing.WriterException;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.client.j2se.MatrixToImageWriter;

@Controller
public class CustomerController {

	@Autowired private StoreRepository storeRepository;
	
	@Autowired private TableRepository tableRepository;
	
	@Autowired private QrcodeConfiguration qrcodeConfiguration;
	
	@Autowired private InvoiceRepository invoiceRepository;
	
	@Autowired private InvoiceItemRepository invoiceItemRepository;
	
	@Autowired private MenuRepository menuRepository;
	
	@Autowired private FoodMenuRepository foodMenuRepository;
	
	@Autowired private FoodItemRepository foodItemRepository;
	
	@Autowired private UserRepository userRepository;
	
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
	
}
