package com.duongdk.edu.Hiruez.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import com.duongdk.edu.Hiruez.model.FoodMenu;
import com.duongdk.edu.Hiruez.model.Invoice;
import com.duongdk.edu.Hiruez.model.InvoiceItem;
import com.duongdk.edu.Hiruez.repository.FoodMenuRepository;
import com.duongdk.edu.Hiruez.repository.InvoiceItemRepository;
import com.duongdk.edu.Hiruez.repository.InvoiceRepository;
import com.duongdk.edu.Hiruez.repository.UserRepository;

@RestController
public class APIStyleController {

	@Autowired private UserRepository userRepository;
	
	@Autowired private InvoiceRepository invoiceRepository;
	
	@Autowired private FoodMenuRepository foodMenuRepository;
	
	@Autowired private InvoiceItemRepository invoiceItemRepository;
	
	@GetMapping("/api/user/balance/{username}")
	public ResponseEntity<Double> getBalance(@PathVariable String username) {
		Double balance = userRepository.findByUsername(username).getBalance();
		return ResponseEntity.ok(balance);
	}
	
	@GetMapping("/customer/invoice/{id}/add/foodmenu/{fid}/quantity/{quantity}/user/{username}")
    public ResponseEntity<String> addFoodToInvoice(
            @PathVariable("id") Long id,
    		@PathVariable("fid") Long foodMenuId,
    		@PathVariable("quantity") Long quantity,
    		@PathVariable("username") String username) {
	    
		Invoice invoice = invoiceRepository.findById(id).get();
		
		InvoiceItem newInvoiceItem = new InvoiceItem();
		FoodMenu fMenu = foodMenuRepository.findById(foodMenuId).get();
		newInvoiceItem.setFood(fMenu.getFood());
		newInvoiceItem.setInvoice(invoice);
		newInvoiceItem.setQuantity(quantity);
		newInvoiceItem.setByUser(userRepository.findByUsername(username));
		
		invoiceItemRepository.save(newInvoiceItem);
		return ResponseEntity.ok("Item added to the invoice successfully");
    }
	
	@GetMapping("/customer/invoice/{id}/remove/foodmenu/{fid}")
	public ResponseEntity<String> deleteFoodInInvoice(
			@PathVariable("id") Long id,
    		@PathVariable("fid") Long foodMenuId) {
		
		InvoiceItem item = invoiceItemRepository.findById(foodMenuId).get();
		invoiceItemRepository.delete(item);
		
		return ResponseEntity.ok("Item removed to the invoice successfully");
	}
}
