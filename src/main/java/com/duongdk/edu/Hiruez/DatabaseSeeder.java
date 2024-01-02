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

	private final FoodItemRepository foodItemRepository;
	private final FoodMenuRepository foodMenuRepository;
	private final MenuRepository menuRepository;
	private final OrderItemRepository orderItemRepository;
	private final OrderRepository orderRepository;
	private final PaymentRepository paymentRepository;
	private final StoreRepository storeRepository;
	private final TableRepository tableRepository;
	private final UserRepository userRepository;
	private final UserRoleRepository userRoleRepository;	
	private final PasswordEncoder passwordEncoder;
	@Autowired
	public DatabaseSeeder(FoodItemRepository foodItemRepository, FoodMenuRepository foodMenuRepository,
			MenuRepository menuRepository, OrderItemRepository orderItemRepository, OrderRepository orderRepository,
			PaymentRepository paymentRepository, StoreRepository storeRepository, TableRepository tableRepository,
			UserRepository userRepository, UserRoleRepository userRoleRepository, PasswordEncoder passwordEncoder) {
		super();
		this.foodItemRepository = foodItemRepository;
		this.foodMenuRepository = foodMenuRepository;
		this.menuRepository = menuRepository;
		this.orderItemRepository = orderItemRepository;
		this.orderRepository = orderRepository;
		this.paymentRepository = paymentRepository;
		this.storeRepository = storeRepository;
		this.tableRepository = tableRepository;
		this.userRepository = userRepository;
		this.userRoleRepository = userRoleRepository;
		this.passwordEncoder = passwordEncoder;
	}
	
	@Override
	public void run(String... args) throws Exception {

		// seeder here
		UserRole role_sysadmin = new UserRole("sysadmin"); 
		UserRole role_admin = new UserRole("admin");
		UserRole role_customer = new UserRole("customer");
		userRoleRepository.saveAll(List.of(role_sysadmin, role_admin, role_customer));
		
		User sysadminuser = new User("sysadmin", passwordEncoder.encode("sysadmin"), "hiruez@gmail.com", 99999L, role_sysadmin);
		User customer_sample = new User("duongdk", passwordEncoder.encode("123456"), "daokimduong322@gmail.com", 100L, role_customer);
		User bunCoTuyet_admin = new User("buncoTuyet_admin", passwordEncoder.encode("buncoTuyet_admin"), "", 500L, role_admin);
		userRepository.saveAll(List.of(sysadminuser, bunCoTuyet_admin, customer_sample));
		
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
		
		Menu buncoTuyet_store_menu = new Menu(buncoTuyet_store, LocalDateTime.of(LocalDate.of(2023,12, 03), LocalTime.of(8, 0)), false);
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
		
	}
}
