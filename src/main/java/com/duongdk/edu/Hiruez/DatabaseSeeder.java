package com.duongdk.edu.Hiruez;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.LocalTime;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Component;

import com.duongdk.edu.Hiruez.model.FoodItem;
import com.duongdk.edu.Hiruez.model.FoodMenu;
import com.duongdk.edu.Hiruez.model.Invoice;
import com.duongdk.edu.Hiruez.model.InvoiceItem;
import com.duongdk.edu.Hiruez.model.Menu;
import com.duongdk.edu.Hiruez.model.Order;
import com.duongdk.edu.Hiruez.model.OrderItem;
import com.duongdk.edu.Hiruez.model.Payment;
import com.duongdk.edu.Hiruez.model.Store;
import com.duongdk.edu.Hiruez.model.Table;
import com.duongdk.edu.Hiruez.model.User;
import com.duongdk.edu.Hiruez.model.UserRole;
import com.duongdk.edu.Hiruez.repository.FoodItemRepository;
import com.duongdk.edu.Hiruez.repository.FoodMenuRepository;
import com.duongdk.edu.Hiruez.repository.InvoiceItemRepository;
import com.duongdk.edu.Hiruez.repository.InvoiceRepository;
import com.duongdk.edu.Hiruez.repository.MenuRepository;
import com.duongdk.edu.Hiruez.repository.OrderItemRepository;
import com.duongdk.edu.Hiruez.repository.OrderRepository;
import com.duongdk.edu.Hiruez.repository.PaymentRepository;
import com.duongdk.edu.Hiruez.repository.StoreRepository;
import com.duongdk.edu.Hiruez.repository.TableRepository;
import com.duongdk.edu.Hiruez.repository.UserRepository;
import com.duongdk.edu.Hiruez.repository.UserRoleRepository;


@Component
public class DatabaseSeeder implements CommandLineRunner {

	@Autowired private FoodItemRepository foodItemRepository;
	@Autowired private FoodMenuRepository foodMenuRepository;
	@Autowired private MenuRepository menuRepository;
	@Autowired private OrderItemRepository orderItemRepository;
	@Autowired private OrderRepository orderRepository;
	@Autowired private PaymentRepository paymentRepository;
	@Autowired private StoreRepository storeRepository;
	@Autowired private TableRepository tableRepository;
	@Autowired private UserRepository userRepository;
	@Autowired private UserRoleRepository userRoleRepository;	
	@Autowired private PasswordEncoder passwordEncoder;
	@Autowired private InvoiceRepository invoiceRepository;
	@Autowired private InvoiceItemRepository invoiceItemRepository;
	
	
	@Override
	public void run(String... args) throws Exception {

		// seeder here
		UserRole role_sysadmin = new UserRole("sysadmin"); 
		UserRole role_admin = new UserRole("admin");
		UserRole role_customer = new UserRole("customer");
		userRoleRepository.saveAll(List.of(role_sysadmin, role_admin, role_customer));
		
		User sysadminuser = new User("sysadmin", passwordEncoder.encode("sysadmin"), "hiruez@gmail.com", 99999D, role_sysadmin);
		User customer_sample = new User("duongdk", passwordEncoder.encode("123456"), "daokimduong322@gmail.com", 100D, role_customer);
		User bunCoTuyet_admin = new User("buncoTuyet_admin", passwordEncoder.encode("buncoTuyet_admin"), "", 500D, role_admin);
		User advisor = new User("minh", passwordEncoder.encode("123456"), "", 999D, role_customer);
		userRepository.saveAll(List.of(sysadminuser, bunCoTuyet_admin, customer_sample, advisor));
		
		Store buncoTuyet_store = new Store(bunCoTuyet_admin, "Bún cá cô Tuyết", "117 P. Trần Đại Nghĩa, Bách Khoa, Hai Bà Trưng, Hà Nội", "0383338888", "Ăn là ngon - Nghĩ là thèm", "buncacotuyet@gmail.com");
		storeRepository.save(buncoTuyet_store);
		
		Table buncoTuyet_store_table1 = new Table(buncoTuyet_store, "Table 1", 0L, 8L, true); // true is free
		Table buncoTuyet_store_table2 = new Table(buncoTuyet_store, "Table 2", 0L, 6L, false);
		Table buncoTuyet_store_table3 = new Table(buncoTuyet_store, "Table 3", 0L, 4L, true);
		Table buncoTuyet_store_table4 = new Table(buncoTuyet_store, "Table 4", 0L, 8L, true);
		Table buncoTuyet_store_table5 = new Table(buncoTuyet_store, "Table 5", 0L, 6L, true);
		Table buncoTuyet_store_table6 = new Table(buncoTuyet_store, "Table 6", 0L, 3L, false);
		tableRepository.saveAll(List.of(buncoTuyet_store_table1, buncoTuyet_store_table2, buncoTuyet_store_table3, buncoTuyet_store_table4, buncoTuyet_store_table5, buncoTuyet_store_table6));
		
		FoodItem buncoTuyet_store_fooditem1 = new FoodItem(buncoTuyet_store, "Bún Cá", 1.5f, "Thơm ngon đậm đặc, chua cay kết hợp");
		FoodItem buncoTuyet_store_fooditem2 = new FoodItem(buncoTuyet_store, "Bún Đậu mắm tôm", 2f, "Mắm tôm gia truyền thơm ngon");
		FoodItem buncoTuyet_store_fooditem3 = new FoodItem(buncoTuyet_store, "Bún Đậu thập cẩm", 3f, "Bún đậu full topping");
		FoodItem buncoTuyet_store_fooditem4 = new FoodItem(buncoTuyet_store, "Cơm rang dưa bò", 2f, "Thơm ngon đậm vị");
		FoodItem buncoTuyet_store_fooditem5 = new FoodItem(buncoTuyet_store, "Mì xào Indomie thập cẩm", 2.5f, "Mì xào full topping nóng hổi");
		foodItemRepository.saveAll(List.of(buncoTuyet_store_fooditem1, buncoTuyet_store_fooditem2, buncoTuyet_store_fooditem3, buncoTuyet_store_fooditem4, buncoTuyet_store_fooditem5));
		
		Menu buncoTuyet_store_menu = new Menu(buncoTuyet_store, LocalDateTime.of(LocalDate.of(2023,12, 03), LocalTime.of(8, 0)), true);
		menuRepository.save(buncoTuyet_store_menu);
		
		FoodMenu buncacoTuyet_store_menu_03122023_1 = new FoodMenu(buncoTuyet_store_fooditem1, buncoTuyet_store_menu, 50L);
		FoodMenu buncacoTuyet_store_menu_03122023_2 = new FoodMenu(buncoTuyet_store_fooditem2, buncoTuyet_store_menu, 20L);
		FoodMenu buncacoTuyet_store_menu_03122023_3 = new FoodMenu(buncoTuyet_store_fooditem3, buncoTuyet_store_menu, 100L);
		FoodMenu buncacoTuyet_store_menu_03122023_4 = new FoodMenu(buncoTuyet_store_fooditem4, buncoTuyet_store_menu, 100L);
		FoodMenu buncacoTuyet_store_menu_03122023_5 = new FoodMenu(buncoTuyet_store_fooditem5, buncoTuyet_store_menu, 99L);
		foodMenuRepository.saveAll(List.of(buncacoTuyet_store_menu_03122023_1,
				buncacoTuyet_store_menu_03122023_2,
				buncacoTuyet_store_menu_03122023_3,
				buncacoTuyet_store_menu_03122023_4,
				buncacoTuyet_store_menu_03122023_5));
		
		Order firstOrder = new Order(customer_sample, buncoTuyet_store_table1, LocalDateTime.now(), 0L);
		orderRepository.save(firstOrder);
		OrderItem item1 = new OrderItem(firstOrder, buncoTuyet_store_fooditem1, 2L);
		OrderItem item2 = new OrderItem(firstOrder, buncoTuyet_store_fooditem2, 3L);
		float amout = item1.getQuantity() * item1.getFood().getPrice() + item2.getQuantity() * item2.getFood().getPrice();
		Payment firstOrder_payment = new Payment(firstOrder, amout, LocalDateTime.now(), "SUCCESS");
		paymentRepository.save(firstOrder_payment);
		orderItemRepository.saveAll(List.of(item1, item2));
		firstOrder.setTotal(amout); firstOrder.setOrderTime(firstOrder_payment.getPaymentTime());
		orderRepository.save(firstOrder);
		
		Order secondOrder = new Order(customer_sample, buncoTuyet_store_table3, LocalDateTime.of(LocalDate.of(2023,12, 30), LocalTime.of(15, 26)), 0L);
		orderRepository.save(secondOrder);
		OrderItem item3 = new OrderItem(secondOrder, buncoTuyet_store_fooditem3, 2L);
		OrderItem item4 = new OrderItem(secondOrder, buncoTuyet_store_fooditem4, 3L);
		
		float amout2 = item3.getQuantity() * item3.getFood().getPrice() + item4.getQuantity() * item4.getFood().getPrice();
		Payment secondOrder_payment = new Payment(secondOrder, amout2, LocalDateTime.of(LocalDate.of(2023,12, 30), LocalTime.of(15, 26)), "SUCCESS");
		paymentRepository.save(secondOrder_payment);
		orderItemRepository.saveAll(List.of(item3, item4));
		secondOrder.setTotal(amout2); secondOrder.setOrderTime(secondOrder_payment.getPaymentTime());
		orderRepository.save(secondOrder);
		
		
		// add new store
		User comNieuSingapore_admin =  new User("comNieuSingapore_admin", passwordEncoder.encode("comNieuSingapore_admin"), "", 500D, role_admin);
		
		userRepository.save(comNieuSingapore_admin);
		
		Store comNieuSingapore_store = new Store(comNieuSingapore_admin, "Cơm niêu Singapore", "Số 26 Kim Đồng, Phường Giáp Bát, Quận Hoàng Mai, Hà Nội", "19002280", "Hãy đổi gió với ẩm thực Singapore thơm ngon trong những niêu cơm", "pato.com.vn@gmail.com");
		storeRepository.save(comNieuSingapore_store);
		
		Table comNieuSingapore_store_table1 = new Table(comNieuSingapore_store, "Table 1", 0L, 8L, true); // true is free
		Table comNieuSingapore_store_table2 = new Table(comNieuSingapore_store, "Table 2", 0L, 6L, false);
		Table comNieuSingapore_store_table3 = new Table(comNieuSingapore_store, "Table 3", 0L, 4L, true);
		Table comNieuSingapore_store_table4 = new Table(comNieuSingapore_store, "Table 4", 0L, 8L, true);
		Table comNieuSingapore_store_table5 = new Table(comNieuSingapore_store, "Table 5", 0L, 6L, true);
		Table comNieuSingapore_store_table6 = new Table(comNieuSingapore_store, "Table 6", 0L, 3L, false);
		Table comNieuSingapore_store_table7 = new Table(comNieuSingapore_store, "Table 7", 0L, 5L, false);
		Table comNieuSingapore_store_table8 = new Table(comNieuSingapore_store, "Table 8", 0L, 10L, true);
		Table comNieuSingapore_store_table9 = new Table(comNieuSingapore_store, "Table 9", 0L, 6L, false);
		Table comNieuSingapore_store_table10 = new Table(comNieuSingapore_store, "Table 10", 0L, 8L, true);
		tableRepository.saveAll(List.of(comNieuSingapore_store_table1, comNieuSingapore_store_table2, comNieuSingapore_store_table3, comNieuSingapore_store_table4, comNieuSingapore_store_table5, comNieuSingapore_store_table6, comNieuSingapore_store_table7, comNieuSingapore_store_table8, comNieuSingapore_store_table9, comNieuSingapore_store_table10));
		
		FoodItem comNieuSingapore_store_fooditem1 = new FoodItem(comNieuSingapore_store, "Cơm Niêu Bò Nướng", 4f, "Grilled beef claypot rice");
		FoodItem comNieuSingapore_store_fooditem2 = new FoodItem(comNieuSingapore_store, "Cơm Niêu Gà Sốt Teriyaki", 3.5f, "Grilled chicken with Teriyaki claypot rice");
		FoodItem comNieuSingapore_store_fooditem3 = new FoodItem(comNieuSingapore_store, "Cơm Niêu Bò Sốt Tiêu Đen", 3.2f, "Black pepper beef claypot rice");
		FoodItem comNieuSingapore_store_fooditem4 = new FoodItem(comNieuSingapore_store, "Cơm Niêu Thịt Sốt BBQ", 3.2f, "BBQ pork claypot rice");
		FoodItem comNieuSingapore_store_fooditem5 = new FoodItem(comNieuSingapore_store, "Cơm Niêu Gà Sốt Nấm", 3.3f, "Mushroom chicken claypot rice");
		FoodItem comNieuSingapore_store_fooditem6 = new FoodItem(comNieuSingapore_store, "Cơm Niêu Sườn Nướng", 3.3f, "Black pepper beef claypot rice");
		foodItemRepository.saveAll(List.of(comNieuSingapore_store_fooditem1, comNieuSingapore_store_fooditem2, comNieuSingapore_store_fooditem3, comNieuSingapore_store_fooditem4, comNieuSingapore_store_fooditem5, comNieuSingapore_store_fooditem6));
		
		Menu comNieuSingapore_store_menu = new Menu(comNieuSingapore_store, LocalDateTime.of(LocalDate.of(2024, 01, 02), LocalTime.of(7, 0)), true);
		menuRepository.save(comNieuSingapore_store_menu);
		
		FoodMenu comNieuSingapore_store_menu_01022024_1 = new FoodMenu(comNieuSingapore_store_fooditem1, comNieuSingapore_store_menu, 20L);
		FoodMenu comNieuSingapore_store_menu_01022024_2 = new FoodMenu(comNieuSingapore_store_fooditem2, comNieuSingapore_store_menu, 30L);
		FoodMenu comNieuSingapore_store_menu_01022024_3 = new FoodMenu(comNieuSingapore_store_fooditem3, comNieuSingapore_store_menu, 49L);
		FoodMenu comNieuSingapore_store_menu_01022024_4 = new FoodMenu(comNieuSingapore_store_fooditem4, comNieuSingapore_store_menu, 25L);
		FoodMenu comNieuSingapore_store_menu_01022024_5 = new FoodMenu(comNieuSingapore_store_fooditem5, comNieuSingapore_store_menu, 35L);
		FoodMenu comNieuSingapore_store_menu_01022024_6 = new FoodMenu(comNieuSingapore_store_fooditem6, comNieuSingapore_store_menu, 18L);
		foodMenuRepository.saveAll(List.of(comNieuSingapore_store_menu_01022024_1,
				comNieuSingapore_store_menu_01022024_2,
				comNieuSingapore_store_menu_01022024_3,
				comNieuSingapore_store_menu_01022024_4,
				comNieuSingapore_store_menu_01022024_5,
				comNieuSingapore_store_menu_01022024_6));
		
		User customer1 = new User("dungnn", passwordEncoder.encode("123456"), "dungnn@gmail.com", 50D, role_customer);
		userRepository.save(customer1);
		Order comNieuSingapore_store_firstOrder = new Order(customer1, comNieuSingapore_store_table5, LocalDateTime.now(), 0L);
		orderRepository.save(comNieuSingapore_store_firstOrder);
		OrderItem comNieuSingapore_store_firstOrder_item1 = new OrderItem(comNieuSingapore_store_firstOrder, comNieuSingapore_store_fooditem1, 2L);
		OrderItem comNieuSingapore_store_firstOrder_item2 = new OrderItem(comNieuSingapore_store_firstOrder, comNieuSingapore_store_fooditem2, 3L);
		OrderItem comNieuSingapore_store_firstOrder_item3 = new OrderItem(comNieuSingapore_store_firstOrder, comNieuSingapore_store_fooditem3, 1L);
		OrderItem comNieuSingapore_store_firstOrder_item4 = new OrderItem(comNieuSingapore_store_firstOrder, comNieuSingapore_store_fooditem4, 1L);
		OrderItem comNieuSingapore_store_firstOrder_item5 = new OrderItem(comNieuSingapore_store_firstOrder, comNieuSingapore_store_fooditem5, 1L);
		OrderItem comNieuSingapore_store_firstOrder_item6 = new OrderItem(comNieuSingapore_store_firstOrder, comNieuSingapore_store_fooditem6, 1L);
		float comNieuSingapore_store_firstOrder_amout = 
				comNieuSingapore_store_firstOrder_item1.getQuantity() * comNieuSingapore_store_firstOrder_item1.getFood().getPrice() 
				+ comNieuSingapore_store_firstOrder_item2.getQuantity() * comNieuSingapore_store_firstOrder_item2.getFood().getPrice()
				+ comNieuSingapore_store_firstOrder_item3.getQuantity() * comNieuSingapore_store_firstOrder_item3.getFood().getPrice()
				+ comNieuSingapore_store_firstOrder_item4.getQuantity() * comNieuSingapore_store_firstOrder_item4.getFood().getPrice()
				+ comNieuSingapore_store_firstOrder_item5.getQuantity() * comNieuSingapore_store_firstOrder_item5.getFood().getPrice()
				+ comNieuSingapore_store_firstOrder_item6.getQuantity() * comNieuSingapore_store_firstOrder_item6.getFood().getPrice();
		Payment comNieuSingapore_store_firstOrder_firstOrder_payment = new Payment(comNieuSingapore_store_firstOrder, comNieuSingapore_store_firstOrder_amout, LocalDateTime.now(), "SUCCESS");
		paymentRepository.save(comNieuSingapore_store_firstOrder_firstOrder_payment);
		orderItemRepository.saveAll(List.of(comNieuSingapore_store_firstOrder_item1, comNieuSingapore_store_firstOrder_item2, 
				comNieuSingapore_store_firstOrder_item3, comNieuSingapore_store_firstOrder_item4,
				comNieuSingapore_store_firstOrder_item5, comNieuSingapore_store_firstOrder_item6));
		comNieuSingapore_store_firstOrder.setTotal(comNieuSingapore_store_firstOrder_amout); comNieuSingapore_store_firstOrder.setOrderTime(comNieuSingapore_store_firstOrder_firstOrder_payment.getPaymentTime());
		orderRepository.save(comNieuSingapore_store_firstOrder);
		
		User customer2 = new User("trungtv", passwordEncoder.encode("123456"), "trungtv@gmail.com", 30D, role_customer);
		userRepository.save(customer2);
		Order comNieuSingapore_store_secondOrder = new Order(customer2, comNieuSingapore_store_table10, LocalDateTime.of(LocalDate.of(2023, 12, 25), LocalTime.of(15, 00)), 0L);
		orderRepository.save(comNieuSingapore_store_secondOrder);
		OrderItem comNieuSingapore_store_secondOrder_item3 = new OrderItem(comNieuSingapore_store_secondOrder, comNieuSingapore_store_fooditem3, 1L);
		OrderItem comNieuSingapore_store_secondOrder_item4 = new OrderItem(comNieuSingapore_store_secondOrder, comNieuSingapore_store_fooditem4, 3L);
		
		float comNieuSingapore_store_secondOrder_amount = comNieuSingapore_store_secondOrder_item3.getQuantity() * comNieuSingapore_store_secondOrder_item3.getFood().getPrice() 
				+ comNieuSingapore_store_secondOrder_item4.getQuantity() * comNieuSingapore_store_secondOrder_item4.getFood().getPrice();
		Payment comNieuSingapore_store_secondOrder_payment = new Payment(comNieuSingapore_store_secondOrder, comNieuSingapore_store_secondOrder_amount, LocalDateTime.of(LocalDate.of(2023,12, 30), LocalTime.of(15, 26)), "SUCCESS");
		paymentRepository.save(comNieuSingapore_store_secondOrder_payment);
		orderItemRepository.saveAll(List.of(comNieuSingapore_store_secondOrder_item3, comNieuSingapore_store_secondOrder_item4));
		comNieuSingapore_store_secondOrder.setTotal(comNieuSingapore_store_secondOrder_amount); comNieuSingapore_store_secondOrder.setOrderTime(comNieuSingapore_store_secondOrder_payment.getPaymentTime());
		orderRepository.save(comNieuSingapore_store_secondOrder);
		
		// invoice sample data
		Invoice invoice1 = new Invoice(customer_sample, comNieuSingapore_store_table1, LocalDateTime.now(), 1); //1  mean is current on table
		invoiceRepository.save(invoice1);
		
		InvoiceItem i_item_1 = new InvoiceItem(invoice1, comNieuSingapore_store_fooditem1, 1L, customer_sample);
		InvoiceItem i_item_2 = new InvoiceItem(invoice1, comNieuSingapore_store_fooditem3, 1L, customer1);
		InvoiceItem i_item_3 = new InvoiceItem(invoice1, comNieuSingapore_store_fooditem4, 1L, customer2);
		
		invoiceItemRepository.saveAll(List.of(i_item_1, i_item_2, i_item_3));
	}
}
