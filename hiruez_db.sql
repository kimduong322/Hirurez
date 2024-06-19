-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th6 19, 2024 lúc 12:25 PM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `hiruez_db`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `deposit_money_payment`
--

CREATE TABLE `deposit_money_payment` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `amount` float NOT NULL,
  `bankcode` varchar(255) NOT NULL,
  `card_type` varchar(255) NOT NULL,
  `info` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `method` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `deposit_money_payment`
--

INSERT INTO `deposit_money_payment` (`id`, `user_id`, `amount`, `bankcode`, `card_type`, `info`, `status`, `method`) VALUES
(1, 570, 25000, 'NCB', 'ATM', 'Nap tien vao he thong luc : 11:40:51 24-05-2024', 'SUCCESSFUL', 'VN_PAY'),
(2, 570, 40000, 'VISA', 'VISA', 'Nap tien vao he thong luc : 18:16:09 24-05-2024', 'SUCCESSFUL', 'VN_PAY'),
(3, 570, 25000, 'VNPAY', 'QRCODE', 'Nap tien vao he thong luc : 18:31:50 24-05-2024', 'FAILED', 'VN_PAY'),
(4, 3, 12000, 'VNPAY', 'QRCODE', 'Nap tien vao he thong luc : 18:40:40 24-05-2024', 'FAILED', 'VN_PAY'),
(5, 3, 12000, 'EXIMBANK', 'ATM', 'Nap tien vao he thong luc : 18:41:25 24-05-2024', 'FAILED', 'VN_PAY'),
(6, 571, 20000, 'NCB', 'ATM', 'Nap tien vao he thong luc : 05:52:47 25-05-2024', 'SUCCESSFUL', 'VN_PAY'),
(7, 3, 100000, 'NCB', 'ATM', 'Nap tien vao he thong luc : 10:11:45 30-05-2024', 'SUCCESSFUL', 'VN_PAY'),
(8, 3, 100000, 'VNPAY', 'QRCODE', 'Nap tien vao he thong luc : 11:41:31 04-06-2024', 'FAILED', 'VN_PAY'),
(9, 569, 310000, 'NCB', 'ATM', 'Nap tien vao he thong luc : 09:28:38 06-06-2024', 'SUCCESSFUL', 'VN_PAY'),
(10, 560, 275000, 'NCB', 'ATM', 'Nap tien vao he thong luc : 14:55:33 11-06-2024', 'SUCCESSFUL', 'VN_PAY'),
(11, 566, 120000, 'NCB', 'ATM', 'Nap tien vao he thong luc : 12:44:15 18-06-2024', 'SUCCESSFUL', 'VN_PAY'),
(12, 566, 110000, 'NCB', 'ATM', 'Nap tien vao he thong luc : 16:11:34 19-06-2024', 'SUCCESSFUL', 'VN_PAY'),
(13, 571, 285000, 'NCB', 'ATM', 'Nap tien vao he thong luc : 16:36:03 19-06-2024', 'SUCCESSFUL', 'VN_PAY');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `foods`
--

CREATE TABLE `foods` (
  `price` float NOT NULL,
  `belongs_to_store_id` bigint(20) NOT NULL,
  `id` bigint(20) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `foods`
--

INSERT INTO `foods` (`price`, `belongs_to_store_id`, `id`, `description`, `name`) VALUES
(37500, 1, 1, 'Thơm ngon đậm đặc, chua cay kết hợp', 'Bún Cá'),
(50000, 1, 2, 'Mắm tôm gia truyền thơm ngon', 'Bún Đậu mắm tôm'),
(75000, 1, 3, 'Bún đậu full topping', 'Bún Đậu thập cẩm'),
(50000, 1, 4, 'Thơm ngon đậm vị', 'Cơm rang dưa bò'),
(62500, 1, 5, 'Mì xào full topping nóng hổi', 'Mì xào Indomie thập cẩm'),
(100000, 2, 6, 'Grilled beef claypot rice', 'Cơm Niêu Bò Nướng'),
(87500, 2, 7, 'Grilled chicken with Teriyaki claypot rice', 'Cơm Niêu Gà Sốt Teriyaki'),
(80000, 2, 8, 'Black pepper beef claypot rice', 'Cơm Niêu Bò Sốt Tiêu Đen'),
(80000, 2, 9, 'BBQ pork claypot rice', 'Cơm Niêu Thịt Sốt BBQ'),
(82500, 2, 10, 'Mushroom chicken claypot rice', 'Cơm Niêu Gà Sốt Nấm'),
(82500, 2, 11, 'Black pepper beef claypot rice', 'Cơm Niêu Sườn Nướng'),
(70000, 3, 12, 'Sốt phủ gà là sốt vị cay ngọt đc làm từ tương ớt nhập khẩu Hàn Quốc (Gochujang)', 'Set gimbap mix gà cay ngọt'),
(92500, 3, 13, 'Gà sốt vị cay ngọt thiên ngot', 'Combo Gimbap Mix Gà Cay Ngọt + Coca-Cola chai'),
(112500, 3, 14, 'Giảm 25K nhập mã FOODFEST khi đặt combo Coca-Cola. Chương trình từ 22/08-09/09', 'Combo Set 6in1 + Coca-Cola chai'),
(75000, 3, 15, 'Giảm 25K nhập mã FOODFEST khi đặt combo Coca-Cola. Chương trình từ 22/08-09/09', 'Combo Set Gimbap Gà Giòn + Coca-Cola chai'),
(50000, 3, 16, 'Là món bánh xếp truyền thống Hàn Quốc : Vỏ mỏng , nhân hải sản , vị thơm ngonn', 'Mandu hải sản chiên'),
(37500, 3, 17, 'Là sự kết hợp hoàn hảo tròn vị , ấm bụng khi ăn kèm các set mix gà như set 6in1 ...', 'Cơm rong biển phomai'),
(75000, 3, 18, 'Suất ăn rất đầy đặn - Có nhiều topping : xúc xích , chả cá Hàn ,thịt bò, trứng thái nhỏ và các loại rau củ quả là chính + sốt cay ngọt để riêng. Món ăn cần trộn đều trước khi thưởng thức', 'Miến trộn cay ngọt Hàn Quốc'),
(75000, 4, 19, 'Rice noodles + x1.5Fried tofu + Pork calf muscle + Fried spring rolls + Spring roll + Hog\'s pudding.', 'Suất Truyền Thống'),
(87500, 4, 20, 'Rice noodles + x1.5Fried tofu + Pork calf muscle + Fried spring rolls + Spring roll + Hog\'s pudding + Grilled pork.', 'Suất Đặc Biệt'),
(62500, 4, 21, 'Rice noodle + Fried tofu + Spring roll(x2).', 'Bún Đậu Chả Cốm'),
(100000, 4, 22, 'Special and Drink. Description: Rice noodle + Fried tofu + Pork calf muscle + Fried spring rolls + Spring roll + Hog\'s pudding + Grilled pork + Drink.', 'Combo Đặc Biệt + Trà Tắc'),
(62500, 5, 23, 'Một suất bún thơm ngon và đồ uống', 'Bún Bầu Dục Sườn Mọc + 1 coca'),
(62500, 5, 24, 'Một suất bún thơm ngon và đồ uống', 'Bún Tim Sườn Mọc + 1 coca'),
(62500, 5, 25, 'Một suất bún thơm ngon và đồ uống', 'Bún Thập cẩm + 1 coca'),
(50000, 5, 26, 'Đã bao gồm tiền hộp đựng', 'Bún Mọc'),
(50000, 5, 27, 'Đã bao gồm tiền hộp đựng', 'Bún Sườn'),
(50000, 5, 28, 'Đã bao gồm tiền hộp đựng', 'Bún Tim '),
(62500, 6, 29, 'Mì chần 1 gói (~65gr), thịt bò (50gr), rau chần, cà rốt, hành phi, nước trộn. (Định lượng trung bình cho 1 người ăn, quý khách ăn thêm vui lòng đặt thêm mì)', 'Mì Trộn Thịt Bò'),
(65000, 6, 30, 'Mì chần 1 gói (~65gr), nem nướng (50gr), rau chần, cà rốt, hành phi, nước trộn. (Định lượng trung bình cho 1 người ăn, quý khách ăn thêm vui lòng đặt thêm mì)', 'MÌ Trộn Nem Nướng'),
(57500, 6, 31, 'Bún, Thịt bò, Lạc, Hành phi, Rau sống, Giá, Nước trộn | Quý khách vui lòng trộn đều cùng nước trộn kèm theo trước khi thưởng thức | Giá đã bao gồm: tô giấy và dụng cụ ăn uống.', 'Bún Bò Trộn Nam Bộ'),
(82500, 6, 32, 'Bún trắng, Xúc xích (50gr = 1 Chiếc), Lạc, Hành phi, Rau sống, Giá, Nước trộn | Quý khách vui lòng trộn đều cùng nước trộn kèm theo trước khi thưởng thức.', 'Bún Trộn Xúc Xích'),
(80000, 6, 33, 'Bún trắng, Nem nướng, Lạc, Hành phi, Rau sống, Giá, Nước trộn | Quý khách vui lòng trộn đều cùng nước trộn kèm theo trước khi thưởng thức', 'Bún Trộn Nem Nướng'),
(75000, 6, 34, 'Thịt bò, Nem nướng, Xúc xích, Bún, Giá, Rau sống, Cà rốt, Lạc, Hành khô Kèm theo nước trộn và dụng cụ ăn uống', 'Bún Trộn Đặc Biệt (Nem nướng)'),
(50000, 6, 35, 'Bún, Lườn ngỗng hun khói, Giá, Hành Phi, Lạc, Rau sống. Kèm theo nước trộn. Quý khách vui lòng trộn đều cùng nước trộn kèm theo trước khi thưởng thức.', 'Bún Trộn Lườn Ngỗng Hun Khói'),
(55000, 6, 36, 'Bún, Chả hải sản, Lạc, Hành phi, Rau sống, Giá trần, Nước trộn | Giá sản phẩm đã bao gồm tô giấy và dụng cụ ăn uống | Lưu ý: Sản phẩm có sẵn vị cay đặc thù.', 'Bún Trộn Chả Hải Sản (Mới)'),
(175000, 7, 37, 'Cánh gà rán sốt độc bản, ăn kèm 1 phần rau củ muối chua', 'Wings (size M) - Cánh gà (size M) - 8pcs'),
(100000, 7, 38, 'Cánh gà rán sốt độc bản, ăn kèm 1 phần rau củ muối chua', 'Wings (size S) - Cánh gà (size S) - 4pcs'),
(95000, 7, 39, 'Gà rán độc bản Hàn Quốc với nhiều loại xốt độc quyền Bonchon. Ăn kèm với rau củ muối chua - Signature Korean Fried Chicken with Bonchon unique sauce. Served with Pickle vegetables', 'Chicken Bites (size S) - Gà không xương (size S) - 5pcs'),
(155000, 7, 40, 'Gà rán độc bản Hàn Quốc với nhiều loại xốt độc quyền Bonchon. Ăn kèm với rau củ muối chua - Signature Korean Fried Chicken with Bonchon unique sauce. Served with Pickle vegetables', 'Chicken Combo (size S) - 4pcs wings, 1pc drumsticks - Combo gà (size S) - 4 cánh, 1 đùi gà'),
(800000, 7, 41, '18 gà không xương + 12 miếng cánh + 6 đùi, với 3 sốt và 3 phần rau củ muối chua', 'Crunch Party Combo'),
(500000, 7, 42, 'Gà rán độc bản Hàn Quốc với nhiều loại xốt độc quyền Bonchon. Ăn kèm với rau củ muối chua - Signature Korean Fried Chicken with Bonchon unique sauce. Served with Pickle vegetables. 16 cánh, 5 miếng gà không xương', 'Wings Lover Combo'),
(475000, 7, 43, 'Combo Gà Bonchon (size S - 4 miếng khuỷu cánh, 1 đùi gà), Tteokbokki Hàn Quốc, Khoai Tây Bonchon, Sụn Gà Bonchon, 02 lon nước ngọt - Bonchon Chicken Combo (size S - 4 wings pcs, 1 drumsticks), Bonchon Tteokbokki, Bonchon Fries, Chicken Joint, 02 Soft Drin', 'Couple Deal 1'),
(450000, 7, 44, 'Combo Gà Bonchon (size S - 4 miếng khuỷu cánh, 1 đùi gà), Cơm Trộn Hàn Quốc Thố Nóng, Sa-Lát Đậu Chiên, Sụn Gà Bonchon, 02 lon nước ngọt - Bonchon Chicken Combo (size S - 4 wings pcs, 1 drumsticks), Hot Stone Bibimbap, Tofu Salad, Chicken Joint, 02 Soft D', 'Couple Deal 2'),
(700000, 7, 45, 'Crunch Club Combo (10 miếng gà không xương, 6 miếng khuỷu cánh gà, 3 đùi gà), Khoai Tây Bonchon, Sụn Gà Bonchon, 02 lon nước ngọt - Crunch Club Combo (10 Bites, 6 Wings pcs, 3 Drumstick), Bonchon Fries, Chicken Joint, 02 Soft Drink Can', 'Group Saver'),
(175000, 8, 46, 'Tôm, cua, mực và bông cải xanh trên nền xốt Pesto. Fresh shrimp, crab, squid and broccoli on green Pesto sauce', 'Pizza Hải Sản Pesto Xanh / Secret Recipe Seafood Pesto'),
(152500, 8, 47, 'Xúc xích, giăm bông, thịt xông khói và nhiều loại rau trên nền xốt cà chua đặc trưng. Pepperoni, ham, bacon…and other vegetables with Pizza sauce', 'Pizza 5 Loại Thịt Đặc Biệt Và Rau Củ / Super Deluxe'),
(152500, 8, 48, 'Sự kết hợp giữa thịt giăm bông, thịt xông khói, bắp ngọt và xốt cà chua. Comes with lots of ham, bacon bits and corns with Pizza sauce', 'Pizza Thịt Nguội Kiểu Canada / Canadian Bacon'),
(145000, 8, 49, 'Xúc xích kiểu Ý trên nền xốt cà chua đặc trưng. Pepperoni and cheese combined with Pizza sauce', 'Pizza Xúc Xích Ý / Double Pepperoni'),
(145000, 8, 50, 'Gà, dứa kết hợp với vị cay của ớt và vị chua đặc trưng của xốt cà chua. Grilled chicken go with pineapple, red and green capsicums with Pizza sauce', 'Pizza Gà Nướng Dứa / Chicken Caldo'),
(112500, 8, 51, 'Crispy Chicken With Korean Sauce. Gà tẩm bột chiên giòn rụm phủ lớp xốt (có chút vị cay rất nhẹ) đặc trưng theo kiểu truyền thống Hàn Quốc. Ngon hơn khi dùng kèm xốt mù tạc mật ong và củ cải lên men.', 'Gà Giòn Xốt Hàn - Truyền Thống'),
(112500, 8, 52, 'Crispy Chicken With Soy & Garlic Sauce. Những miếng gà tươi ngon tẩm bột chiên giòn phủ xốt tương tỏi kiểu Hàn được chế biến theo công thức đặc biệt pha chút vị the nhè nhẹ và mùi thơm của gừng, tỏi mang đến cảm giác mới lạ khi thưởng thức.', 'Gà Giòn Xốt Tương Tỏi Hàn Quốc'),
(125000, 8, 53, 'Crispy Chicken With Spicy Korean Sauce. Thịt gà mềm ngọt tẩm một lớp bột chiên mỏng vàng, giòn rụm phủ xốt cay đậm chất Hàn. Phục vụ kèm xốt mù tạc mật ong và củ cải lên men.', 'Gà Giòn Xốt Hàn - Cay'),
(125000, 8, 54, 'Mỳ Ý, nấm và giăm bông được nấu cùng với xốt kem trắng. Champignon mushrooms and tasty ham, cooked in white cream sauce', 'Mì Ý Giăm Bông Và Nấm xốt Kem / Pasta ham & mushroom in creamy sauce'),
(125000, 8, 55, 'Sự tươi ngon của tôm kết hợp với xốt kem cà chua. The juiciness of fresh shrimps combined with delectable rosé sauce', 'Mì Ý Tôm xốt Kem Cà Chua / Pasta shrimp rose'),
(100000, 8, 56, 'Mang đến một vườn rau và rau với xốt dầu giấm đặc trưng. Garden salad with balsamic vinegar dressing', 'Salad Trộn Dầu Giấm / Garden salad with Balsamic vinegar dressing'),
(110000, 8, 57, 'Là sự kết hợp giữa rau bắp cải tím, táo, xà lách, trứng… và xốt Salad đặc biệt. Broccoli purple cabbage, apple mixed with boiled quail eggs and Salad sauce', 'Salad Đặc sắc / Signature salad'),
(247500, 9, 58, 'Xốt Phô Mai, Thịt Gà, Thịt Heo Muối, Phô Mai Mozzarella, Cà Chua/ Cheese Sauce, Mozzarella Cheese, Chicken Kicker, Bacon, Tomato', 'Pizza Gà Phô Mai Thịt Heo Xông Khói Cỡ 12\"/ Cheesy Chicken Bacon Pizza Size 12\"'),
(272500, 9, 59, 'Xốt Tiêu Đen, Phô Mai Mozzarella, Phô Mai Cheddar, Thơm, Hành Tây, Tôm, Mực/ Black Pepper Sauce, Mozzarella Cheese, Cheddar Cheese, Shrimp, Squid, Pineapple', 'Pizza Hải Sản Nhiệt Đới Xốt Tiêu Cỡ 12\"/ Pizzamin Sea Pizza Size 12\"'),
(272500, 9, 60, 'Xốt Cà Chua, Xốt Phô Mai, Phô Mai Mozzarella, Tôm, Thịt Bò Mexico, Cà Chua, Hành Tây/ Shrimp, Mexico Beef, Mozzarella Cheese, Tomato Sauce, Cheese Sauce, Tomato, Onion', 'Pizza Bò & Tôm Nướng Kiểu Mỹ Cỡ 12\"/ Surf & Turf Pizza Size 12\"'),
(272500, 9, 61, 'Xốt Cà Chua, Phô Mai Mozzarella, Xúc Xích Pepperoni, Thịt Dăm Bông, Xúc Xich Ý, Thịt Bò Viên, Thịt Heo Muối/ Mozzarella Cheese, Tomato Sauce, Bacon, Ham, Beef Cube, Italian Sausage, Pepperoni', 'Pizza 5 Loại Thịt Thượng Hạng Cỡ 12\"/ Meat Lovers Pizza Size 12\"'),
(375000, 9, 62, 'Bò BBQ, Xốt Bít Tết, Phô Mai Mozzarella, Nấm, Cà Chua, Hành, Kem Chua, Bột Rong Biển./ Beef BBQ, Steak Sauce, Mozzarella Cheese, Mushroom, Tomato, Onion, Sour Cream, Dried Seaweed.', 'Pizza Bò Beefsteak Phô Mai Kiểu New York Cỡ 12\"/ New York CheeseSteak Pizza Size 12\"'),
(50000, 9, 63, 'Domino\'s Pizza Garlic Breadsticks', 'Bánh Mì Nướng Bơ Tỏi/ Baked Garlic Butter Bread'),
(100000, 9, 64, 'Domino\'s Pizza Bolognese Pasta', 'Mỳ Ý Bò Bằm Đút Lò/ Bolognese Pasta'),
(40000, 10, 65, 'Quý khách gọi điện sdt trên nắp hộp, nếu đơn hàng thiếu sót, để quán hỗ trợ xử lý cho khách nhanh nhất, quán xin cảm ơn', 'Cháo Sườn Sụn Ruốc Quẩy'),
(40000, 10, 66, 'Quý khách gọi điện sdt trên nắp hộp, nếu đơn hàng thiếu sót, để quán hỗ trợ xử lý cho khách nhanh nhất, quán xin cảm ơn', 'Cháo Sườn Sụn Nấm Quẩy'),
(150000, 10, 67, '500g ( Ruốc nấm vị đặc trưng, khác hẳn so với các quán, không chất bảo quản )', 'Ruốc Nấm Nhà Làm'),
(50000, 10, 68, 'Quý khách gọi điện sdt trên nắp hộp, nếu đơn hàng thiếu sót, để quán hỗ trợ xử lý cho khách nhanh nhất, quán xin cảm ơn', 'Bún Trộn Bò Nam Bộ'),
(75000, 10, 69, '(10 chiếc)', 'Nem Chua Rán hộp to');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `food_menus`
--

CREATE TABLE `food_menus` (
  `food_id` bigint(20) NOT NULL,
  `id` bigint(20) NOT NULL,
  `menu_id` bigint(20) NOT NULL,
  `quantity` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `food_menus`
--

INSERT INTO `food_menus` (`food_id`, `id`, `menu_id`, `quantity`) VALUES
(1, 1, 1, 50),
(2, 2, 1, 20),
(3, 3, 1, 100),
(4, 4, 1, 100),
(5, 5, 1, 99),
(6, 6, 2, 20),
(7, 7, 2, 30),
(8, 8, 2, 49),
(9, 9, 2, 25),
(10, 10, 2, 35),
(11, 11, 2, 18),
(13, 13, 3, 85),
(14, 14, 3, 64),
(15, 15, 3, 73),
(16, 16, 3, 75),
(17, 17, 3, 100),
(18, 18, 3, 64),
(19, 19, 4, 73),
(20, 20, 4, 65),
(21, 21, 4, 99),
(22, 22, 4, 76),
(23, 23, 5, 96),
(24, 24, 5, 79),
(25, 25, 5, 58),
(26, 26, 5, 57),
(27, 27, 5, 53),
(28, 28, 5, 56),
(29, 29, 6, 50),
(30, 30, 6, 65),
(31, 31, 6, 51),
(32, 32, 6, 77),
(33, 33, 6, 55),
(34, 34, 6, 82),
(35, 35, 6, 77),
(36, 36, 6, 56),
(37, 37, 7, 99),
(38, 38, 7, 94),
(39, 39, 7, 95),
(40, 40, 7, 77),
(41, 41, 7, 57),
(42, 42, 7, 62),
(43, 43, 7, 71),
(44, 44, 7, 65),
(45, 45, 7, 91),
(46, 46, 8, 86),
(47, 47, 8, 52),
(48, 48, 8, 78),
(49, 49, 8, 65),
(50, 50, 8, 98),
(51, 51, 8, 98),
(52, 52, 8, 96),
(53, 53, 8, 71),
(54, 54, 8, 60),
(55, 55, 8, 64),
(56, 56, 8, 64),
(57, 57, 8, 63),
(58, 58, 9, 58),
(59, 59, 9, 60),
(60, 60, 9, 96),
(61, 61, 9, 75),
(62, 62, 9, 68),
(63, 63, 9, 95),
(64, 64, 9, 70),
(65, 65, 10, 67),
(66, 66, 10, 74),
(67, 67, 10, 74),
(68, 68, 10, 65),
(69, 69, 10, 70);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `invoices`
--

CREATE TABLE `invoices` (
  `is_current_on_table` int(11) NOT NULL,
  `by_user_id` bigint(20) NOT NULL,
  `created_time` datetime(6) DEFAULT NULL,
  `id` bigint(20) NOT NULL,
  `on_table_id` bigint(20) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `invoices`
--

INSERT INTO `invoices` (`is_current_on_table`, `by_user_id`, `created_time`, `id`, `on_table_id`, `status`) VALUES
(1, 3, '2024-04-17 15:23:16.000000', 1, 7, ''),
(1, 3, '2024-05-29 14:46:49.000000', 2, 53, ''),
(1, 3, '2024-06-04 11:45:34.000000', 3, 3, ''),
(1, 560, '2024-06-05 23:41:28.000000', 4, 57, ''),
(0, 3, '2024-06-06 09:24:15.000000', 5, 58, 'DELIVERED'),
(0, 3, '2024-06-16 18:39:19.000000', 6, 59, 'DELIVERED'),
(0, 566, '2024-06-18 12:31:33.000000', 7, 38, 'DELIVERED'),
(1, 3, '2024-06-18 16:33:50.000000', 8, 6, 'QUANTITY_CONFRIMED'),
(0, 566, '2024-06-19 15:54:17.000000', 9, 9, 'DELIVERED'),
(0, 571, '2024-06-19 16:31:47.000000', 10, 9, 'DELIVERED');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `invoice_items`
--

CREATE TABLE `invoice_items` (
  `by_user_id` bigint(20) NOT NULL,
  `food_id` bigint(20) NOT NULL,
  `id` bigint(20) NOT NULL,
  `order_id` bigint(20) NOT NULL,
  `quantity` bigint(20) DEFAULT NULL,
  `is_confirmed` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `invoice_items`
--

INSERT INTO `invoice_items` (`by_user_id`, `food_id`, `id`, `order_id`, `quantity`, `is_confirmed`) VALUES
(3, 6, 1, 1, 1, 1),
(6, 8, 2, 1, 1, 1),
(7, 9, 3, 1, 1, 1),
(570, 10, 4, 1, 3, 1),
(3, 7, 5, 1, 2, 1),
(569, 10, 6, 1, 1, 1),
(8, 11, 7, 1, 2, 1),
(571, 7, 8, 1, 3, 1),
(3, 9, 9, 1, 1, 1),
(3, 10, 10, 1, 1, 1),
(3, 1, 11, 3, 1, 1),
(3, 2, 12, 3, 1, 1),
(560, 46, 13, 4, 1, 1),
(560, 56, 14, 4, 1, 1),
(3, 46, 15, 5, 1, 1),
(569, 48, 16, 5, 2, 1),
(3, 48, 17, 4, 1, 1),
(3, 55, 18, 6, 1, 1),
(3, 56, 19, 6, 1, 1),
(566, 29, 20, 7, 1, 1),
(566, 31, 21, 7, 1, 1),
(3, 34, 22, 7, 2, 1),
(3, 36, 23, 7, 1, 1),
(3, 1, 24, 8, 1, 1),
(3, 3, 25, 8, 1, 1),
(566, 5, 26, 8, 2, 1),
(566, 6, 27, 9, 1, 1),
(566, 7, 28, 9, 1, 1),
(571, 11, 29, 9, 1, 1),
(571, 11, 30, 10, 2, 1),
(21, 8, 31, 10, 2, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `invoice_logging`
--

CREATE TABLE `invoice_logging` (
  `id` bigint(20) NOT NULL,
  `create_time` datetime NOT NULL,
  `on_invoice_id` bigint(20) NOT NULL,
  `logging_message` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `invoice_logging`
--

INSERT INTO `invoice_logging` (`id`, `create_time`, `on_invoice_id`, `logging_message`) VALUES
(1, '2024-04-17 15:23:16', 1, 'duongdk created the order'),
(2, '2024-06-03 14:59:51', 1, 'duongdk has confirmed quantity'),
(3, '2024-06-03 15:05:01', 1, 'Warren DT has confirmed quantity'),
(4, '2024-06-03 15:06:45', 1, 'James Butt has confirmed quantity'),
(5, '2024-06-03 15:19:36', 1, 'Trang has confirmed quantity'),
(6, '2024-06-03 15:27:46', 1, 'trungtv has confirmed quantity'),
(7, '2024-06-03 15:28:56', 1, 'dungnn has confirmed quantity'),
(8, '2024-06-03 15:29:35', 1, 'Voi Ban Don has confirmed quantity'),
(9, '2024-06-03 15:31:48', 1, 'duongdk has confirmed quantity'),
(10, '2024-06-04 11:47:33', 3, 'duongdk has confirmed quantity'),
(11, '2024-06-05 23:41:28', 4, 'LyLy created the order'),
(12, '2024-06-06 09:24:16', 5, 'duongdk created the order'),
(13, '2024-06-06 09:26:39', 5, 'duongdk has confirmed quantity'),
(14, '2024-06-06 09:27:03', 5, 'Voi Ban Don has confirmed quantity'),
(15, '2024-06-11 12:29:16', 4, 'duongdk has confirmed quantity'),
(16, '2024-06-11 12:29:31', 4, 'LyLy has confirmed quantity'),
(17, '2024-06-12 19:47:36', 4, 'lyly has ordered successfull.'),
(18, '2024-06-16 00:08:16', 5, 'thepizzacompanyadmin has confirmed order'),
(19, '2024-06-16 18:39:19', 6, 'duongdk created the order'),
(20, '2024-06-17 08:30:44', 5, 'Order has been delivered to customer.'),
(21, '2024-06-18 10:38:17', 6, 'duongdk has confirmed quantity'),
(22, '2024-06-18 12:14:15', 6, 'duongdk has ordered successfull.'),
(23, '2024-06-18 12:25:05', 6, 'thepizzacompanyadmin has confirmed order'),
(24, '2024-06-18 12:25:07', 6, 'Order has been delivered to customer.'),
(25, '2024-06-18 12:31:33', 7, 'WEAN created the order'),
(26, '2024-06-18 12:34:51', 7, 'duongdk has confirmed quantity'),
(27, '2024-06-18 12:35:06', 7, 'WEAN has confirmed quantity'),
(28, '2024-06-18 12:48:07', 7, 'WEAN has ordered successfull.'),
(29, '2024-06-18 12:48:26', 7, 'bumtroadmin has confirmed order'),
(30, '2024-06-18 12:48:28', 7, 'Order has been delivered to customer.'),
(31, '2024-06-18 12:48:39', 7, 'WEAN has ordered successfull.'),
(32, '2024-06-18 16:33:50', 8, 'duongdk created the order'),
(33, '2024-06-18 16:35:54', 8, 'WEAN has confirmed quantity'),
(34, '2024-06-18 16:35:58', 8, 'duongdk has confirmed quantity'),
(35, '2024-06-19 15:54:17', 9, 'WEAN created the order'),
(36, '2024-06-19 15:55:11', 9, 'WEAN has confirmed quantity'),
(37, '2024-06-19 15:55:18', 9, 'Warren DT has confirmed quantity'),
(38, '2024-06-19 16:17:31', 9, 'comNieuSingapore_admin has confirmed order'),
(39, '2024-06-19 16:17:34', 9, 'Order has been delivered to customer.'),
(40, '2024-06-19 16:31:48', 10, 'Warren DT created the order'),
(41, '2024-06-19 16:34:02', 10, 'Warren DT has confirmed quantity'),
(42, '2024-06-19 16:34:21', 10, 'Graciela Ruta has confirmed quantity'),
(43, '2024-06-19 16:38:39', 10, 'comNieuSingapore_admin has confirmed order'),
(44, '2024-06-19 16:38:50', 10, 'Order has been delivered to customer.');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menus`
--

CREATE TABLE `menus` (
  `is_current` bit(1) DEFAULT NULL,
  `created_time` datetime(6) DEFAULT NULL,
  `id` bigint(20) NOT NULL,
  `store_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `menus`
--

INSERT INTO `menus` (`is_current`, `created_time`, `id`, `store_id`) VALUES
(b'1', '2023-12-03 08:00:00.000000', 1, 1),
(b'1', '2024-01-02 07:00:00.000000', 2, 2),
(b'1', '2024-04-23 08:00:00.000000', 3, 3),
(b'1', '2024-04-23 09:00:00.000000', 4, 4),
(b'1', '2024-04-16 11:00:00.000000', 5, 5),
(b'1', '2024-04-22 09:00:00.000000', 6, 6),
(b'1', '2024-04-23 10:00:00.000000', 7, 7),
(b'1', '2024-04-21 09:00:00.000000', 8, 8),
(b'1', '2024-04-21 12:00:00.000000', 9, 9),
(b'1', '2024-04-19 23:07:00.000000', 10, 10);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oder_items`
--

CREATE TABLE `oder_items` (
  `food_id` bigint(20) NOT NULL,
  `id` bigint(20) NOT NULL,
  `order_id` bigint(20) NOT NULL,
  `quantity` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `oder_items`
--

INSERT INTO `oder_items` (`food_id`, `id`, `order_id`, `quantity`) VALUES
(1, 1, 1, 2),
(2, 2, 1, 3),
(3, 3, 2, 2),
(4, 4, 2, 3),
(6, 5, 3, 2),
(7, 6, 3, 3),
(8, 7, 3, 1),
(9, 8, 3, 1),
(10, 9, 3, 1),
(11, 10, 3, 1),
(8, 11, 4, 1),
(9, 12, 4, 3),
(1, 13, 5, 1),
(2, 14, 5, 1),
(1, 15, 6, 1),
(2, 16, 6, 1),
(1, 17, 7, 1),
(2, 18, 7, 1),
(46, 19, 8, 1),
(48, 20, 8, 2),
(48, 21, 9, 1),
(56, 22, 9, 1),
(46, 23, 9, 1),
(55, 24, 10, 1),
(56, 25, 10, 1),
(36, 26, 11, 1),
(34, 27, 11, 2),
(31, 28, 11, 1),
(29, 29, 11, 1),
(34, 30, 12, 2),
(31, 31, 12, 1),
(29, 32, 12, 1),
(36, 33, 12, 1),
(6, 34, 13, 1),
(11, 35, 13, 1),
(7, 36, 13, 1),
(8, 37, 14, 2),
(11, 38, 14, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `total` float NOT NULL,
  `by_user_id` bigint(20) NOT NULL,
  `id` bigint(20) NOT NULL,
  `on_table_id` bigint(20) NOT NULL,
  `order_time` datetime(6) DEFAULT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`total`, `by_user_id`, `id`, `on_table_id`, `order_time`, `status`) VALUES
(225000, 3, 1, 1, '2024-04-17 15:23:15.000000', 'PAID'),
(300000, 3, 2, 3, '2023-12-30 15:26:00.000000', 'PAID'),
(787500, 6, 3, 11, '2024-04-17 15:23:16.000000', 'PAID'),
(320000, 7, 4, 16, '2023-12-30 15:26:00.000000', 'PAID'),
(87500, 3, 5, 3, '2024-06-06 07:48:24.000000', 'PAID'),
(87500, 3, 6, 3, '2024-06-06 07:49:44.000000', 'PAID'),
(87500, 3, 7, 3, '2024-06-06 07:51:24.000000', 'PAID'),
(480000, 3, 8, 58, '2024-06-06 09:30:14.000000', 'DELIVERED'),
(427500, 560, 9, 57, '2024-06-12 19:47:36.000000', 'PAID'),
(225000, 3, 10, 59, '2024-06-18 12:14:15.000000', 'DELIVERED'),
(325000, 566, 11, 38, '2024-06-18 12:48:07.000000', 'DELIVERED'),
(325000, 566, 12, 38, '2024-06-18 12:48:39.000000', 'DELIVERED'),
(230000, 566, 13, 9, '2024-06-19 16:13:33.000000', 'DELIVERED'),
(285000, 571, 14, 9, '2024-06-19 16:37:45.000000', 'DELIVERED');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `payments`
--

CREATE TABLE `payments` (
  `amount` float NOT NULL,
  `id` bigint(20) NOT NULL,
  `order_id` bigint(20) NOT NULL,
  `payment_time` datetime(6) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `by_user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `payments`
--

INSERT INTO `payments` (`amount`, `id`, `order_id`, `payment_time`, `status`, `by_user_id`) VALUES
(225000, 1, 1, '2024-04-17 15:23:15.000000', 'SUCCESSFULL', 3),
(300000, 2, 2, '2023-12-30 15:26:00.000000', 'SUCCESSFULL', 3),
(787500, 3, 3, '2024-04-17 15:23:16.000000', 'SUCCESSFULL', 6),
(320000, 4, 4, '2023-12-30 15:26:00.000000', 'SUCCESSFULL', 7),
(87500, 5, 5, '2024-06-06 07:48:24.000000', 'SUCCESSFULL', 3),
(87500, 6, 6, '2024-06-06 07:49:44.000000', 'SUCCESSFULL', 3),
(87500, 7, 7, '2024-06-06 07:51:24.000000', 'SUCCESSFULL', 3),
(175000, 8, 8, '2024-06-06 09:30:14.000000', 'SUCCESSFULL', 3),
(305000, 9, 8, '2024-06-06 09:30:14.000000', 'SUCCESSFULL', 569),
(275000, 10, 9, '2024-06-12 19:47:36.000000', 'SUCCESSFULL', 560),
(152500, 11, 9, '2024-06-12 19:47:36.000000', 'SUCCESSFULL', 3),
(225000, 12, 10, '2024-06-18 12:14:15.000000', 'SUCCESSFULL', 3),
(205000, 13, 11, '2024-06-18 12:48:07.000000', 'SUCCESSFULL', 3),
(120000, 14, 11, '2024-06-18 12:48:07.000000', 'SUCCESSFULL', 566),
(120000, 15, 12, '2024-06-18 12:48:39.000000', 'SUCCESSFULL', 566),
(205000, 16, 12, '2024-06-18 12:48:39.000000', 'SUCCESSFULL', 3),
(230000, 17, 13, '2024-06-19 16:13:33.000000', 'SUCCESSFULL', 566),
(285000, 18, 14, '2024-06-19 16:37:45.000000', 'SUCCESSFULL', 571);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `restaurant_rate`
--

CREATE TABLE `restaurant_rate` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `restaurant_id` bigint(20) DEFAULT NULL,
  `rating` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `restaurant_rate`
--

INSERT INTO `restaurant_rate` (`id`, `user_id`, `restaurant_id`, `rating`) VALUES
(1, 251, 6, 5),
(2, 364, 7, 5),
(3, 451, 3, 1),
(4, 366, 6, 2),
(5, 399, 4, 2),
(6, 59, 3, 5),
(7, 165, 6, 2),
(8, 208, 6, 1),
(9, 461, 3, 2),
(10, 222, 8, 4),
(11, 335, 2, 1),
(12, 236, 8, 4),
(13, 205, 10, 4),
(14, 107, 4, 5),
(15, 291, 6, 2),
(16, 393, 2, 2),
(17, 122, 2, 1),
(18, 141, 8, 4),
(19, 238, 2, 5),
(20, 273, 7, 1),
(21, 378, 6, 2),
(22, 113, 9, 1),
(23, 425, 2, 2),
(24, 304, 8, 1),
(25, 183, 4, 4),
(26, 393, 2, 4),
(27, 46, 8, 2),
(28, 437, 3, 4),
(29, 332, 3, 5),
(30, 287, 2, 5),
(31, 424, 9, 4),
(32, 361, 2, 1),
(33, 429, 3, 4),
(34, 238, 10, 3),
(35, 509, 9, 2),
(36, 110, 4, 4),
(37, 57, 6, 3),
(38, 408, 4, 3),
(39, 387, 9, 1),
(40, 463, 10, 5),
(41, 205, 6, 4),
(42, 314, 10, 4),
(43, 276, 2, 4),
(44, 127, 4, 4),
(45, 346, 9, 2),
(46, 35, 1, 4),
(47, 316, 4, 4),
(48, 324, 2, 5),
(49, 382, 4, 1),
(50, 468, 6, 4),
(51, 34, 7, 4),
(52, 92, 3, 5),
(53, 178, 6, 4),
(54, 315, 7, 1),
(55, 292, 3, 4),
(56, 491, 9, 4),
(57, 417, 7, 3),
(58, 110, 8, 1),
(59, 467, 6, 2),
(60, 142, 1, 5),
(61, 101, 7, 2),
(62, 9, 7, 4),
(63, 159, 5, 5),
(64, 3, 7, 2),
(65, 29, 2, 5),
(66, 280, 9, 1),
(67, 224, 5, 1),
(68, 511, 8, 5),
(69, 185, 9, 5),
(70, 404, 10, 1),
(71, 295, 2, 4),
(72, 510, 10, 2),
(73, 55, 2, 5),
(74, 512, 6, 3),
(75, 365, 2, 3),
(76, 354, 5, 2),
(77, 154, 2, 1),
(78, 223, 2, 5),
(79, 328, 4, 5),
(80, 69, 5, 5),
(81, 475, 1, 4),
(82, 232, 5, 3),
(83, 86, 6, 4),
(84, 387, 2, 4),
(85, 407, 6, 1),
(86, 177, 3, 3),
(87, 276, 10, 3),
(88, 435, 10, 1),
(89, 3, 8, 3),
(90, 430, 8, 2),
(91, 76, 9, 5),
(92, 243, 7, 4),
(93, 495, 10, 2),
(94, 352, 4, 1),
(95, 399, 9, 4),
(96, 43, 4, 3),
(97, 479, 3, 5),
(98, 511, 7, 2),
(99, 302, 3, 5),
(100, 377, 9, 3),
(101, 295, 7, 5),
(102, 291, 4, 3),
(103, 170, 2, 1),
(104, 33, 8, 5),
(105, 401, 6, 2),
(106, 148, 9, 2),
(107, 8, 1, 5),
(108, 183, 5, 5),
(109, 356, 6, 5);

--
-- Bẫy `restaurant_rate`
--
DELIMITER $$
CREATE TRIGGER `after_insert_rating_trigger` AFTER INSERT ON `restaurant_rate` FOR EACH ROW BEGIN
    DECLARE current_rating DOUBLE;
    DECLARE cur_rating_count INT;

    -- Get the current rating and rating count for the restaurant
    SELECT rating, rating_count INTO current_rating, cur_rating_count 
    FROM stores 
    WHERE id = NEW.restaurant_id;
    
    -- Calculate the new rating
    SET @new_rating = (current_rating * cur_rating_count + NEW.rating) / (cur_rating_count + 1);
    
    -- Update the restaurant table
    UPDATE stores 
    SET rating = @new_rating, rating_count = cur_rating_count + 1 
    WHERE id = NEW.restaurant_id;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `short_videos`
--

CREATE TABLE `short_videos` (
  `id` bigint(20) NOT NULL,
  `text` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `tymCount` int(11) NOT NULL,
  `playCount` int(11) NOT NULL,
  `commentCount` int(11) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `duration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `short_videos`
--

INSERT INTO `short_videos` (`id`, `text`, `tymCount`, `playCount`, `commentCount`, `user_id`, `duration`) VALUES
(6875317312082201857, 'Achter de schermen nee ging niet in 1 keer goed. #fy #fypageシ #foryou #voorjou #behindthescene #soccer #voetbal #', 1783, 202900, 4, 426, 7),
(6875323773755657474, 'Makkelijk afvallen? #fatloss #gezond #fitness #fitdutchie #fitdutch  #vetverbranding #sportschool', 1086, 48000, 29, 15, 15),
(6875342937002085633, 'Daarom heb ik geen modelface. ? fy #fyp #model #modelface #50plusontiktok', 49400, 376400, 123, 8, 7),
(6875370613523909890, 'Reply to @mvo97 #gains #bodybuilding #training', 389, 22000, 19, 297, 5),
(6875373441432816898, 'Awkwardn', 9387, 64800, 161, 268, 9),
(6875378565614013697, 'En dan vervolgens gwn een halfuur zo op je bed blijft ligge, dan weet je dat je heerlijk hebt getrained #training #uitgeput #moe #thuiskomen #temoe', 6127, 179000, 111, 256, 7),
(6875394675985992966, '#duet with @pugthegoat #foryoupage #fyp #foryou #powerlifting #bodybuilding #deadlift #fitness #workout #fittok #powertok', 5858, 196400, 81, 157, 7),
(6875405441472498949, 'Reply to @jessca4765 #foryoupage #fyp #foryou #powerlifting #bodybuilding #deadlift #fitness #workout #fittok #powertok', 9630, 118700, 65, 312, 55),
(6875436892226178305, 'theres no where near enough appreciation for this man #Haikyuu #ennoshita #animes #animee #animeedit #cool #fyp #foryou #4u #animeboy #haikyuuedit', 34100, 155500, 204, 32, 33),
(6875453919879908614, 'Frindships #catocade #shuffle #dance', 23400, 495800, 331, 198, 15),
(6875468410612993286, 'Quiet Zone... follow me on insta: joeysofo. Comment where you wanna see me blade next. Reply to @dwight_schnuute', 55700, 838100, 936, 218, 11),
(6875528457388903681, '???', 890, 32000, 2, 411, 15),
(6875621663564680450, 'So proud of how far Enzo has come... what do you guys think? #horse #eventing #training #equestrian #horsegirl', 30400, 201400, 60, 481, 9),
(6875639469563759873, '#POV: Je wilt niet dat je ex je ziet op een feestje en vraagt mij om hulp.. #voorjou #tiktoknl #viraal #ios14', 5805, 47300, 110, 461, 15),
(6875651291343883522, 'I think my mom hates me now ?#backyard #project #pool #johndeere #onabudget #foryou #fyp', 104300, 2600000, 734, 57, 16),
(6875691073499352321, 'Reply to @t.and.d', 7326, 127900, 141, 137, 15),
(6875739742340762885, 'Reply to @caden.wappler #foryoupage #fyp #foryou #powerlifting #bodybuilding #benchpress #fitness #workout #fittok #powertok', 9469, 209700, 304, 247, 10),
(6875749962681044230, '⚠️Warning⚠️ ❄️ and hypocrites inbound #fyp #gym #lift #workout #pr #viral #motivation', 5494, 119700, 213, 433, 14),
(6875862825932180738, 'මගේ උන් එක්ක අන්තිම වේනකල් බලන්න #ish @dope_adhi.10.08 @dope_japana', 9773, 60700, 105, 343, 15),
(6875872124968439046, 'Reply to @dolphinarms #foryoupage #fyp #foryou #powerlifting #bodybuilding #deadlift #fitness #workout #fittok #powertok', 3932, 66100, 71, 506, 46),
(6876007447883042050, 'DRZ400SM ❤#Drz #fyp #followyou #fypシ', 2914, 23300, 19, 339, 10),
(6876130849683770625, 'කොල්ලෝ 2?? අපිට සද්දේ දාලා උන් දෙන්නාට රිටන් එක දෙන්න ඔං?? ගියා ......මුන් දෙන්නා පාරේ මැද්දේ කියහන්කෝ ....???', 2992, 61300, 27, 404, 17),
(6876145412105899265, 'De trend na doen toch ?? ???#volleybal #training #laat #temelig', 1805, 64400, 57, 336, 11),
(6876156631651077381, 'Reply to @annikasuenner Stress acne for the win ???', 157700, 821200, 1314, 222, 39),
(6876245387871587590, 'Still keep track of your calories! #fyp #abs #abworkout #homeworkout #foryou #viral #xyzbca #tiktok #fitnesstips #bulking #tiktokwellness', 23200, 462600, 102, 183, 20),
(6876262384093236485, 'Along with a calorie deficit this workout is gonna help you get those abs popping! #abs #aesthetics #fatloss #FeelingGood #fit #abworkout', 4271, 86100, 17, 409, 8),
(6876318382703070465, 'ඔන්න අද මගේ GF පෙන්නනවා,ලස්සනයි ද කියන්න බලන්න ??පළමු වතාවට මගේ GF පෙන්නන්නෙ හැබැයි අන්තිමට', 6126, 74700, 188, 477, 15),
(6876320502848261378, 'Boat boat ?foryou❤️Mujhe bhi famous hona hai✌️#foryoupage #trending #slowmo #transition', 801, 8223, 34, 133, 14),
(6876369534018669825, 'oops... #fyp #foryou', 7045, 46800, 232, 318, 20),
(6876374255974501633, 'Rate It 1/10', 365600, 5100000, 2765, 262, 10),
(6876417380151479553, 'Learning to say goodbye in #Dutch ??', 229800, 2400000, 5260, 311, 18),
(6876422232772578561, 'Reply to @stefan._77  I completely ruined my backyard? #backyard #project #pool #foryou #fyp', 18900, 189800, 77, 16, 10),
(6876512902929599745, 'Cuando tu novia es celosa ? #foryou #1m #b', 199600, 1000000, 387, 312, 12),
(6876603307708665093, 'Please blow this up so that my dad doesn’t make me delete it hahah #foryoupage #fyp #foryou #cheatonmeidareyou  #greenscreenvideo #VibeWithUs', 8135, 58000, 250, 152, 29),
(6876643374548438274, 'හම්මෝ ඒක ??? #tharusha_shamal #rastha_lions #boodle_gang #tiktok #foryou #foryoupage #comedy #funny #', 2408, 19400, 148, 314, 35),
(6876645435625262338, 'Thank you for 40K! ? | #canada #foryoupage #fyp #foryou #4u #viral #transition #transitions #transitioner #lipsync #trend #trending', 3965, 26200, 75, 134, 15),
(6876674985746795778, '?weekend', 2485, 26100, 23, 91, 26),
(6876716527186382081, 'La caminata de los 80, hazlo viral. #viral #caminatadelos80 #baile', 1714, 23600, 141, 451, 15),
(6876760427229957377, 'Será que temos estilo?? #horadearrasar #diadecao #bulldogfrances #frenchie', 2961, 83200, 38, 331, 13),
(6876787355181665537, 'Rekenwonder ? || #tiktoknederland #rekenen #couplesoftiktok #prank', 20600, 558900, 87, 432, 37),
(6876805952117558529, 'Wie zou er op mij stemmen als premier??? tag iemand die te veel eet ? #ronanvdloo #volgderegels #ikdoemee #fy #fyp', 17100, 119000, 241, 48, 58),
(6876827705950752005, 'horse show#foryoupage #horse #show #grasslands #competition #fyp #movement', 127000, 3900000, 1887, 507, 21),
(6876835225989664002, 'That got shakey #fyp #fitness #gym #squat #powerlifting #powerliftingmotivation', 153600, 1500000, 1473, 474, 21),
(6876857501397159170, 'Reply to @zachralph I can’t seem to find them #lats #backmuscles #wheretheyat #MIA', 587, 52100, 19, 95, 5),
(6876860979787959554, '#fy #voorjou #foryou #fördich #covid #quarantine', 36500, 865000, 315, 246, 13),
(6876862444988402945, '', 6015, 49600, 64, 39, 11),
(6877036154982616321, 'end miss NH karna #foryou #foryoupage #fyp #satndwihkashmir #fyp #sameerkahn', 198, 1896, 4, 53, 15),
(6877149710428245249, '', 826, 16400, 5, 430, 8),
(6877167604100910337, 'Top oefeningen voor grotere schouders ? #shoulders #shoulder #motivation #viral #workout #foryourpage #foryou #shoulderworkout #tips', 6940, 136600, 81, 145, 28),
(6877178763474423041, 'Os PIORES signos para namorar! Qual é o seu? #foryou #foryoupage #lgbtq #horadearrasar #signos #signoszodiacales', 1868, 12100, 263, 354, 15),
(6877179236386376961, 'huisgemaakte katjang! #foryou #fyp #voorjou #broodje #eten #koken #schnitzel #cooking #foodporn #vj #anythingface #foodie #food #youbetterrun #fypシ', 25900, 620300, 579, 438, 59),
(6877182502390353153, 'Based on true events... (idee van @emmakeuven )', 44200, 419500, 416, 96, 11),
(6877191692341054721, '#foryou #foryoupage', 13300, 129300, 111, 10, 13),
(6877219156186500354, 'Donde quedo ? ?? #1m #friends', 156800, 584700, 216, 187, 12),
(6877251331145370881, 'Riding that moment of euphoria before  the??#crossfit #training #fitness #trainingmotivation', 575, 32800, 8, 164, 9),
(6877301356101782785, 'Nasty burn with these #fyp #foryou #foryoupage #gymshark #fitness #bodybuilder #gains #workout #legday', 1957, 45000, 46, 138, 51),
(6877337975030598917, 'Reply to @jakedyang #checkitout', 5449, 63700, 131, 140, 37),
(6877411003160694017, '', 1759, 27800, 7, 364, 14),
(6877458289978821889, 'Ever seen a 6 foot 8 man try and shuffle ???? #shuffle #giraffe #smoothcriminal', 607600, 7400000, 7523, 502, 15),
(6877473712652799234, 'Fair decision? Let us know!!! #formulaone #lewishamilton #f1 #fyp #formula1', 1283, 59400, 116, 132, 6),
(6877530962742217985, 'Break some ankles in FIFA 21. ? #FIFA21 #FIFASkills', 116400, 2700000, 347, 147, 13),
(6877606750900538626, '#fy #fyp', 67300, 1700000, 424, 55, 13),
(6877726677334510849, 'It isn’t just for lazy trouts #fyp #foryou #foryoupage #fitness #supplements #gains #gymshark #bodybuilder #preworkout', 3504, 51200, 122, 159, 51),
(6877747486451043590, 'Reply to @bodobodolikesu #wwe #therock #anime #animes #animegirl #weeb #otaku #manga #secretanimesociety #bnha #mha #naruto #dbz #haikyuu #fyp #vs #W', 32200, 123900, 2186, 357, 53),
(6877774951361875201, 'Can\'t wait to compete this weekend ❤ #horse #riding #equestrian #fyp #ToMyBestFriend #petthings #competition #rider #crosscountry', 9254, 64700, 22, 110, 8),
(6877789463221947650, '#paint #easydraw #childrendrawing', 8348, 634300, 26, 427, 13),
(6877796349459336450, '', 1091, 9247, 15, 139, 41),
(6877816601308073218, '#teamychelle #teamrene #fatherdaughter #viral #atjevoordesfeer #fyp #voorjou #groenebril @ychellekarst #tarwesmoothie', 17400, 251700, 66, 378, 25),
(6877869447999245569, 'Let’s get those boulder shoulders fellas ? #bodybuilding #homeworkouts #workout #fitness #gym #physique', 23200, 332900, 124, 240, 15),
(6877981740690935041, '', 13, 465, 0, 113, 14),
(6878138606205029634, '? Again stop flaring out your elbows to the side during pushups! Avoid #shoulderinjury and #elbowpain #pushups #pushup #pushupform #chestday #chest', 98100, 3400000, 153, 159, 8),
(6878165800902085890, '#kawaii# payton# addisonre# #queen #song #ninja# #wwe# use #funny#ozuna ##funny# video# like #karo##@naseer_baloch_006#@rashidkh@balochisking05', 288, 4100, 16, 319, 15),
(6878231837710372098, 'Hand break ??', 3450, 29200, 14, 31, 10),
(6878254482698816770, 'සතියකට හරියන්න ගුටි කෑවා ? #comedy #sampa', 1055, 22200, 4, 285, 19),
(6878259877353966850, 'sing this one with me! When the party’s over #BillieEilish #fyp #foryou #singingduet #duet #singing #singersoftiktok #singers', 10600, 145100, 101, 413, 58),
(6878282456382835973, '#duet with @moomie.pie #foryoupage #fyp #foryou #powerlifting #bodybuilding #deadlift #fitness #workout #fittok #powertok', 4703, 89600, 36, 227, 12),
(6878300825932860674, 'Having the best time here #greece #voorjou #fyp #fitdutchies', 16600, 251100, 76, 230, 5),
(6878330292701121794, '#nlunatics #yinyang_fantasyworld #terrorkanita #minions #stitch #hat #_littlestitch #comedy #makeyoulaugh #haveaniceday', 426700, 5500000, 4368, 252, 15),
(6878340953933876482, 'Are u beating them if they do this? #anime #weebs #animeboy #animeedit #anime4life #kakashi #gon #rocklee #naruto #foryoupage #xyzbca', 8283, 63700, 119, 475, 21),
(6878404258367163654, 'I can see your ?', 136200, 1100000, 934, 314, 23),
(6878457763668823298, 'Might’ve made a ✨gain✨ that day #fyp #foryou #foryoupage #fitness #workout #gymshark #bodybuilder #gains', 1415, 28600, 46, 229, 31),
(6878510237784083713, '', 1915, 9667, 10, 289, 15),
(6878517470894836998, '#fyp #lifting #fitness #motivation #foryou #disrespectyoursurroundings', 5845, 117500, 112, 340, 39),
(6878531534303857922, '#izabella #izabellavoldigoad #themisfitofdemonkingacademy #misfitofdemonacademy #anosvoldigoad', 1744, 11300, 12, 116, 12),
(6878590867968380162, 'EN GEEN SNOEP KOPEN! #mama #moeders #moeder #pinpas #boodschap #voorjou #foryou #fyp #foryoulage #appie #makraak', 33000, 327900, 156, 505, 33),
(6878601415150062850, '', 5858, 102600, 98, 235, 10),
(6878650367668653314, 'Reply to @dmckevitt - those who know, know. Those who don’t, should. #opinion #preference #politics #goat', 1723, 26900, 68, 113, 15),
(6878665609870052610, 'Vandaag stond ik in het AD Rotterdams Dagblad en online ? was erg leuk om te doen! #fy #fyp #foryou #foryoupage #buschauffeuse #hoekschewaard #bus ?', 2802, 58900, 50, 327, 14),
(6878668790503116038, '@skywalker87x @donalemiles #army #military #help #usarmy #veteran #AltRocktober #OikosOneTrip #marines #fyp #foryou', 14700, 102900, 1112, 507, 57),
(6878676626108992769, 'Do you Accept this challenge? #pushup #challenge #workout #duet #workoutfromhome credits: @jpark_fit', 21800, 159000, 170, 80, 26),
(6878710443926473986, '50k likes and I’ll do it #bodybuilding #fyp #xyzbca #gym #tiktoksouthafrica', 13800, 155000, 142, 315, 5),
(6878715680728911106, 'Peter Parker heeft een nieuw gezicht gekregen in de remaster van Spider-Man voor PS5 #spiderman #ps5', 3412, 35500, 128, 219, 29),
(6878719985535962369, 'Test #slowmo #WinWithASmile #transisi #transition #transitions #slowmotion #slow #tiktok #tiktokindo #viral #virall #tutorial #fypchallenge  #fyp', 1319, 25800, 14, 146, 18),
(6878751105589824770, '#fyp #lift #gymprogress #gym', 580, 85600, 0, 222, 7),
(6878791400289225985, '#voiceeffects', 2397, 211800, 37, 336, 7),
(6878794517391150337, 'Life’s rough sometimes but you just have to keep grinding. #weightlossprogress #weightlosstransformation #wlsjourney  #weightlossjournal #wls', 2598, 50300, 66, 69, 11),
(6878796954650889473, 'AMANE,AMANE ?✌️#edit #anime #hanakokun #tsukasa #wap #charlie #animeedit #fyp #no #viral #xyzbca #wap #hanakokun #tsukasa #wap #tsukasa #hanakokun', 43400, 152400, 702, 79, 23),
(6878834531911224577, 'Hope this changes your life #fyp #foryou #foryoupage #fitness #gymshark #bodybuilder #nutrition #diet', 1650, 30100, 37, 33, 41),
(6878841351916637441, 'My triceps suck but these have helped #fyp #foryou #foryoupage #fitness #gymshark #naruto #bodybuilder #strength', 4304, 49300, 47, 2, 29),
(6878961920859262210, 'Nummer 1 trending op YouTube met Papaaaa! ???❤️', 19600, 149500, 150, 287, 9),
(6878973704689175809, 'Oeps daar ging de lepel ? #foryou #fyp #voorjou #dontputtheblameonme #foryoupage #fun #tiktok', 2031, 110300, 59, 327, 6),
(6879000638458449153, '???#magikbijjouslapen#love#nederland#fyp#foryoupage#foryou#tiktok#viral#voorjou#like#just4fun#follow#followback#vj#fy#dutch#fypシ', 218, 3313, 18, 330, 8),
(6879022410528541953, 'You can watch me! ??', 11100, 143000, 491, 398, 12),
(6879055195330858245, 'Take it day by day! #foryoupage #fyp #foryou #powerlifting #bodybuilding #squat #fitness #workout #fittok #powertok', 6858, 78500, 169, 424, 36),
(6879055868676132097, 'Is moraine lake on your bucket list? #alberta #canada #travelcanada #travelalberta #banff #morainelake', 86900, 654200, 694, 188, 10),
(6879086409496497410, 'Het is Dennis vergeven, maar ik zal dit nooit vergeten ?', 4194, 215600, 73, 194, 11),
(6879123852467768581, 'https://www.advancedhumanperformance.com/ #powerlifting #benchpress #floorpress #powerlifter #powerlifting #powerlift #fitness #workout #strong', 3372, 226700, 56, 492, 17),
(6879192624402582790, 'I can’t even @_thelifeofmikey  #spookyseason #foryoupage #fyp #CTCVoiceBox #DayInMyLife #OikosOneTrip #strapback #beconvincing #altrocktober #scare', 311800, 2200000, 1344, 458, 7),
(6879222014880664833, 'Thank you for your concern #fyp #foryou #foryoupage #cooking #chef #diet #nutrition #gymshark #DayInMyLife #workout #bodybuilder', 1100, 30100, 63, 370, 14),
(6879223075980741889, 'Reply to @user28254092  හැමොගෙම දැඩි ඉල්ලිම පරිදි ඔන්න full video එක දැම්මා ??❤❤❤', 2746, 24900, 58, 95, 59),
(6879407225769692418, '? #fy #foryou #voorjou #dance #viral #4u', 5479, 79000, 95, 449, 15),
(6879439037619342598, 'I blocked my kryptonite so it\'s over for you mfs (vote blue btw) #fyp #foryou #foryoupage #CollegeGotMeLike #Duet #CTCVoiceBox #StrapBack', 22500, 99900, 354, 259, 14),
(6879439535726529794, 'Mood ? @norilouise #fy #fyp #voorjou #2020 #breakdown #lol #bestfriend', 33800, 429100, 473, 222, 15),
(6879440891853982978, '#horadearrasar', 23000, 66600, 186, 252, 13),
(6879452591953153282, '#destacame #animeedit #viral #fyp #hanakokun #bakugo #bokunohero #manga #anime #husbando #naruto #nanatzunotaizay', 48700, 154600, 970, 113, 19),
(6879476802050460934, 'wow just wow ? #naruto #narutoedits #kakashi #easteregg #anime #obito #animeedit #foryou #fyp', 309900, 1500000, 2003, 261, 36),
(6879699550303538434, '', 1411, 18700, 27, 262, 14),
(6879703604249332993, '#❤️', 2018, 25100, 2, 349, 22),
(6879705053884697858, '#life #is #a #beautiful? #story', 3347, 55100, 0, 346, 10),
(6879724138114665730, 'Typisch Spaans ?? eten proeven deel 1 ? Zou jij dit lekker vinden of niet? ? met @dvlsantiago', 7996, 98700, 29, 425, 31),
(6879756807481363714, '#not #twisting #hand', 4673, 246700, 12, 34, 8),
(6879769716567657730, '#foryou #cheese #cheddar #fy', 83700, 1200000, 1501, 18, 17),
(6879772200065436929, 'Dejo el POV en sus manos xd(créditos a @..aguadeuwu ) #anime #animeedit #yumeko #billieeilish #bakugou #shoto #iidatenya #uraraka', 11500, 47500, 212, 164, 21),
(6879809686552530178, '#team07 #gym #elsa #11 #tiktok #foryou #oneday #onemillonaudition #fallow @shashini820 @sehanimaleesha @_viden_run_ @lakiya25 @sada_gril', 12000, 170500, 942, 123, 7),
(6879837374927490306, 'මගේ බෲනෝ මැණිකගේ තාත්තා ARROW ?', 4945, 60800, 14, 433, 46),
(6879842043880017154, 'AHHAHAHA #timewarpscan #drunkface', 7868, 130100, 87, 182, 9),
(6879844969687878914, 'Ofc there\'s much more, but these are the basics - when done right will get you results ? #fitness #diet #training', 1016, 56700, 31, 214, 13),
(6879871451772620033, 'Who should I do for part 3? #anime #animeedit #naruto #narutoshippuden #guysensei #kakashi #foryoupage #xyzbca', 14700, 90200, 143, 449, 23),
(6879902533876337925, 'Reply to @man_myth_legend0 #foryoupage #fyp #foryou #powerlifting #bodybuilding #squat #fitness #workout #fittok #powertok', 15100, 139100, 99, 378, 58),
(6879933206460648706, 'Antwoorden aan @seereenmarabeh obviously I speak Dutch as well? #vibetiktok #fy #fyp #foryou #likelike #tiktoktraditions #dutch', 10300, 66900, 532, 79, 9),
(6879936527829404933, '@sheismarissamatthews #greenscreenvideo #foryoupage #fyp #foryou #powerlifting #bodybuilding #deadlift #fitness #workout #fittok #powertok', 8971, 61900, 271, 412, 57),
(6879952519586450690, 'It’s a no from me. Be smart and work hard #fyp #foryou #foryoupage #gymshark #fitness #bodybuilder #supplements', 1742, 44100, 86, 143, 52),
(6880080548086172929, 'දුඹුරුලමිස්සි & කූඹියො  සීගිරියේ යන අතරතුර ❤️@koobiyounlimited  @milanmaduhansa3 @nimanthaperera1 @shashikamalshan9', 2223, 21600, 12, 347, 10),
(6880122437594270978, 'Antwoorden aan @logiciv Wie maakt ze ongeveer het zelfde? ? #wraps #tortilla #koken #fyp #onabudget #chicken', 102500, 1200000, 1243, 119, 54),
(6880134891753852162, '23 years ago today.... #wwe #wwf #wrestling #prowrestling #aew #kane #undertaker #therock #shawnmichaels #romanreigns #sethrollins #brocklesnar', 640, 27500, 15, 219, 39),
(6880161721349311746, '??? #foryoupage #fy #foryou #fyp', 4751, 58600, 32, 288, 13),
(6880162735208877314, '#fyp #fyp #maximemeiland', 11400, 69000, 86, 275, 15),
(6880196605513927938, '1,2,3,4 or 5?????#mix #tiktokcreator #creative #jadsedardkomitao #photo #vfx #gopro #sunset #photomagic #poto #fly #fyp #verifyme', 2500000, 25100000, 12000, 469, 40),
(6880203069192211713, 'Reply to @julius_augustsson - this is my current total. Baby steps. One day I’ll be strong. #strength #lift #gym #squat', 1859, 30300, 55, 232, 12),
(6880225229415681282, 'The joy? #fy #fyp #f1 #f1tiktok #ferrari #sebastianvettel #joy #foryoupage', 17600, 113600, 251, 157, 14),
(6880239600590212353, 'අම්මො ඒක max ගන්න විදිය කියන්නම් ඉන්බොක්ස් එන්න???ආදරෙයි හැමෝටම ගොඩාක් ??', 2129, 11900, 80, 331, 12),
(6880259329434324226, 'El dinero no lo es todo￼. ??#friends #1m', 126300, 513000, 221, 420, 12),
(6880410980434660610, 'How not to do it and how you should do the technique! #martialarts #selfdefence #techniques #yep #nope', 4100000, 50500000, 12500, 93, 14),
(6880446332352367873, '#satisying #horse #brush #shed', 150700, 1100000, 1133, 503, 15),
(6880493048011263233, 'Reply to @rijsttschotel sorry ik ben niet de Pin Automaat#fyp #dutch #djamilacelina #pinautomaat #money #charity #geenhaat #voorjou #vjp #viraal #geld', 5624, 166500, 250, 55, 15),
(6880501583231061249, 'Bhut Mehnat lagi hai eb to viral kardo tiktok walO #vivoy51style #foryou #100k #foryoupage #viral_video #keepsupporting #1millionaudition', 307, 977, 5, 395, 15),
(6880508779109125378, 'Reply to @nimkar8 #foryoupage #fyp #tiktok #xyzbca #foryou #lewiscapaldi #beforeyougochallenge #suiciudalawrareness', 1116, 12200, 123, 168, 41),
(6880527115037478145, 'My heart melts everytime ?? #vibetiktok #fy #fyp #foryou #likelike #tiktoktraditions #dutch', 12400, 62100, 313, 208, 7),
(6880592183720676614, 'no one wants to help me make a tikytoky so I found a way to do this on my own', 8146, 54900, 100, 432, 15),
(6880671806965959938, '', 23500, 192700, 1238, 334, 59),
(6880694458552175874, 'Hit these to start your pull days #fyp #FallAesthetic #foryou #foryoupage #nutrition #fitness #gymshark #vans #bodybuilder', 2315, 35700, 31, 125, 43),
(6880741941860928773, 'Nailed it ??', 26600, 161100, 319, 472, 14),
(6880750408302693637, 'Grip Strength Movements #fyp #grip #bodybuilding #FallAesthetic #DoggyAnthem #StrapBack #razrfit #fitness #gym', 1590, 70600, 34, 314, 8),
(6880839179677256962, 'Туториал по стрелочкам ❤️#recommendations #tutorial #туториал #foryou #урокимакияжа #makeuptutorials', 5134, 70600, 12, 446, 15),
(6880848041792802053, '#greenscreensticker #okboomer', 22000, 78100, 900, 175, 59),
(6880865616215952641, 'Fight song ?? dc: @britini_dangelo', 12000, 143000, 64, 490, 15),
(6880877914078842113, '#foryou #foryou #foryou', 154, 3854, 2, 186, 15),
(6880924024227040513, '⭐️ EVA ⭐️ Reageer nu met jouw naam! ?? #rice #foryoupage #fyp #rijstt', 36700, 547700, 7568, 31, 12),
(6880924761333959938, 'POV - You realise I can sing x #singing #fyp #4u #viral #pov #music #cover #singer #model #singalong', 6691, 66200, 112, 415, 15),
(6880928709956635909, 'Hey ladies ? #greenscreen #foryoupage #fyp #foryou #powerlifting #bodybuilding #deadlift #fitness #workout #fittok #powertok', 9881, 86600, 203, 354, 8),
(6880983457019809026, 'Food Shredder', 114100, 6600000, 577, 332, 10),
(6880986381309562118, '#duet with @_devinnscott care if I just vibe with y’all #vibes #vibecheck', 26200, 166600, 469, 135, 17),
(6881035542830550278, 'Silent conventional tings #foryoupage #fyp #foryou #powerlifting #bodybuilding #deadlift #fitness #workout #fittok #powertok', 4851, 71400, 122, 193, 17),
(6881040494332366086, 'Your 2nd & 3rd @ are down!???‍♀️??‍♂️??‍♀️ @erica_klein @brettmvrk @brettandkristin', 76100, 558400, 2325, 71, 15),
(6881218787157216514, 'Picobello bv #fy #fyp #voorjou #voorjouwpage #follow #viraal #gekkies #internetgekkies #picobello #hallo #lachen #nederlands', 5898, 171200, 31, 362, 17),
(6881237651702254850, 'Wanneer klanten producten niet op dezelfde plek terugzetten.. #deensupermarkten #fy #fyp', 1396, 41200, 10, 476, 8),
(6881250870374321414, '#stitch with @inikamcpherson #foryoupage #fyp #foryou #powerlifting #bodybuilding #squat #fitness #workout #fittok #powertok', 10000, 81900, 112, 72, 54),
(6881297980456996097, '☺️☺️☺️#defender110  #landrover', 1125, 9725, 16, 189, 22),
(6881317813173095681, 'altijd geïntimideerd wel #voorjou #voorjoupagina #vjp #fyp #foryoupage #xyzbca #tiktoknl #viral #bmw #tiktoknl #voorjou', 8819, 125200, 341, 452, 9),
(6881337151901027586, '#going #wrong #jpkautomotive #mrtiktok #funn #fyp #fyppppp #foryourpage #for #your #page #2020 #noticeme #sponsorme', 971, 79000, 11, 159, 18),
(6881353341465611525, 'Reply to @jack_weight #foryoupage #fyp #foryou #powerlifting #bodybuilding #deadlift #fitness #workout #fittok #powertok', 9073, 81300, 130, 346, 57),
(6881414725075242246, 'super happy with the result but yea I slowed down so much... #runner #crosscountry #track #xc #gorun #fast', 4286, 52300, 67, 206, 8),
(6881428016275197186, '#horadearrasar #billieeilish', 5325, 45900, 58, 20, 13),
(6881502944353717506, 'thank you so much for everything i love you all so much?', 51700, 232200, 588, 408, 29),
(6881624031561354498, '#duet with @brockfit__ - this is probably the wildest one I’ve seen personally. #strength #peopleareawesome #gym', 6153, 61800, 36, 176, 54),
(6881636686606912770, 'masenna ?????', 1257, 19300, 4, 236, 25),
(6881662658794294529, 'Dit ziet er echt raar uit ?? #bawzarmy #foryoupage #fyp', 26000, 252600, 448, 33, 11),
(6881719705028021509, 'Reply to @akabutt #greenscreen  army #marines #military #navy #airforce #coastguard #firyou #GimmeSomeTruth #StrapBack', 8960, 56800, 562, 24, 55),
(6881741305345592577, 'Danny Ric and divebombs? #fy #fyp #f1 #f1tiktok #foryoupage #danielricciardo #overtake #divebomb', 9136, 179900, 43, 416, 18),
(6881793753036721414, 'DEADLIFT IS COMING BACK ? #foryoupage #fyp #foryou #powerlifting #bodybuilding #deadlift #fitness #workout #fittok #powertok', 4947, 68200, 110, 35, 15),
(6881838035051269377, 'Mikasa Ackerman [shingeki no kyojin] Disculpen la calidad :( #attackontitan #snk  #mikasa #anime  #animeedit #shingekinokyojin', 258200, 1300000, 3030, 140, 8),
(6881841137934454017, '', 2349, 22700, 20, 283, 14),
(6881844264750353665, 'Which one is your’s? #horse #horses #equestrian #pony #dressage #australia #perth #fyp #foryou', 86200, 434600, 1083, 180, 27),
(6881909763723037954, 'Look that splash? Fastest water rollercoaster in the world!?? #themepark #omg #wow #water #energylandia #poland #rollercoaster #intamin #fy #pov #a', 16800, 384900, 121, 367, 8),
(6882038951134137601, 'Sorry hoor.. ? #alexklein #foryou #foryoupage #fyp', 60300, 496800, 503, 116, 9),
(6882041935029226754, '?', 64500, 547700, 947, 485, 15),
(6882043160806116609, '??? ?? ???????? ✨ #akamegakill #akamegakilledit #esdeath #esdeathedit #anime #animeedit #weeb #otaku #fyp #foryou #fy', 11700, 73700, 157, 419, 12),
(6882071585621069058, 'Sisiter\'s wedding❤️❤️❤️❤️❤️❤️ Suprice Dance? #jaanu_99 #wedding_suprice_dance #buttabomma #onemillionaudition #forupage', 1018, 10900, 13, 5, 30),
(6882079709484649729, '', 51000, 1800000, 522, 361, 8),
(6882153629034269957, 'i tried to hit 10 but nope... #gymfail #fyp #GhostMode #ItBeLikeThat', 3055, 88300, 54, 34, 21),
(6882317577692138754, 'HBD to me ? #anime #weeb #otaku #lovelive #animeedit #animeedits #yoshiko #yoshikotsushima #lovelivesunshine #fyp', 3380, 24000, 103, 119, 25),
(6882342986634595586, 'И как обычно 30 лайков и ни одного коммента?? #уменялюкс #тренд #recommendations #переписка #туториал #совет #душа #глобальныерекомендации #любовь', 643, 11900, 61, 424, 7),
(6882348124120108289, 'පවුලේ උන් එක්ක දවසක්', 1401, 12300, 5, 111, 18),
(6882388794671107330, 'In welk schooljaar zit jij? #foryou #dutch', 10900, 76500, 163, 18, 8),
(6882395409973660930, 'How long have you been playing football for ? ?', 499600, 9200000, 6459, 473, 15),
(6882404595394563330, '@mikeohearn #gymfail #cringe #gym #bodybuilding #fitness #powerlifting #fyp #viral #xycba', 40600, 605800, 696, 150, 11),
(6882419822806699266, 'I’ll duet and redraw Billie in a year ✍?? #billieeilish #drawing #digitalart #digitaldrawing #procreate #realisticart #art #realism #fyp #foryou', 26900, 90300, 478, 399, 23),
(6882436135214238981, '? #fyp #foryou #foryoupage #FootlongShuffle #GhostMode', 21300, 72100, 513, 264, 44),
(6882438480786459906, 'You\'ve been requesting to see how I train my shoulders, so here goes ? #shoulderexercises #training #gym', 1373, 76800, 10, 485, 9),
(6882508731343506694, 'This is me #fyp #thisisme #identify #StrapBack #funny #lipsync #usethissound #sharethis #shareit', 20500, 142300, 243, 146, 8),
(6882547868792524034, '?Poopy pull?#foryou #fyp #foryoupage #fitness #gymshark #bodybuilder #powerlifting #exercise #workout #deadlift', 499, 28100, 12, 43, 5),
(6882598038947286274, 'almost  33 reps?.beat me if you can #duet #sportlover #challenge', 10400, 202400, 747, 237, 30),
(6882670049648200962, '#horadearrasar', 34700, 146100, 348, 447, 13),
(6882734270910188802, '', 2125, 36900, 38, 176, 8),
(6882735576160783617, 'Antwoorden aan @vannieeijken Wist jij alles al?⁉️ #politie #amsterdam #politieamsterdam #fyp #foryou #policecar #dreamjobcheck #learnontiktok #cops', 48300, 747400, 1252, 415, 56),
(6882738915724233985, 'Leven is positief net als mijn coronatest #corona #fyp #foryou.', 1246, 46000, 65, 314, 13),
(6882758194754522369, '#doublebodyweight #squat #squats #strength #coachpiyush #olympiclifting #olylifting #weightliftingcoach #powerlifting', 613, 20400, 54, 335, 8),
(6882769301615496450, 'I can’t not sing the guitar solos...', 558800, 4100000, 4522, 359, 27),
(6882770369573358853, 'women are not exempt from being controlling and toxic #fyp #foryou #foryoupage #RhymePOV #FootlongShuffle #GhostMode', 19700, 83100, 539, 380, 37),
(6882817271899770114, 'Reply to @mrpathan_1  main karachi se hu Jo b ham se millna chahta hai insta pe bat karenge#vairal #100k #illu #foryou #foryoupage #fyp', 1816, 23100, 66, 38, 13),
(6882831253519731970, 'can anyone relate ? #fyp #foryou #foru #fitnesspage #fitness #workout #gym', 22500, 196100, 262, 156, 16),
(6882850172854979845, '@officerkingery - I’m in. #fyp#fypシ#copsoftiktok#firefightersoftiktok#police#firefighter#rival#viral#duet#sorry#prankwars#xyzbca#joking#madrespect', 7076, 65200, 117, 366, 7),
(6882854042016419074, 'It’s hard to conga with sandals and slides ? #ThanksgivingVibes #RhymePOV #dance', 6931, 51100, 134, 135, 8),
(6882870430625975557, 'Reply to @kay_is_here567 just like this lol ☺️ #RhymePOV #GhostMode #pets #horse #horses #animals #animal #horsebarn #horsegirl #part2 #build', 25800, 197700, 217, 204, 12),
(6882920923314326785, 'Don’t complain if you don’t put the work in #foryou #foryoupage #fyp #fitness #nutrition #gymshark #bodybuilder #workout #diet', 3854, 41600, 91, 32, 52),
(6882975789143379201, 'De @2e persoon heeft smetvrees en de @4e persoon laat alles liggen? @marito.dorito  #jufjoyce #verhuisvlog #teacher #comedy #yesidothecooking', 5865, 34800, 257, 9, 10),
(6883011295763860738, '♥️✅', 4053, 32000, 60, 5, 14),
(6883063619202993409, 'We back up on this ho #fy #tinder #rating #nieuwdakkie', 1339, 16900, 43, 183, 59),
(6883066746559794434, 'Golddigger prank parodie met een random meid ?', 15900, 182800, 77, 99, 12),
(6883070138279677186, 'friends ka liya kuch b karna padta hai and Tak dekho acha song hai #vairal #100k #illu #foryou #foryoupage #fyp', 1833, 27600, 87, 255, 29),
(6883082488101555462, 'What can you press? #bigbendstrong #fittok', 1693, 61500, 168, 19, 15),
(6883094233935252737, 'Welkom in Nederland??‍♂️ #nederland #dutch #stamppot #voorjoupagina #fyp #foodmeme #flodder #15sworkout', 23900, 346500, 181, 266, 8),
(6883133559482191105, '❤️❤️❤️ #fyp #fy #voorjou #dollhouse', 2233, 39700, 16, 24, 10),
(6883165648290139394, 'Ахаха #НиШагуБезDETTOL #тренд #recommendations #туториал #глобальныерекомендации #реакция #проверка #отношения #любовь #переписка #угадайкто #душа', 1194, 7090, 8, 187, 15),
(6883180152164011265, 'What did you noticed first? #fyp #running #run #runner #doggo', 25100, 433100, 657, 478, 21),
(6883211681988627714, '#stitch met @charlielifefitness vandaag in deze aflevering van “hoeveel TikTok kan ik kijken totdat ik mezelf compleet haat...” #dutch #humor', 6268, 45700, 68, 175, 10),
(6883270499741273349, 'the fall onto my bed scared me tbh #Boo #gay #affirmations #military #transition #fyp #FootlongShuffle', 12600, 53900, 215, 327, 14),
(6883331225197563141, 'Swimmers where you at', 56800, 379400, 595, 340, 14),
(6883458545451388161, 'Reply to @odeplacolru', 893, 35900, 18, 477, 13),
(6883484287434378497, '#fy #foryoupage #foryou', 26600, 449300, 668, 47, 13),
(6883508337380478209, 'Red moment', 2520, 30300, 43, 409, 7),
(6883532351960288518, '#duet with @sydneymcghee___ I think I messed it up but highly requested ? great challenge!! Girl you got some ?? #fyp #foru #fitnessgirl #fitgirls', 4911, 74400, 29, 349, 12),
(6883565215552654593, 'we surprised my mom with her dream car for her 50th birthday ? #surprise #birthday #mom #fyp', 9782, 65300, 144, 28, 54),
(6883594464900779270, '#duet with @maximevdd #foryoupage #fyp #foryou #powerlifting #bodybuilding #deadlift #fitness #workout #fittok #powertok', 12100, 95700, 77, 407, 7),
(6883600153593367810, '#horadearrasar', 7700, 52500, 129, 363, 13),
(6883604590525156609, '#Top10 Strongest #onepiece Characters by the end of the show. #anime #strongestcharacters #animeboy #luffy #zoro #animeedit #animeedits #animestiktok', 29200, 197300, 656, 242, 43),
(6883622094190497025, 'bad guy⛓? #billieeilish #transition #fyp #ootd #badguy', 5559, 62700, 41, 233, 7),
(6883841665841270017, '? or ? #foryoupage #foryou #couple #funny', 243400, 3100000, 739, 252, 25),
(6883894825855274242, 'АКАШИИИ#НиШагуБезDETTOL #fupシ #anime #волейболаниме #волейбол #haikyuu #анимеэдит #animeedit #bokuto #akashi #kageyama #hinata', 19600, 72700, 140, 504, 11),
(6883896778995846402, '', 1325, 57400, 117, 218, 15),
(6883928153727831297, 'Alrighttt let’s get it he he #fy #smooth #fresh #shower', 2444, 45900, 18, 362, 8),
(6883948403730992386, '#horadearrasar', 9950, 133100, 52, 414, 13),
(6884030480736324869, 'Follow for more lifting tips! #foryoupage #fyp #foryou #powerlifting #bodybuilding #squat #fitness #workout #fittok #powertok', 15800, 163400, 233, 421, 59),
(6884031629522717953, 'Try not to be jealous of my HUGE calves #foryou #foryoupage #fyp #fitness #bodybuilder #workout #exercise #aesthetics #gymshark', 1707, 29200, 39, 256, 34),
(6884114945026411778, '#foryou #foryoupage #fyp #fy #viral #tiktok', 39000, 1300000, 200, 76, 12),
(6884153193425636610, 'I wonder who will understand this trend... #ImJealous #fyp #gaming #streaming', 6111, 62800, 207, 448, 9),
(6884239332329164034, 'why is it so blurry?? @tonylopez @ondreazlopez #memories #ondreazlopez #tonylopez #lopezbrothers #behindthescenes', 5013, 47000, 51, 120, 10),
(6884257667573894401, 'Aqua ????? #anime #edit #fyp #otaku #waifu #animeedit #animegirl #aqua', 13700, 65900, 75, 379, 31),
(6884265104637005057, '❗Дети Моря❗#детиморя #edit #эдит #recommendations #рекомендации #globalrecommendations #recomendation #anime #animeedit #аниме #антмеэдит', 50500, 198500, 578, 447, 15),
(6884265711980645634, 'Zelfde meid 1,5 jaar later ?? #korthom #foryou #fyp #schooltour', 171500, 2400000, 1051, 291, 6),
(6884266018936573189, 'This is a true story?? Ninja Punch City #fyp #foryoupage #fypシ #militaryhumor #marines #navy #army', 7191, 83500, 181, 55, 11),
(6884287238138645761, 'Inspired by my tik tok neighbor #foryou#shefamous#tiktokstar#forupage', 513, 65800, 11, 440, 14),
(6884340073693859074, 'This guy pushes your smoke, what do you do now? ?? #csgo #counterstrike #smoke #meme #greenscreen #wwe', 11700, 60400, 43, 297, 13),
(6884352491505388801, 'Ele ainda é o preferido de vocês? #kakashi #kakashihatake #kakashisempai ##kakashisensei #kakashi_hatake #kakashiedit #kakashiart #animeedit #カカシ', 9288, 52400, 93, 149, 9),
(6884399255302245633, 'Give it a shot if your knees hate you #foryou #fyp #foryoupage #fitness #bodybuilder #aesthetics #gymshark #workout #exercise', 1428, 24800, 22, 417, 29),
(6884400510699343109, 'Wasn’t expecting that ending... #volleyball #pageant', 106700, 1400000, 973, 77, 12),
(6884574278134582529, 'Happy Bwoah-thday Iceman??  #kimiraikkonen #bwoah #f1 #formula1 #fy #foryou', 6972, 86200, 64, 288, 20),
(6884590643327290625, '#TimeWarpScan', 4326, 81200, 354, 472, 9),
(6884646106970590470, '#duet with @jilliansurfs Follow my Backup @funnyk__ #fyp #foryou #views #transitions #transition #xyzbca', 30200, 139400, 79, 495, 13),
(6884688821976354049, 'tá entrei na bad dps desse vídeo...(?ALERTA GATILHO?)#4upage #tradução #otaku #anime #animecasal #bad #animeedit #virall #fy', 25000, 99400, 659, 95, 32),
(6884691950478298370, '?????vlinders', 8133, 118900, 80, 515, 7),
(6884703655182880002, 'Colonel Sanders called, he wants his Prairie chicken back. #indigenous #dancer #transition #toronto #foryou #nativetiktoks #fyp #itstartsontiktok', 71800, 339100, 1179, 333, 12),
(6884749597864987905, 'Eren Jaeger [Shingeki no Kyojin] #attackontitan  #anime #erenjaeger #snk #animeedit #shingekinokyojin', 30500, 143000, 444, 263, 8),
(6884777374508911874, 'When the gyms are closing so you hit a full body circuit ? #joke #fitness #fyp #foryoupage #pistolsquatchallenge #acrobatic', 24000, 188500, 134, 496, 11),
(6884795858827644161, '#horadearrasar', 1086, 48600, 36, 267, 13),
(6884860645364354306, 'If you know me, you don’t ❤️ #fyp #lesbian #gaytiktok #gay #gayngels #bi #lgbt #stem', 5846, 45800, 56, 116, 5),
(6884868479267147010, 'Its ur FAV guurlgroup #5YOU Tag yours!! Had to do this #breakupsong with my guurlss?@nina.jellina @meganmaximevandijk @carlijnvleeuwen #girlgroup', 3832, 46000, 70, 349, 12),
(6884902907439779074, '#duet with @annabananaxdddd y’all keep telling me I look like her? so what do you. think?? dubbelgangers?? #foryou #looklikeart', 11100, 122000, 191, 179, 15),
(6884933059758755073, '#fyp #???????? #foryou #standwithkashmir #rizwandurrani57 @rehankhan3724', 274, 3456, 3, 129, 15),
(6884933447480003842, '#fyp #???????? #foryou #standwithkashmir                                     عشق وار خَتاَ دِ کم', 368, 5189, 13, 508, 20),
(6884935459110178049, 'තරහයිද මා එක්ක ? අත දැම්මානේ ?', 720, 11300, 15, 206, 13),
(6884946806833188097, 'welk type ben jij ? | TAG JE VRIENDEN ?', 19800, 213400, 271, 141, 14),
(6884947969469156609, 'Reply to @hyphousestories2 Zo ? #feestiom #sportiom #kinderfeestje #bubbelvoetbal #kinderfeestje #jarig #feestje #zwemmen #water #verjaardag', 89100, 2100000, 678, 359, 15),
(6884970166489271557, 'CHEST DIP TIPS. Work that chest ??✨ #fyp #foru #fitnessgirls #HorrorTok #DoItBold #fitnesstips #chestdips #chestworkout', 9247, 99600, 60, 486, 21),
(6884981166659751169, '', 586, 8766, 8, 303, 15),
(6884981528430988546, '#horadearrasar', 10600, 109200, 195, 480, 13),
(6884999522360052993, 'Abs routine 8 minutes #abdos #abs #absworkout #entrainementalamaison #tiktokacademie', 41900, 684000, 152, 144, 24),
(6885153736222706949, 'My biggest asset ?? #fit #fitness #gym #lift #fyp', 11100, 148300, 145, 380, 7),
(6885161134748404998, 'Just for fun but there’s 2 kinds of people! #covid #fyp #HorrorTok', 3329, 105700, 36, 357, 8),
(6885246252078910722, '#fy #fyp #foryoupage', 11900, 3400000, 52, 65, 15),
(6885248860281654529, '#duet with @garyvee - accurate. #entrepreneur #business #lifestyle', 5186, 65200, 20, 261, 17),
(6885276983870196994, '#fyp #???????? #foryou #standwithkashmir #rizwandurrani57', 104700, 1900000, 709, 143, 22),
(6885293067562192130, 'Dag 1 of tasting things until i can taste again because I have #coronavirus. #tastetest #coronavirus check #quarantine', 12300, 169000, 207, 327, 15),
(6885540773987667205, 'Hope this helps! #greenscreen #foryoupage #fyp #foryou #powerlifting #bodybuilding #deadlift #fitness #workout #fittok #powertok', 13600, 127500, 148, 353, 58),
(6885565252151315718, '#duet with @daltonroe23 Thanks man, means alot since im small account. #fyp #gym #ProblemSolved #fight #ufc #boxing #fitness', 7207, 71400, 59, 431, 17),
(6885582410579184897, '??මම ලියන එක නැවැත්තුවා??', 3355, 43500, 28, 83, 10),
(6885654253826870530, 'When you feel the first powder of the season?? @christof_schenk #skitok', 5534, 58400, 38, 469, 12),
(6885674156655021314, 'Tiktok Unband Special ???#comedy #foryoupage #viralvideo #hirafamxx #trend #comedy', 124, 1418, 5, 65, 10),
(6885675789090704641, 'zin innnn￼?#dienstplicht #2003 #fyp #funny #meiden', 18900, 170100, 740, 195, 8),
(6885726005357530370, 'Ow Ow pechdag!! #fyp #fy #hardgaan #kapot #broken', 1515, 106800, 17, 256, 6),
(6885766692627107077, 'Beatbox keeping me sane before my flight ?✈️', 5200000, 44600000, 32000, 414, 12),
(6885774617479302402, 'Lopen #fyp #voorjou #dutch', 441, 58900, 7, 469, 7),
(6885779594901867777, 'tag een luilak???  #fyp #fy #lui #lieverluidanmoe', 8013, 147600, 98, 67, 6),
(6885791166248340737, '#duet with @evan_holmes_  my first duet with this young chap #duet #mensfitness #menshealth #eduardofilipecoaching #duetwithme', 617, 33600, 36, 463, 24),
(6885802277555293441, 'Voor voetbal vragen moet je niet bij mij zijn ? #fyp', 8581, 117800, 62, 437, 18),
(6885861410329332998, 'Reply to @user26770788 #theboys #WorldSeries #GamingLife #foryou #fyp', 9522, 64000, 273, 146, 44),
(6886011511391718657, 'Loudest pops in WWE history Pt. 1 #fyp #foryoupage #HBK #shawnmichaels #MickFoley #StoneCold #leagueofnations #wwe #wwf', 4851, 148200, 22, 218, 23),
(6886026780914846978, 'Goedemorgen! #fyp #foryou #goedemorgen #powernap', 3657, 58200, 14, 317, 6),
(6886033905531538689, 'long road to recovery dreamy but it’ll be ok❤️ #fyp #horseaccident #horse #pony #vets #broken #brokenspine #iloveyou', 31100, 163100, 833, 243, 51),
(6886060490687106306, 'video khrb ogae ??#newtrend #foryou #foryoupage', 142, 1853, 12, 401, 14),
(6886066384246443265, '#duet met @elisavanleersum', 810, 50500, 8, 478, 15),
(6886068485345070337, 'Zuur-base reacties ? #fy #fyp #viral', 8639, 102500, 459, 246, 9),
(6886115520425266433, 'Gamen met JP, gezellig man #amongus #diorsauvage #gamen #voorjou #hertje', 3824, 51000, 107, 489, 33),
(6886117069851479297, 'my neighbour on the next balcony watched me film this ? #shuffle #footwork #shuffleprogress #professionaldancer #fyp #foryou', 2187, 34900, 27, 404, 9),
(6886119631011007745, '#painting #oilpainting #artist #artwork #insta #girl #art #brushchallenge #drawing #fyp #creative #trending #support #artists #architecture #girls', 73300, 295700, 772, 314, 9),
(6886192005270064386, '#farhadpaz', 9490, 383600, 134, 357, 37),
(6886215675350666497, 'Absolute power is a helluva drug. #power #legday #boss #ceo #truestory #fitness', 1334, 9315, 23, 44, 8),
(6886223121397894405, 'This whole video is of me trying not to let my b00bs fall out. You’re welcome#ThatWitch #twerk', 5500, 119600, 106, 111, 15),
(6886231790332218629, 'If you have any questions just ask! #fitness #workout #training #gym #squats #deadlifts', 9233, 90200, 156, 64, 53),
(6886265289206435074, '#foryou #bhuran__tv #standwithkashmir #foryoupage #fyp', 206, 4620, 7, 338, 15),
(6886291383246671109, '@futbol.emanuel glad you’re okay! #greenscreenvideo #foryoupage #fyp #foryou #powerlifting #bodybuilding #bench #fitness #workout #fittok #powertok', 23000, 136600, 103, 85, 57),
(6886298413885918465, '', 3205, 45000, 60, 428, 10),
(6886331836444790018, '5 things about living in The Netherlands ? ??', 3603, 86800, 68, 449, 15),
(6886383962885737730, 'Insta par aao bt krte hain ?♥️ #transition #foryou #foryoupage #fyp #tiktokindia #duet #acting #slowmo #love #burhan_tv #featureme #viral #famous', 277, 6893, 5, 174, 18),
(6886417103046380801, 'Ben hopelijk niet de enigste? #fyp #dutch #fy', 3275, 65900, 159, 374, 8),
(6886450016785894658, '#scaniav8  #theklokoprock #mikeymike #nieuwerondenieuwekansen  #Oldskool', 12200, 285700, 195, 290, 12),
(6886459209051852038, '#fyp #fitness #ComingOfAge #mobility #movement', 4937, 95000, 25, 252, 15),
(6886464165549001986, 'Reply to @mgdslade I feel like you’re teasing me ? #boots #laces #military #army #amazing #canadian #skills', 3324, 49100, 115, 468, 36),
(6886472762878151937, 'Rot op met je bananenbrood en whipped coffee', 1425, 56800, 31, 42, 7),
(6886517104871279874, 'Wel een hele creatieve opmerking meneer!', 4662, 59400, 64, 311, 7),
(6886527144478936321, 'No❤️ #fyp #foryou #voorjou', 3808, 53000, 183, 39, 11),
(6886527878100438273, '♡︎???? 1♡︎??? ?? ??? ???????? ??????? #procreate #fy #fyp #シ #foryou #viral #blue #red #impostor #amongus', 19000, 84200, 146, 383, 46),
(6886618708731546886, 'my parents are watching the debate and i’m just like ?✌️? #fyp #runnergirl #gorun #debate #XC', 12800, 105100, 285, 355, 10),
(6886619249889070337, 'Can you tell I want to be a @gymshark athlete? #fyp #foryou #foryoupage #fitness #bodybuilder #aesthetics #gymshark #workout #exercise', 1842, 25900, 87, 221, 30),
(6886654544126758146, 'ආසවට කලේ?', 2171, 14000, 12, 218, 22),
(6886679044323020033, 'magic comb', 1869, 21500, 5, 3, 34),
(6886763008966577410, 'Who saw this? ? #wwe #smackdown #wrestling #fight #raw #fyp #foryoupage #foryou', 1794, 74500, 15, 311, 15),
(6886765050355289346, '#fyp #foryou #xyzbca #foryoupage #boyfriend', 1251, 50400, 27, 56, 9),
(6886816932222356741, 'Reply to @travismendenhall3', 4909, 59000, 886, 170, 58),
(6886843424310414594, 'Reply to @harryseddon69 Help pls ?? #foryou #fyp #gym #workout #deadlift #? #viral', 379, 20200, 192, 110, 12),
(6886856236667636993, '10sec VS 10min VS 1uur. Zien hoe in het in een langere tijd doe? Kijk snel op mijn YouTube ? #voorjou #foryou #fy #tekenen #ipad #procreate', 9025, 67000, 67, 87, 14),
(6886872042411494658, 'spain but without the s #helloworld #animeedit #helloworldanime #animereccomendations #fyp #fypシ #foryoupage #amv #sadanime #romanceanime #weeb #otaku', 38700, 202200, 408, 228, 13),
(6886904360207469825, 'Your soulmate can hear you sing. I wonder who Glitch’s soulmate is.. #bnhaunited #heroesoftomorrow #soulmate #bnhaoc #glitch', 12600, 47200, 158, 25, 15),
(6886917791429954817, '?❤ #animeedit #animefan #otaku #waifu #waifusenpaii #kawai #kawaiicult #animecuteuwu #lolis #loli #animeboy #waifu2d #maisan #anime4life', 10500, 49300, 132, 172, 10),
(6886946250336324870, 'Learn these basic moves to get comfortable with shuffling! #shufflechallenge #shuffletutorial #dance #dancechallenge #cuttinshapes #shuffle #shuffling', 7268, 100500, 100, 427, 19),
(6886981950180003073, 'Shoulder tip #fitnesstips #trainingtips #strong #shoulders', 4124, 69900, 62, 50, 15),
(6887366313526709510, 'First day of marriage. #lgbtq #marriedlife #challenge #singing #wlw #girlswholovegirls #loveislove #TikTokFood #wife', 20300, 87600, 625, 157, 59),
(6887391026848320774, 'Early to bed, early to rise #aginggracefully #singlelife #fyp #transition #bedtime #parati #paravoce #tiktok2020 #saturdaynight #TikTokFood', 8851, 88800, 334, 304, 7),
(6887443398446550273, '', 3716, 124400, 47, 478, 23),
(6887458979954347266, 'Без нее жизнь теряет смысл?❤#ЧКМП_челлендж #выбериобразповкусу #top #recommendations #хочуврек #рекомендации #handemiyy #sencalkapimi #handeercel', 19000, 173900, 42, 235, 14),
(6887527163617201410, 'outfits of the week... basically baggy pants and a top ? which one was your favorite?? #outfits #mondaytuesday', 67200, 1000000, 739, 140, 20),
(6887562050265025794, '#horadearrasar', 12300, 162900, 141, 503, 13),
(6887581168858893569, 'Who is joining the dark side next? We have dump trucks. This is a takeover. #gym #legday #ceo #MeLeaving', 1593, 13000, 54, 300, 9),
(6887590237191572738, 'I really need to get better at transitions.. ? #fy #fyp', 41200, 423900, 790, 252, 21),
(6887596160656215298, 'das pas echte equality', 7993, 50100, 358, 233, 15),
(6887605177591942405, 'BIG BENCH PR #powerlifter #powerlifting #powertok #fitness #gym #benchpress #bodybuilding #strength #fyp #foryoupage  @timmytimmadome', 5574, 117200, 538, 342, 31),
(6887617610196733186, '?? #HalloweenIsHere #equestrian #fyp #foryou #horse', 20500, 69300, 61, 389, 12),
(6887618500307864833, 'almost died making this #halloweenishere #equestrian #fyp #foryou #horse', 33000, 126000, 226, 340, 13),
(6887645369895898369, '? | I’m having some of my charli cake from my bday ? | ? | @charlidamelio | ? | #fyp #foryou #birthdaycake #charli #queen #cake #blm', 26300, 173100, 315, 309, 15),
(6887853904697101570, 'Antwoorden aan @sadeetje031 Pepijn zonder pe voor Jp #voorjou #fa2gang #fyp #hertje #Jp', 8093, 76900, 65, 191, 34),
(6887869748458130690, 'foryou ma Aon tw comments ma lazmi btana#crew07 #vrlvideo #fym #100k #foryou #foryoupage', 149, 3378, 42, 329, 11),
(6887890425844141313, 'My life with multiple sclerosis #ms #fyp #fy #voorjoupagina #somethingdramaticthatchangedmylifecheck #dutch #hospital #positive #goodvibes', 4449, 120600, 201, 254, 15),
(6887946160837790982, '? #foryoupage #fyp #foryou #powerlifting #bodybuilding #deadlift #fitness #workout #fittok #powertok', 9129, 54500, 231, 60, 39),
(6888010128486845698, '(It’s a...)happiest birthday zaino love u ????#sultansbattledance #genderreveal #birthday #happylife #transition #wishes #cake #yummy #4u', 1236, 13700, 0, 500, 12),
(6888031153173892353, 'When they call you ugly in ? ways #chinesetiktok #chinese #chineseboy #chinesetrend #asianboy #transition #transformation #fyp #foryou', 330000, 1100000, 3767, 314, 11),
(6888059613158362369, 'La cara de mi novio es lo mejor ?❤️ #escaramuza #charro #charreria #mx #tiktok #page #lifestyle #horse #challenge', 6682, 56100, 34, 251, 15),
(6888218363923942657, 'Legend dat ie dat durft', 340300, 4400000, 864, 88, 24),
(6888254914754006274, 'TRUE FACT ? Welke telefoon heb jij? ✨ #fyp', 4896, 43700, 257, 27, 9),
(6888322901305478401, 'Sorry neighbours❤️ #fy #fyp #michaeljackson #michael #jackson #foryou #foryoupage #vj #voorjou #vjp #voorjoupagina #music #dance #crazy', 2973, 44400, 118, 262, 6),
(6888341759622008066, '#fyp #foryoupage #mycostume #chocolate #birthday #viral #asosdaytofright #fypシ #xyzbca #cake #idontlikeit #trending #trend #ilikeyacutg', 1090, 10100, 50, 171, 8),
(6888353150521134338, 'Some strong 12 year olds about these days #catback #deadlift #gym #workout #fyp', 1795, 87900, 78, 34, 21),
(6888373722546294022, 'Reply to @kilxuaaa i love corpse #fyp #foryou #foryoupage #MyCostume #exprESSIEyourself #MicellarRewind', 24200, 151900, 428, 117, 9),
(6888423046529518853, '#duet with @kingofcommunism69 #DoItBold #MyCostume #exprESSIEyourself #MicellarRewind Facepalm is all I have to say about this', 3810, 56800, 706, 215, 59),
(6888423769107385601, 'Je zou maar 549 hebben lol onderlaag van de samenleving', 5875, 59400, 203, 220, 56),
(6888428739861040386, '#clownerij', 40400, 551800, 763, 101, 21),
(6888453982440770821, 'Is it kissing time yet ? #MyCostume #exprESSIEyourself #kiss #foryou #fyp', 7042, 61200, 240, 393, 13),
(6888474204623195397, '20 minutes of this workout paired with a calorie deficit will have your abs popping! #fyp #fypp #hiit #hiitworkout #bodybyberg', 15800, 269900, 81, 461, 9),
(6888483056588508417, 'I’ll do a vid on bulking tips soon #fyp #foryou #foryoupage #fitness #bodybuilder #supplements #nutrition #workout #diet', 2021, 25500, 89, 195, 53),
(6888486575005617409, '', 499, 15300, 12, 244, 11),
(6888674709433535745, 'Happy death day#parati #fyp #4u #goforitchallenge #destacame #halloween #birthday #cake', 570, 3637, 3, 126, 6),
(6888722307603336453, 'Reply to @cattmanick short answer? No. #rawiseasy #equippedpowerlifting', 6101, 73300, 184, 474, 55),
(6888741138941955330, '#voorjou #ajax #ucl', 2137, 47400, 216, 19, 10),
(6888750527845485825, 'Responder a @user709420874 #horadearrasar', 3123, 128500, 150, 392, 18),
(6888753654594145537, 'Those booty slaps though ? #indoorcycling #indoorcyclinginstructor #soulcycle #fyp #foryourpage #xyzbca #beyonce #crazyrightnow #lit #fire', 305300, 3300000, 3502, 372, 19),
(6888809548895849734, 'Teehee ? #foryoupage #fyp #foryou #powerlifting #bodybuilding #deadlift #fitness #workout #fittok #powertok', 10200, 95200, 297, 205, 16),
(6888826582786395394, '#horadearrasar #fyp #tiktok #fy #foryou', 4053, 67000, 88, 216, 13);
INSERT INTO `short_videos` (`id`, `text`, `tymCount`, `playCount`, `commentCount`, `user_id`, `duration`) VALUES
(6888847866157223169, 'amo a esta pareja ?❤ #fullmetalalchemistbrotherhood #fmab #edwardxwinry #animeedit #fyp #xyzbca #otakugirl #fypシ #weeb #parati', 18800, 87600, 219, 4, 27),
(6888849748615367937, 'Duet me with your push workouts #RareAesthetic #fyp #foryou #foryoupage #fitness #bodybuilder #supplements #workout #gymshark #exercise', 1770, 25400, 29, 306, 35),
(6888873392234056962, '#like #comments #follow #???????? #??? #fyp #foryou #foryoupage #standwithkashmir #share', 458, 943, 8, 439, 14),
(6889092649895087362, 'Underchin gang #fyp #foryou #viral #trend #joke #xyzbca', 13200, 83100, 58, 315, 6),
(6889105902234864901, '??? #foryoupage #fyp #foryou #powerlifting #bodybuilding #deadlift #fitness #workout #fittok #powertok', 7226, 74700, 96, 443, 17),
(6889162600534330625, 'DIY wallart. For tutorial video instagram: @gulys_creaties #diy #tutorials #follow #diyhome #diyhomedecor #tutorial #makeover #gold #creative #like', 37900, 805900, 268, 3, 10),
(6889402787612937473, '', 1870, 36000, 60, 212, 6),
(6889412761927847169, 'En ik ga d’r als een hertje achteraan?', 1587, 44800, 30, 107, 8),
(6889412974012943618, '???????#tramp #donaldtramp #comedies #foryou #dlaciebie #dlawas #haha #śmiesznefilmiki #tiktokpolska #youtubersentiktok', 15400, 818700, 372, 162, 6),
(6889414816922930433, '#siguiendo#follow#viral#fyp#parati#anime#otaku#fyp#animeedit#loli #kawaii', 26700, 188400, 356, 133, 26),
(6889428056704961793, '? #fyp', 802, 45300, 33, 348, 10),
(6889437057261866242, '#smiithdefortal #comoequeeupossovomitarbatata #batecomvaontade #horadearrasar #fy #whatsapp', 738, 37700, 19, 285, 10),
(6889446389349125377, 'Every squad. #boys #fyp #marvel #memes #squad', 1763, 24200, 12, 394, 15),
(6889452355486485762, 'Hier dan eindelijk het filmpje waar jullie op gewacht hebben. Wat vinden jullie er van? #fyp #muziek #meester #dance #twerk #school #comedy #tt #prank', 2247, 42000, 60, 144, 15),
(6889466576051932421, '@sooshalt @octstrength honey grows lats #foryoupage #fyp #foryou #powerlifting #bodybuilding #deadlift #fitness #workout #fittok #powertok', 11700, 128900, 94, 318, 12),
(6889502513469410565, '#animeedit #anime #weeb #love #family #friends #recommendations #workout #gym #weight #relatable #facts #pain', 29700, 326400, 226, 337, 19),
(6889517297606708482, 'Reply to @bidenlikesmen2020 - my work here is done. One small victory at a time. One small step for man kind. #success #winning #legday #goals', 3573, 25500, 91, 179, 10),
(6889521293306236161, '#fyp #jenga #fy #cheating #vals #spelen #friends #lol #frontpage #game #jengablocks #jengagame', 6276, 129900, 50, 302, 12),
(6889521523833474305, 'Thank me later✨ #fyp #foryou #voorjou #dutch', 50900, 914000, 300, 494, 11),
(6889539392105352450, '?????????? #WellDone #2prettybestfriends #csmajorsoftiktok #stem #techtok', 1846, 24900, 53, 379, 13),
(6889624721005006085, 'This is everywhere and idk who started it so idk what creds to give, but this, this makes me happy #WellDone #fyp', 1993, 86500, 34, 185, 12),
(6889712383049108737, 'AK pal ki ab to dure na muj ko Dana❤❤#foryou #foryoupage #bhurhn_tv #khasmirpakistan #videostar #trending', 93, 5377, 2, 461, 15),
(6889769067306061057, 'Flash Warning #animeedit #edit #anime #fyp #recommendations #rec #tokyoghoul #kaneki', 8516, 50300, 70, 80, 9),
(6889769258981575938, '#transition #edit #vfx #loop #promises', 3230, 41900, 114, 150, 20),
(6889774570367192322, '', 244200, 1200000, 829, 238, 14),
(6889807558618418433, 'Music in the Car just a little bit ? @spaudio8766', 190100, 1600000, 2361, 271, 15),
(6889818292337249538, '#fyp #voorjou #rechtenstudent #student #voorjoupagina', 1535, 47300, 96, 113, 19),
(6889831681469975810, 'Fishikta ameley❤️#eritreanmusic#habeshatiktok#eritreangirl#fyp#foryou#smile#habeshahousee#habeshazoom#gy#eritreatime', 2925, 51300, 120, 422, 15),
(6889856262431837441, 'оцените от 1 до 10?#ТанцевАЛИнаАЛИ #animeedit #волейбол #волейболаниме #haikyyu ##haikyyuedit #karasuno #карасуно #fupシ #анимеэдит #anime #эдит', 6643, 19300, 138, 290, 14),
(6890189236130073857, 'Can\'t he be lucky for one time?? #fyp #fy #foryoupage #foryou #voorjou #formula1 #f1 #racing #maxverstappen #redbullracing #crash #dnf #badluck #imola', 4734, 55100, 306, 438, 22),
(6890298155766697221, '#stitch with @maxlifts  I know we were all just having this convo on my tok. #wewintogether ???', 9588, 136100, 75, 252, 15),
(6890302116246637825, 'Round 1 brujos ?‍♂️ Round  2 Vampiros ?‍♂️ @gloriavalenciaf @pablomondragoon24 @ludwika.santoyo @somoslasrico @aliciavalenciaf_ #f #friends', 205500, 893900, 143, 453, 20),
(6890329452253908230, 'Powder room make over.', 116400, 3500000, 713, 252, 20),
(6890336478094773505, '#anime #animeedit #opening #rentagirlfriend #yourlieinapril #shingekinokyojin #naruto #evangelion #SAO', 79900, 301200, 1941, 456, 52),
(6890351133366209793, '#horadearrasar', 1386, 43900, 75, 198, 13),
(6890352437425638658, 'Casual paseando a caballo #fyp #hahaha #horsegirl #horse #horsegirlvibes #horsesontiktok #horseslover', 13100, 71000, 110, 153, 28),
(6890518277752163585, 'kut wind #wind #regen #werk #selfloveclub #foryoupage #luukwatdenkenjij #voorjoupagina #fyp #fy', 2932, 40800, 91, 346, 23),
(6890553472937200898, '???❤️?   #dance #baile #viral #video #boy #lgbt #latino #slowmo #slow', 2105, 45500, 41, 511, 11),
(6890568657986931970, 'Vies eigenlijk #fyp #voorjoupagina #dutch #vjp #viraal #dutchtiktok #voorjou', 14400, 246900, 295, 451, 15),
(6890571273110392065, 'How to draw hand #artchallenge #drawing', 5000000, 68700000, 12200, 178, 14),
(6890591494126718210, 'Heartache #bleaching #pain #hairdye #backtoblack #foryou #fy #voorjou', 1620, 71300, 25, 148, 10),
(6890594872328195333, 'Reply to @lucasneal1 comment any other ideas if you want #fyp #foryou #foryoupage #HolidayTikTok  #RnBVibes  #timewarpscan', 20000, 111100, 466, 67, 58),
(6890631109583867137, '#parati #anime #videoedit #foryou #fyp #japon #animeedit #haikyuu  #haikyuuedits  #paratodos #animation', 58000, 186800, 725, 339, 13),
(6890655206644747522, 'Do you have suggests to what I have to post? #xyzbca #fyp #fy #f1 #maxverstappen #racing', 28400, 690100, 117, 380, 13),
(6890707606579563781, '#stitch with @mikeohearn #fyp #bodybuilding #fitness #motivation #gym #workout', 32100, 393800, 301, 99, 31),
(6890871255134752006, '❤️VS Code Red ❤️ #vscodered #horse #amazing #hi', 8302, 78700, 84, 460, 13),
(6890903823381056769, '“That’s akward”? #danielricciardo #sebastianvettel #f1 #formula1 #fy #foryou', 37000, 530900, 67, 301, 18),
(6890954152281918721, '#anime#animeedit #animeedits #shonen #animefight #animefan #animeshonen #shingekinokyojin #animerecommendations #animebinge #animerec #animerecs', 19900, 140500, 220, 311, 59),
(6890991934324755713, 'Come on Tiktok, make one go viral. #TFBornThisWay #iloveyou #olivia #trending #onedirection #1d #transition #peakyblinders #fyp #4u #thomasshelby', 1105, 6792, 85, 92, 11),
(6891017445188848898, 'Quem ai recicla? #horadearrasar #tiktok #foryoupage #fypgakni #fyp #youhaveto #teletransporte #tiktokindonesia #fypシ #foryou #funny #fy', 4074, 37500, 78, 39, 13),
(6891048135716506886, 'The most important move to learn if you want to start shuffling! #shuffletutorial #cuttinshapes #dancechallenge #dance #shuffle #shufflemusic #fyp', 5979, 152600, 94, 166, 20),
(6891064220658502913, 'Doing some cheat rows at the gym a few weeks ago. Sometimes when you cheat with the weight you get big gains. Anyways stay motivated! #workout #gym', 1744, 191400, 290, 222, 8),
(6891183356097187074, '#thankyoutaker @undertaker #wwe#legend #theundertaker', 5508, 51700, 135, 257, 43),
(6891212276406160641, '?', 441200, 7200000, 4398, 336, 12),
(6891240671357816065, 'දගයාගේ වෙනසක් soon ??❤️', 11900, 134900, 21, 223, 20),
(6891256269898878209, 'මේ දවස්වල තේ බොද්දි කන්න රසම රස කෑමක් ☺️ මම රසටම හදන්න දන්න කෑමක් මේක... කලින් video එකේ හදන විදිය දැම්මා .කියන්න බලන්න මේ මොනවද කියල?#curfewdays', 515, 10300, 18, 454, 10),
(6891273557981023489, '#quad #fy #race #motor #sport #work', 3119, 60900, 9, 14, 8),
(6891275439826930946, '?#ashmezz #voorjou #voorjoupagina #nederlands #nederlandsetiktokkers #nederland #tiktokholland #dutch', 62200, 493900, 3735, 185, 30),
(6891284879233879298, '', 572, 5127, 38, 128, 12),
(6891310470830034182, 'Reply to @rehnconnor #greenscreen #foryoupage #fyp #foryou #powerlifting #bodybuilding #deadlift #fitness #workout #fittok #powertok', 8080, 90800, 178, 212, 59),
(6891318229881343234, 'not ALL men, ha beat you to it ;) but most yes.', 20300, 140300, 474, 377, 5),
(6891327911140314370, 'Vorige gerapporteerd, diegene mag zn teen stoten #foryou #fitness #training #chestday #workout #muscles #gains #joelbeukers #techno #c4 #jack3d #fyp', 4239, 80500, 206, 200, 59),
(6891396863979769093, 'Reply to @jr6383638368373837', 11500, 101800, 388, 339, 14),
(6891424030172253442, '??pobre #ohnono #viral #foryourpage #sakura #naruto #animeedit #anime #otaku #parati', 28000, 254300, 378, 78, 19),
(6891434870057340162, '❤️❤️❤️❤️❤️ #horadearrasar #luizbacci #lbacci #amore', 4141, 42000, 140, 295, 13),
(6891455289002839301, 'Yee #fyp #foryoupage #foryou #xyzbca #powerlifting #fitness #college #duet #gym #wewintogether #showupshowoff #mypfp #HomeOffice #UnwrapTheDeals', 25100, 184200, 319, 6, 9),
(6891641815447932166, '(vira o celular/turn ur phone) esse deu trabalho viuuu? #naruto #sasuke #sakura #kakashi #sai #yamato #team7 #time7 #narutoshippuden #animeedit', 45900, 170700, 713, 51, 35),
(6891645928797703425, 'Ik moest vooral om m’n eigen hoofd lachen ? #juf #foryou #voorjou #school #ohno #trending', 74300, 684200, 1613, 139, 12),
(6891693185693797634, 'Tja verschil moet er zijn #boyfriend #relationship #studentproblems #study #fyp #xyzbca #viral #noticeme #schoollife #foryou #voorjou #foryoupage #fy', 3860, 71500, 68, 20, 23),
(6891701560221404417, 'The boys were proud again ❤️ #fyp #foryoupage #foryou #gym #athlete #fitness #workout #motivation #MyRecommendation #ohno #tiktok #theboys #welldone', 3142, 36900, 160, 244, 9),
(6891713222534089985, 'Wat  jouw pre over je zegt deel 2 #foryou #fitness #preworkout #mobicep #training #chestday #muscles #workout #gains #gym #fyp #fy #richpiana #c4 #fit', 13800, 252600, 284, 291, 57),
(6891747931905330433, 'Morgen begint mijn toetsweek? Wanneer is jullie toetsweek? #dutch #foryou #fy #voorjou #letsprobeerit #viral #dance #trending', 1885, 39200, 42, 364, 15),
(6891751258835750146, 'I did not expect them to make this ?? @bangenergy @bangenergy.ceo #bangenergy', 34500, 662900, 77, 144, 17),
(6891776298784509185, '#horadearrasar', 14600, 97000, 232, 403, 13),
(6891793639643647238, '#fyp #army #navy #airforce #marines #rangerschool #emarty_93  #sf_warriors', 5688, 52100, 88, 473, 58),
(6891908639829937410, 'අඩුම ගානෙ උත්සාහ කලනේ???#onemillionaudition #trending #sltiktok @kalana.sp @pradeep_niranga @amila282', 4218, 47400, 90, 396, 13),
(6891908752539274497, 'Sólo necesito tu dirección de correo electrónico y el personaje ♡ (Y datos extra, de precisar) #weeb #anime #animeedit #haikyuu #bokunoheroacademia', 74700, 254800, 5659, 156, 19),
(6891973965238111489, 'Видимо опять придётся доказывать, что звук мой? #рек #рекомендации #хочуврек #recommendations #keşfet #billieeilish #lovely', 6130, 55500, 111, 188, 15),
(6892015573861993730, 'What’s better than PIZZA??? IG: thefashionjogger #viral #fyp', 1651, 46900, 37, 402, 10),
(6892072950648802561, '#mondkapjesplicht #mondkapje #ns #corona #coronavirus #covid19 #fy #ikdoenietmee #ikdoenietmeermee #regering #ns', 22, 484, 2, 313, 10),
(6892096873453145350, '??‍♀️#fyp #newhere', 5814, 53600, 390, 280, 13),
(6892107260181499137, 'Luffy !??                                              #animeedit #animeedits #onepiece #luffy #art #fyp #foryou #foryoupage', 12900, 85500, 75, 65, 30),
(6892131074093223170, 'I\'m doing some form of this before my every heavy set ? #squat #squatmobility', 581, 19900, 8, 513, 11),
(6892133738705177857, '#duet met @jessevdreek  we live in slowmo.. #pov je loopt langs onze vriendengroep..', 1689, 50500, 46, 264, 15),
(6892150387453725953, '?? how do you this spike? ❤️?❤️#volleyball #volleyballlove', 24500, 199900, 231, 449, 14),
(6892201986381335810, 'Just wanted an excuse to flex #foryou #fyp #foryoupage #bodybuilder #fitness #workout #gains #nutrition #fittok #myjob #movember2020', 3260, 36600, 31, 460, 52),
(6892345024227331330, 'Fijn om het cijfer van een complete stranger te weten✨ #xyzbca #foryou #nederland', 12100, 165800, 161, 118, 9),
(6892440916234210566, 'Reply to @erickg93 self love comes first #foryoupage #fyp #foryou #powerlifting #bodybuilding #deadlift #fitness #workout #fittok #powertok', 9085, 61700, 118, 39, 57),
(6892449418851716354, '#train #cabride', 937, 44600, 26, 79, 13),
(6892512401351085313, 'Ouch ? @babybrandio', 171700, 2000000, 3770, 25, 5),
(6892582021672013061, '#duet with @you1stlondon leg day everyday #coles76 #gym #legs', 4823, 122000, 39, 92, 7),
(6892654388314164482, '', 3903, 41600, 65, 475, 15),
(6892685850996509953, 'වට්ටන්න කියලා ඉතලා ????', 1671, 9615, 62, 407, 15),
(6892701445603298561, 'Hahah daar is moeke weer! Kijk tot het einde! ? au mn knie mn knie! ?', 29900, 441300, 278, 234, 30),
(6892711484695121153, 'علمنا?#damascus #ثورة #دعم #syria #الساروت #ادلب #الثورة_السورية #آيفون #fyp', 12800, 172200, 520, 198, 15),
(6892735023372389634, 'Comedia jajaja#comedia #fyp #sigueme #parati #comedia #destacame #comedia', 1806, 49000, 7, 205, 15),
(6892745555836013826, '#sl__king අත් හදා බලන්න .වෙනස කියන්න', 393, 11400, 52, 31, 9),
(6892756720829893890, 'Vergeet niet op het plusje te klikken ➕?volg me ook op insta ? en niet te vergeten blijf lachen☺️  #foryou #fy #foryoupage #herkenbaar', 2380, 57200, 73, 442, 8),
(6892769736589888770, 'Wist jij dit? ? #sportplazagroenendaal #zwemmen #zwembad #glijbaan #badmeester #badjuf #werken #glijbaanchallenge', 57300, 1200000, 336, 331, 13),
(6892784023928704258, 'I love them ? #asagaotokasesan #asagaotokasesanedit #yamada #kase  #anime #animeedit #animeyuri #yuri #?️‍? #yuriedit #fyp #foryou #fy #parati', 12600, 54200, 173, 490, 12),
(6892805816492084481, 'where my selfish bottoms at? #fyp #voorjou #netherlands #grindr #gay', 2053, 46800, 42, 194, 7),
(6892822437671570690, 'ℰ??? ???  //  #tomfelton #harrystyles #emmawatson #timotheechalamet  #billieeilish #zaynmalik  #fyp #foryoupage #viral #edit #louistomlinson #4u', 426100, 1500000, 5574, 53, 23),
(6893028172024139009, '', 3337, 81700, 48, 50, 14),
(6893035754067430658, 'inst:hefesto_girl #рекомендации #врекомендации #fitness #sports #tiktok', 41000, 785700, 195, 278, 9),
(6893087415263644930, 'If you’re a girl with brown eyes hmu? #nederland #vibetiktok #british #fy #likelike #liamkratos #tiktoktraditions #fyp #foryou #dutch', 6103, 35800, 438, 226, 8),
(6893119957534510338, 'vaieral vedeo please for you for youpage', 143, 1084, 4, 373, 15),
(6893140398403816706, 'Nooit meer zorgen maken over het breken van mijn sokken#fyp #fashionhacks', 27700, 351500, 517, 265, 8),
(6893175582482255109, 'This is ma jam! @backstreetboys @nickcarter @ajmcleanofficial #backstreetboys #largerthanlife #fyp #foryou #foryoupage #MotivationMonday', 2395, 85900, 38, 61, 29),
(6893183413965147394, 'Reply to @nic23052 meet Anna The Warrior Of Strength ??? #4yp #foryou #gloryxv #limitededition #fyp #blowthisup #transition #JDWonderland #blessed', 2566, 31800, 96, 139, 15),
(6893189880231283970, '#fy', 4929, 80400, 505, 423, 8),
(6893192903749913858, 'The boys were proud once more ? #fyp #foryoupage #foryou #MotivationMonday #gym #athlete #fitness #workout #tiktok #fanedit #myhobby #motivation #abc', 447, 26200, 75, 470, 16),
(6893247155738299650, 'GUESS WHO ARE BACK? #treadmilldance #foryou #fyp #treadmillworkout #fypage #xyzbca #gym #workmate #colleagues', 13800, 201300, 85, 455, 14),
(6893253061305732357, '#fyp #fitness #crossfit #weightlifting  #girlswholift #eddygee #wheymen #MotivationMonday #gymhumor', 17400, 124400, 236, 425, 16),
(6893282758790008065, 'Reply to @ebbagirl_ Lots of requests for #billieeilish and I hadn\'t heard her music before... I\'m hooked, thank you ? #harp #cover #Lovely #fyp', 6842, 43700, 184, 235, 45),
(6893433380352822529, 'Ferrari ?? #F1 #formula1 #ferrari #mercedes #mclaren #hamilton #senna #verstappen #schumacher', 3186, 91300, 24, 255, 15),
(6893481053441281282, 'it took too long⏰  #horse #equestrians #twins #fyp #foryoupage #makeusfamousthx', 3644, 47700, 19, 299, 10),
(6893496095779933442, 'Gordon schrikt van het goedkope assortiment in de action ? #fy #foryou #foryoupage #fyp #vj #voorjou #gordon #action', 90600, 1100000, 1472, 121, 15),
(6893504738076167426, 'Choices? Je bent fantastisch! #businesscoach #zelfvertrouwen #presence #businessmentor #bedrijf #tiktokforbusiness #stappenplan #groeiendondernemen', 886, 36700, 87, 20, 15),
(6893521307023969538, 'Stuur dit naar al je vriendjes die minder moeten snappen voor ze 1 miljoen hebben #fyp #hertje #fa2gang #zopepijn #kaaskomkommer', 8161, 66100, 131, 336, 13),
(6893536744218627330, 'tag that friend ? ? #friends #concept #exam #friendship #100k #funny #concept', 8284, 53400, 247, 331, 29),
(6893596137022934274, '#dueto com @ @the_twin8 #daniela79 #newtrend #dança #fy #tiktok #inmybed', 2584, 51000, 150, 104, 15),
(6893611785295793410, 'guapas ?? #narutoshippuden #hokage #meituremi #pakura #karinuzumaki #twitor #amv #animeedit #foryoupage #_xny twixtor: @nejixc uwu', 11800, 49200, 156, 421, 12),
(6893676462788840709, 'I’ve got 50 on venmo for whoever beats it #benchpresschallenge #armday', 8082, 137200, 568, 187, 59),
(6893741937132604673, 'Looool I love this dance pls don’t come for me?? #fyp #foryoupage #edmonton', 2704, 35000, 48, 511, 15),
(6893823598432226561, 'Ready for winter?? @23nils23 #snowboarding #skitok #fyp', 23700, 183300, 155, 210, 10),
(6893846505656995073, 'Bathroom cleaning part 4. After EVERY hairwash-time it’s gets so dirty and slimey? #foryou #fyp #clean #cleaning #tiktokcleaning #bathroomcleaning', 2906, 436400, 49, 424, 15),
(6893869437884091649, 'RANDOM SCENE ? don’t know ? #fyp #foryoupage #voorjou', 46100, 321400, 199, 345, 13),
(6893875244742741253, 'Got the idea from @biggweg_  #gym #fyp #squat #foryou #deadlift', 14100, 147500, 182, 271, 21),
(6893906975730584833, 'Tumhari tasveer ??? #tokerstars #trending @shaheer._.khan1', 112800, 734700, 751, 281, 15),
(6893910918913117441, '[ALERTA DE TRANSICIONES DIFÍCILES ⚠️❗️], etiqueta a tu 5@ amig@ y retalo a una batalla de transiciones ?❤️  #transition #fyp #viral #transitioner', 11400, 68100, 294, 85, 14),
(6893922308096937222, 'Reply to @brockkk.c #foryoupage #fyp #foryou #powerlifting #bodybuilding #benchpress #fitness #workout #fittok #powertok', 8501, 79600, 60, 163, 13),
(6893922616696999169, 'Odpowiedz użytk. @thatguymax91  only one I have? is that okay?? #fyp #funny #dance', 2212, 35200, 147, 336, 15),
(6893935935684185346, '#horadearrasar fiz tb ?#horadearrasar #foryou #fyp #viral #tiktokbrasil #tiktok #3tambores #horse #horses #sentanofazendeiro #fazendeiro', 6529, 73600, 30, 8, 13),
(6894039333100129537, 'It hurts the ego, but I do respect it when it happens. #strength #impressive #relatable #workout', 3576, 32800, 40, 183, 5),
(6894047232274812165, 'Okayyy this transition tho... also I can’t find the @ of who did this first !! Help!! #fyp #foryou #viral #makeupartist #makeuphacks #transition', 20900, 75900, 230, 76, 11),
(6894050180300131585, 'Still working on that', 2157, 35100, 24, 316, 10),
(6894081763379924229, '#TimeWarpScan', 31000000, 250800000, 625700, 461, 9),
(6894206452450217217, '#kids #parents #funny', 3874, 95800, 94, 198, 15),
(6894259747290123521, 'The dogs went right in after him ? @salty.bun', 125000, 1500000, 1164, 273, 29),
(6894262046720986369, 'Secured the bag boiss wie komt online? #voorjou #vjp #dutch #tiktoknederland #viraal #ps5', 3161, 39700, 81, 48, 26),
(6894316591450705154, 'happy 3yr anniversary to ?rep?  #foryou #taylorswift  #HolidayCountdown #transition  #swiftie #fyp', 12100, 78800, 119, 119, 15),
(6894377684403604738, 'What is the intention of the Lion? #fyp #foryoupage #Depay #Lion #football #soccer #icon #sport #interland', 69200, 1900000, 373, 230, 11),
(6894393861238557954, '', 1338, 10600, 13, 46, 14),
(6894591131565247745, '#kooiaap #kooiaapspecialist #redlichtdistict #lol #dolle10minuten #macdonalds #voorjou #transport #vrachtwagen #strijder #lekkerhoorrrr', 5124, 75800, 69, 248, 21),
(6894926988453186817, '“omg” #danielricciardo #maxverstappen #redbull #f1 #formula1 #fy #foryou', 11600, 103600, 27, 289, 11),
(6894955763098193154, '#motorsport #f1 #sports #formula1 #racing #redbull #redbullracing', 8691, 78100, 151, 268, 16),
(6895042572994104581, 'New YouTube video is now live! Link in my bio!? #xyzbca #fyp #fory #workout #gymbro #training', 7281, 125200, 175, 373, 11),
(6895048600355704070, 'She ran away with me during the process of filming but it’s fine ￼￼#fypシ #foryoupage #transition #hopelesslydevoted2u #horse #horseboy #equestrian', 27400, 75300, 475, 241, 15),
(6895072166828576001, '#horadearrasar', 2940, 47700, 52, 191, 13),
(6895082457968725249, 'Lifehack when u see a pretty girl | Лайфхак когда понравилась девушка??  #thekiryalife #prank #reaction #pickupline #пранк #реакции #foryou', 1200000, 24800000, 4454, 424, 7),
(6895089837150440710, '2nd in NOVICE, 3rd in OPEN! I love you. #fyp #bodybuilding #fitness #motivation', 16400, 95000, 520, 496, 49),
(6895156886409137410, 'Reply to @jamoo12345 don’t underestimate my hops ??‍♀️ #boxjump #strongwomen #athlete', 2083, 88900, 19, 126, 7),
(6895303013867539713, 'Oh no', 227, 62200, 4, 489, 11),
(6895317957522541825, 'What is the most embarrassing moment that ever happened to you? @chersmarijkebotts @rfmondo #fyp #viral #comedy', 22200, 420000, 1006, 26, 12),
(6895318771666308354, 'Easy way??‍♂️ #minecraft#mc#minecrafter#minecraftbuilding#minecrafthacks#minecraftpe#minecraftmemes#gaming#fyp#fy#foryoupage#foryou#games#gamers#xyz', 1791, 44600, 36, 421, 29),
(6895338661622123777, 'Follow the chain #bottle #viral #bottleflipchallenge #bottleflips #fyp #foryou #fy #cool', 3697, 92000, 37, 99, 17),
(6895349449107754245, 'still got it ? #gym #fyp #deadlift #foryou', 9570, 71500, 83, 16, 42),
(6895357815066529026, 'I need one of these ? @brandon_baum', 161500, 1500000, 1640, 232, 16),
(6895388317680946433, 'please give me more advice.if you like my work,please Pay attention to me?', 208, 49000, 3, 391, 8),
(6895420478932946177, 'Rise & shine ? @drew.simms', 67300, 430100, 1578, 136, 26),
(6895453128989101313, '', 4029, 44000, 95, 196, 24),
(6895488257920945414, 'Aprender inglés con Billie Eilish. You won’t regret it. ? #billieeilish #whatthehellareyoutalkingabout #kallyeskally #transition #ingles #maquillaje', 9007, 96100, 107, 387, 7),
(6895491816532069637, 'Fav song right now ? #fyp #foryou #makeup #billieeilish #thereforeiambillieeilish #lipsync #kentucky #peircings #model #trend', 6239, 106200, 89, 308, 9),
(6895497835681287426, 'Great rally ??❤️ show some love in the comments for them?❤️? #volleyball #volleyballlove #volleyballworld', 343000, 2800000, 2732, 249, 29),
(6895703273773321474, '#cake #dripcake #vainilla #chantilly #happybirthday #dulce #chocolate #destacame #foryou #parati #tiktok #bombom', 13600, 207900, 94, 39, 14),
(6895710777043455234, 'Meer kan ik er niet van maken.. ?#tegendraats @tieske99 @jins_derksen', 4045, 84100, 224, 331, 11),
(6895741298297359617, '?? #valtteribottas #mercedes #f1 #formula1 #fy #foryou', 24300, 331900, 97, 92, 15),
(6895756274844077314, 'leave some future suggestions yall?? #anime #animeedit #fyp #GrowUpWithMe', 8831, 103300, 238, 116, 14),
(6895768030618438913, 'I will be in truble when she finds out ?? #paprazzi #fyp #viral', 2264, 81800, 60, 348, 12),
(6895806487784869122, 'water loopt op de stroom#trending #fyp #foryoupage #gevrlijk', 6274, 1400000, 173, 48, 8),
(6895808596605537537, 'Does anyone do this? ? @christineyuns', 38200, 317500, 525, 286, 48),
(6895846066961337601, '#fight#anime#animeedit#animefight#vs#berry#viral#pibes#parati#fyp', 7161, 161600, 80, 378, 5),
(6895851157751680258, '#fypシ #recomendados #enparati #fyp #recommendations #fypシ #recomendados #enparati #fyp #recommendations #fypシ #recomendados #enparati #fyp', 9030, 79200, 239, 468, 8),
(6895890526185213186, 'රැවුල වැවෙන්න බෙහෙතක්????', 7508, 58500, 17, 153, 37),
(6895916039683525890, '#duet with @matsoxnevad can’t build a house on a shaky foundation #GrowUpWithMe #tips #gym #health #workout #bodybuilder #fitness #FoodTikTok', 2036, 40800, 16, 257, 27),
(6896035426092453122, '#foryou #voorjou', 8860, 113800, 25, 42, 13),
(6896172646669552897, 'This was the best I could come up with ? #switchingpositions #HolidaysOurWay #tabletop #transition #foryou #fyp #lgbtq #lesbian #lesbiansoftiktok', 4024, 25200, 108, 313, 8),
(6896176955624918274, 'Which way would you go!? #HolidaysOurWay #computerscience #girlsinstem #stemmajor #coding #codewithme #softwareengineer', 4208, 101800, 244, 492, 15),
(6896237474381614338, '#horadearrasar', 2809, 37700, 20, 220, 13),
(6896407441815260418, 'That\'s the only thing I\'d be able to write ? #programming #coding #developer #codinglife #codinggirl #tech #compsci #nerd #java #nerdjokes #python', 20800, 181200, 252, 63, 15),
(6896449137420619009, 'Deze tips helpen echt?? #dutch #voorjou #fyp', 3542, 51800, 39, 480, 8),
(6896469887732960513, 'Cijfer raadsel! #raadsel #raadselvandedag #cijfers #klok #daughter #queensover30 #queensonfyp #dochter #netherlands', 391, 40500, 10, 183, 14),
(6896474585798053121, '', 102700, 7400000, 227, 174, 16),
(6896488817528753409, '', 1933, 49400, 28, 299, 53),
(6896497936558001410, 'Stiekem met je DS onder je kussen, dat waren nog is tijden #fyp #fa2gang #kaaskomkommer #diorsauvage #jp #hertje', 35600, 360800, 419, 263, 24),
(6896520019082005761, '#grwm #transition #foryou', 6013, 27400, 102, 489, 10),
(6896522195581897989, '#stitch with @dina This is crazy!!!! #candle #lighter', 488200, 6200000, 2009, 349, 15),
(6896541657471241474, 'Передачи от первого лица?#bellaforteens #ставрополь #футбол #football #рек #рекомендации #rec #recommendations @step__12', 831, 6599, 37, 467, 35),
(6896543335259933958, 'gotta have fun during batting practice #greenscreenvideo #fyp #foryou #viral #trending #memphissoftball #RecordsDay #NBADraft #', 28800, 337000, 181, 250, 15),
(6896548159820926209, 'අනේ සෙනුරි නංගි ඇයි ඔහොම කියන්නෙ ??', 1861, 19800, 4, 228, 13),
(6896550572653120770, 'The horses strike again￼. #horse #waterbowl #water #horses #stables #stable #horseriding #horselover #working #animals #farm #farmer #yard￼￼￼ #clumsy', 837, 49600, 13, 130, 9),
(6896571117419416834, 'part 1!!! #fyp #cleaning #howto #trending #foryou #themaincharacter #beforechristmas #trend #cute #cleantok #fall', 2471, 157200, 10, 350, 25),
(6896576430491143426, '#klein #foryou #fy #fyp #voorjou', 689, 14900, 36, 181, 8),
(6896614154682125570, '#haikyu #anime #animeedit', 84500, 369700, 293, 9, 30),
(6896759523105672449, 'Reply to @babyboy90kids Sid sriram voice ??❤️?#duet #funny #joke #tiktok #trending #royofficial #tiktoktamil #tiktoktamil', 1778, 28600, 55, 337, 15),
(6896760414055435521, 'look nou #teamwatdenkenjij #fyp #fy #voorjoupagina #foryoupage #oneliners #selflove #container', 135700, 1100000, 4146, 469, 14),
(6896784100976315650, '#horadearrasar', 7270, 26800, 221, 176, 13),
(6896810007157935362, 'Odpowiedz użytk. @tedulrichsen  is this okay with you?? #behappy #positivevibesonly', 3836, 40100, 404, 109, 22),
(6896885048063167745, 'if I had a verse on ‘therefore i am’ by @billieeilish ✨ #billieeilish #thereforeiambillieeilish #freestyle #rap #music #singing #billie', 6199, 50700, 288, 294, 47),
(6896895803676200198, 'Love my shuffle fam ? @thefredster @vopflash #shuffle #shuffledance #fyp #foryoupage #makeitmini #OurType #VansCheckerboardDay', 3257, 65300, 13, 497, 13),
(6896943341666127105, '#drag #dragqueen #draqmakeover #dragqueentransformation #dragtransformation #saturdaynight', 76600, 974900, 3254, 343, 47),
(6896962911969758466, 'Hard work ?? #fyp #foryou #fy #freestylefootball #skills', 5480, 44700, 26, 256, 14),
(6896965832933477638, 'I’m proud of you... #gym #workout #health #fitfam #gotothegym', 67400, 349800, 1687, 139, 18),
(6896976403208604934, 'hi ?,  150k, thanks for your attention.diet plan on the way ?,see you in next video#sunset #workouts #fitness #muscle #training #foryoupage', 14400, 306300, 77, 495, 8),
(6896980233421933829, 'Reply to @barryallen329 drum n bass levels! #level #beatbox #beatboxing #beatboxchallenge #drumandbass', 4310, 54500, 200, 349, 42),
(6897005299798936834, 'MiG-31 #axaviacion #fyp #foryou #parati #transition #devilchallenge #foryoupage #russia #vladimirputin', 2409, 36000, 76, 442, 14),
(6897011186349411586, 'Watch out tik tok. The leg day enforcement has arrived. #legday #enforcer #gym #law #dontletthisflop #injured', 2031, 56300, 84, 225, 7),
(6897013361804938497, '??? #foryou #horse #fyp', 102300, 1300000, 329, 473, 5),
(6897026408372096261, '#stitch with @blackbarbie098 #fyp #duet #video #explorepage #meme', 31900, 2800000, 518, 27, 10),
(6897028685413633281, '“But all the bodybuilders did them for back” yes and they also drank their eggs #OurType #bodybuilder #fitness #workout #fyp #foryoupage #foryou', 5791, 111900, 511, 265, 11),
(6897030279106530561, 'Hello imposter syndrome ? #phdlife #gradschool #phd #research', 12600, 99500, 133, 488, 14),
(6897185128322174209, 'En spoor 3 & 6 trouwens ook niet? Wie wist dit? #fy #fyp #foryou #funny #amsterdam #train', 1620, 89200, 94, 32, 9),
(6897200586106752258, 'Tag je 2e@ en 4e@ en zeg niks??‍♂️?insta:Sarkissakoo?#amongus #amongusfamily #game #dutch #tiktok #nederland #dutch #nederlands #voorjou #viraal', 30700, 161200, 827, 324, 18),
(6897251091910528257, '#foryou #bf1 #mickeymouse', 1269, 226500, 29, 68, 7),
(6897270609915661569, '❤️#foryou #foryoupage #voorjou #likeyourcutgee', 1882, 70800, 24, 248, 7),
(6897328348192656641, 'Reply to @viljamit #crossfit #abs', 1493, 46100, 38, 92, 35),
(6897348095844027649, 'Ответить пользователю @_chuya_28 @animkt #akatsuki #anime #naruto #akatsuki #recommendations #recommendationanime #animeed #kakashi #sasori #animeedit', 109700, 888300, 813, 286, 21),
(6897397404421688578, '#animeedit #anime #аниме #edit #recommendations #luffy #ванпис #onepiece #bellaforteens', 1374, 6903, 29, 155, 47),
(6897420741642390789, '#Programmers WHY ? ? #programming #hackaton #programmer #coder #codinglife #codingtiktok #javascript #techtok #techtokers #foryou #fyp', 2111, 97100, 37, 122, 8),
(6897534534636604674, 'Cleaning day ❤️??‍♀️ #viral #cleaning #cleaningvideo #saturday #dutch', 247, 51900, 0, 360, 15),
(6897535476454952194, 'PERPUSTAKAAN DI LUAR NEGERI GEDE DAN CANGGIH BANGET! ???? ig @jerhemynemo #belanda #indonesia #luarnegeri #fyp #fypindo #travel #perpustakaan #ldr', 6667, 60900, 35, 83, 42),
(6897549344015371521, 'i hate my voice #fyp #JoyWithPret #billieeilish #lesbian #gaygirl #lgbt #foryoupage #viral #trend #xyzbca', 1222, 9282, 25, 339, 10),
(6897593866283650306, 'Beide kanten krijg ik er niet in en dan lukt het opeens wel ? | Je 4e @ koopt een iPhone voor je! ? | #hetclubhuis #voorjou', 22400, 215500, 195, 435, 9),
(6897625010668637441, '[ ALERTA DE TRANSICIONES ⚠️⚠️], etiqueta a tu 3er @ para que use el audio y muestre su talento ???? #transition #fyp #transitioner #peru #viral', 17800, 103000, 281, 61, 28),
(6897643701426752770, '#anime #animeedit #naruto #narutoedit #sasuke #scqsquad #qssquad #recommendations #рекомендации', 20500, 100800, 527, 218, 10),
(6897664007780568321, 'And then this happened (see previous vid) ? @debs_fl  #tiktokfriends #thirsttrap #missmarketing', 899, 35900, 88, 118, 8),
(6897699752469695745, 'Standaard grappen? #appie #albertheijn #zelfscan #supermarkt #supermarkthumor', 7407, 78100, 41, 478, 30),
(6897699853720161542, 'This has happened 6 times in the past 7 days ? #gamer #streamer #gaming #relatable', 19000, 194900, 801, 407, 15),
(6897704483288124673, 'Watch till the end ? @snappersociety @kaliturbo', 70100, 582400, 490, 201, 15),
(6897916296025885954, 'Old one ?✨ #draft #hairstyle #hairlook #hairtransformation #blondtobrown', 22400, 263400, 200, 239, 11),
(6897931927257484545, 'Ben ik nu een echte TikTokker? #corvettecorvette #fyp #fy', 271500, 2800000, 8129, 429, 15),
(6897940245858258177, 'Grosssss @walviswerner #moving #gross #clean #foryou #fy', 1176, 80600, 35, 126, 15),
(6897961707491085569, 'ik wil nog niet weg... #ah #appiestrijders #fyyp', 4165, 70800, 134, 451, 8),
(6898020845189434625, 'the transition took way too long lol ib: @azzakabazzas @jamescharles #thereforeiam #billieeilish #transition #makeup #trend #thereforeiambillieeilish', 81900, 632900, 2968, 371, 15),
(6898022622110436609, 'Best Duo Of With McLaren ‘19 #f1 #formula1 #fy #fyp #fortoupage #foryou #redbull #redbullracing #maxverstappen #danielricciardo #mv33 #dr3', 3440, 47100, 7, 204, 33),
(6898035916682710274, 'Un rival ?? #zerotwo #darlinginthefranxx #animeedit #waifu #zerotwoedits', 8606, 50900, 147, 114, 7),
(6898056960432704770, '#horadearrasar', 12800, 95900, 289, 315, 13),
(6898057246270328070, '#duet  #justcurious #single #over30 #dating #men #WhenWeWereYounger #NeedToKnow', 5207, 84100, 455, 193, 53),
(6898062975186242817, 'Well here ya go folkes#beforeandafter #dbz #dbs #db #mui #goku#gaming #vegetoblue #animeedit #kamehameha #anime #t #yt #dragonballlegendssummons', 4736, 45200, 392, 484, 45),
(6898107264805244162, 'Wait for the LOOP? #billieeilish #transition #makeuplook #easymakeup #positionsarianagrande #curlyhair #desi #indian @blushmarkofficial  #blushmark', 4435, 27800, 64, 214, 9),
(6898178733824281861, '#duet with @tanisssssss bruh ? #transition #transitions #singing', 15400, 176500, 26, 382, 5),
(6898194233778261250, '? #francisxvk #nederlands #foryou #mickeymouse #disney', 3919, 46700, 66, 78, 9),
(6898295232723471617, 'Who needs a giraffe carwash? ??? #giraffe #carwash #beeksebergen #brabant #holland #netherlands #happy #nature #cute #animal #themepark #car #funny', 5398, 72500, 40, 496, 14),
(6898328700476083457, 'Je gaat dit met je 1e@ en 3e@ delen?insta:Sarkissakoo?#tiktok #dutch #komedie #voorjou #viraal #voorjoupagina #grapje #ouders #nederland #lachen#nl', 31200, 223500, 170, 51, 20),
(6898332186299337986, '#VeryBlackFriday #joywithpret #timewarpscan #justdancemoves #duet #asosdaytofright #equestrian #horse #4yp', 2231, 6703, 18, 237, 12),
(6898350532415540482, '#soundwavestattoo #spotifytattoo #tattoo #amsterdam #tiktok #amsterdamtattoo #spotify #shocking #tattooartist #foryoupage #coupletattoo', 5483, 236000, 100, 261, 14),
(6898363189080214786, 'Antwoorden aan @www.lisa.n1 Wat willen jullie de volgende x in blackwhite challenge zien? ??? #procreate #tekenen #blackwhitechallenge #draw #art', 17600, 99900, 454, 227, 59),
(6898373135121321218, 'Weriduwo do hamayi zey baelna eina newryo#tiktoktraditions #????????????????eritreangirlsfrikangirl', 3307, 47200, 78, 41, 15),
(6898394169249762562, 'MARQUE SUAS AMIGAS PARA FAZER TAMBÉM? #transition #criatividade #celular #flor #casamento #vestido #photography #wedding #viral #sabato #bota', 3402, 38100, 26, 450, 12),
(6898415159249816833, 'Sanity during lockdown = priceless ??#homegym  Reply to @hotmickeychocolate', 937, 27200, 12, 406, 15),
(6898451979207478533, '#greenscreen I had fun with this one lol #beatbox #beatboxing #swissbeatbox #spencerx #codfish #accentchallenge #meme #fyp #esh', 4854, 50000, 35, 357, 30),
(6898452394418523398, 'Wild vibin @keepnaturewild  #keepnaturewild #ad', 37100, 723100, 533, 495, 17),
(6898499724245093633, 'Horses deserve to be treated with respect, not forced to carry tourists through the streets  #vegan #horse #animalrights #horsecarriage', 498, 31700, 329, 366, 7),
(6898523009406045445, 'Reply to @adamcalhoun1 This has been fun ?', 13300, 64400, 569, 213, 34),
(6898598426590678273, 'Als je een certificaat ontvangt!?? #Leescoördinator #ChantalJanzen #TheVoiceOfHolland @chantaljanzen.official #Trend #Keigoed @teamcjanzen #Fy #Fyp', 3376, 52400, 13, 68, 10),
(6898613799402753281, '#kane #VeryBlackFriday #wwe #viral #memories #video #undertaker #fyp #goviral ???', 2405, 96400, 48, 352, 25),
(6898628429298568450, '#excavator#jurassicpark', 2488, 67800, 39, 345, 15),
(6898642858484567297, 'Lewis was not amused by Max back then ? #hamilton #verstappen #bahraingp #f1 #formula1 #racing #ziggosport', 16400, 251500, 106, 379, 11),
(6898699405898059010, 'Iphone bend test? #tiktok #viral #fyp #iphone #test #bend', 936200, 15300000, 27100, 30, 19),
(6898706823541542146, 'Reply to @coolkid0183 #greenscreenvideo - it’s probably half decent. I’m more explosive than most expect. #vertical #jump #hops #athlete', 4625, 51500, 131, 202, 15),
(6898721943978036481, 'regretss ? #fyp #foryou #curls', 10000, 72200, 274, 240, 12),
(6898757137154051330, '#foryou #fyp #voorjou #wok #eten #koken #cooking #fypシ #haagschekeuken #foodtiktok #tiktokcooks #chefsontiktok #fireworks2020 #pumpupthejam #dutch', 1657, 40500, 143, 186, 58),
(6898791307016146177, 'Hier geloven deze meiden in: geesten  #قران #nederland #koran #trending #arnhem #trends #foryou #tik #trending #foryoupage', 7070, 97900, 222, 214, 40),
(6898859679217143046, 'this is my favorite tiktok dance #tiktok #dance #pumpupthejam', 71000, 675400, 256, 448, 15),
(6899001802130197761, 'its a lifestyle. Who can relate? #morning #working #riseandshine #lifestyle #dailyroutine', 1763, 31300, 68, 470, 6),
(6899086619228376321, 'Grim the butt shaking horse #waitforit #horse #barnanimals #farmlife #equestrian #fyp #foryoupage #twerking #funnyanimals', 1466, 102800, 23, 118, 20),
(6899104646543969537, 'In LOVE with this VIEW ? IG: thefashionjogger #running #viral #fitgirl #view', 2164, 42300, 75, 131, 12),
(6899108523091823874, '#fyp', 1269, 259400, 10, 82, 10),
(6899109657395219717, '@realalliwilbourn1', 11300, 60700, 231, 245, 32),
(6899113568092949761, 'Tell me about you? #petyyyyyy #puppy #cute', 214700, 1200000, 2694, 390, 20),
(6899116261746281730, 'The collab you didn’t know you needed, myself and @this_esme ??? #horserider #horsegirl #equestrian #equestriangirl #riding #horse', 58900, 309000, 874, 161, 14),
(6899128133430037765, '#fyp #foryou #gainz #broscience #bro #fitness #brosciencelife #gym #foryoupage', 6289, 61100, 318, 41, 46),
(6899136673347685634, 'Thank you so much for all the support!!', 86000, 776800, 421, 149, 8),
(6899141975178480898, 'wanneer we weer uit mogen gaan ??#fy', 4386, 114000, 68, 239, 10),
(6899164169870773505, 'Oops ? @b.carr #OhNo', 68100, 1200000, 1342, 392, 15),
(6899171884571626753, 'Kakashi mi fav?? { #kakashi #kakashihatake #naruto #anime #weeb #edit #animeedit #otaku #funny #xyzbca #fyp #fypage }', 103900, 351700, 758, 47, 26),
(6899346784921849090, 'РЕАКЦИИ НА ТАНЦЫ В ТЦ ? Какой у вас город ? ? #tuzelity #shuffle', 219100, 2100000, 2352, 154, 14),
(6899411373265063170, 'Dc- @enola.bedard #foryou #dance #viral', 2287, 28700, 63, 199, 15),
(6899411430660001026, 'De qual gostas mais? Good guy ? or Bad guy? ? #linhacongelante #timewarpscan #mirror #transition #dlaciebie #reflection #kapinha #sike #spooky #fyp', 3997, 34700, 23, 327, 13),
(6899418795987717377, '? #transition #chile #tatuaje #lesbians #loveislove #love #dúo #tattoo #fyp #?️‍? #lesbian #parati #lgbt #lgbtq #girl #trend', 3090, 36300, 89, 249, 15),
(6899441890677116162, 'Dit filter laat zien op wie ik lijk.. #shapeshifter #shapeshifting @bramkriktok', 14600, 167500, 344, 7, 9),
(6899443808321277185, '#الحق #مسيحين #الانحيل #يسوع #محبه #bijbel #religion #respect #اسلام #christelijk #middenoosten #سورايا_العراق #الكتاب المقدس', 561, 9843, 1090, 117, 15),
(6899462833088531714, 'Which colours your favourite?? ❤️???  #beanie #VeryBlackFriday #gloryxv #fyp #xybca #blackfriday #4yp #supportsmallbusiness #transition #colourpop', 5209, 115600, 169, 125, 8),
(6899477494659960066, '13 KM RUN with 10x1min fast + 1min slow? from 3’:40/km to 4’:35”/km ? IG: thefashionjogger #workout #fit #sporty #running', 3218, 52700, 172, 24, 14),
(6899489414460837121, 'Based on a true story ?.                                  #fy #fyp #foryoupage #foryou', 2266, 41800, 25, 151, 7),
(6899497158769200385, 'Bestaat dit ? ?? #fy #fyp #foryoupage #foryou #dutch #trouwen', 1051, 35200, 218, 284, 6),
(6899499316600147201, 'Waarheid... #fy #foryou #voorjou #funny #netherlands #viraal', 29500, 190100, 841, 471, 58),
(6899510560556158209, 'Wasn’t exactly the same dance but close enough ? dc: @notstoud_ @zacklugo @brandonmundine #dance', 3564, 28300, 71, 298, 10),
(6899519135198383361, 'Moet ik dit nog een keer proberen? ?? #foryou #dutch #foryoupage #fy #nederlands #fyp', 11700, 175100, 77, 487, 41),
(6899555224801791234, '#horadearrasar #fy #foryou #f #sentanofazedeiro', 3434, 33800, 82, 153, 13),
(6899557108593773829, 'Reply to @frosty6892 Skål #gotothegym #viking #vikingtiktok #thor #mjolnir #fitfam #gymtime #workout', 46500, 270600, 902, 294, 28),
(6899619652402449670, 'How To Look More Muscular In Your T-Shirt #tshirt #mensstyle', 47300, 1100000, 528, 372, 15),
(6899676363188473093, '#fyp #dancechallenge #playstation #addisonrae #charlidamelio #billieeilish #tatemcrae #arianagrande #dualipa #dixiedamelio #madisonbeer', 114600, 478400, 5892, 413, 15),
(6899706911059397893, '#fyp #foryou #dancing #tiktokteacher #learn', 82200, 1500000, 511, 179, 21),
(6899727630472383746, 'අනුන් දාලා විසි කරපුවා...අනේ මන්දා...#foryoupage', 507, 7037, 23, 284, 54),
(6899729878560656641, 'Testing vfx #demonslayeredit #kimetsunoyaiba #demonslayer #amv_anime #amv #kimetsunoyaibaedit #animeedit #tanjiro #fyp #foryoupage', 8243, 30500, 315, 468, 9),
(6899736406495677697, 'blijf vechten voor onze vrijheid! #vuurwerkverbod #mondkapjesplicht #langefrans #paulelstak @tisjeboyjay', 1397, 44600, 297, 321, 15),
(6899737900120935681, '', 1698, 44500, 5, 451, 15),
(6899784988095499522, 'Dubai here I come ?.', 1829, 63200, 371, 51, 10),
(6899791521470778625, 'Connected Equestrian girls Dancing into the weekend #equestrian #equestriangirls #horse #shelookssoperfectchallenge #americanapperal #reiner #horse', 4171, 28700, 31, 182, 15),
(6899811757322194177, '??? #daniilkvyat #tororosso #f1 #formula1 #fy #foryou', 5161, 58300, 51, 166, 25),
(6899842091749215489, '#exvriend #relatie #relatieproblemen #herkenbaar #grappig #voorjoupagina #grappigevideos #grappigefilmpjes #relatietest #exvriendjes #exen #humor #fyp', 2685, 67100, 48, 473, 15),
(6899843622355750145, 'Me jogou no lixo e a amiguinha reciclou ?‍♂️??// insta : cleisinho029 ?// #horadearrasar #foryoupage #foryou #mejogounolixoeoamiguinhoreciclo', 21400, 128200, 180, 196, 13),
(6899845326161595649, 'My Deadlift Journey??. #deadlift #deadlifts #deadliftchallenge #gym #gymlover #bodybuilding #powerlifting #motivation #workout #natural #fy #back', 4775, 69400, 265, 146, 31),
(6899852150793358594, 'But who let the dogs out? #fyp #fy #f1 #f1tiktok #vettel #wholetthedogsout', 15000, 249400, 50, 327, 11),
(6899861794760690945, '12 KM RUN ❤️ ARE YOU READY? IG: thefashionjogger #running #workout #fyp', 4774, 113400, 255, 92, 9),
(6899867641570135302, 'Back day tips!', 3200, 71000, 36, 234, 15),
(6899884198279073025, 'O mundo girou     #horadearrasar #fy #fyp #foryou #geraçãotiktok #trans #foryoupage #pravoce  #acre #homemtrans #lgbtqi #omundogirou  #viral', 218600, 1900000, 2397, 430, 13),
(6899884609530612993, '#horadearrasar Éo REI né vida ?', 7436, 62900, 68, 299, 13),
(6899964626478320902, 'People who workout, I know you can relate ? Please keep me in your prayers #fitness #gym #workout #leg day', 11800, 87400, 476, 10, 9),
(6899978363759267073, '#fyp #foryoupage #xyzbca #funny #viral #girls #ontario', 6289, 86900, 66, 119, 10),
(6900050539141270785, 'In a Club в Пятером ?? Пишите флаг вашей  страны в комментариях ?️ #tuzelity #shuffle', 148800, 1500000, 2044, 468, 9),
(6900076260693724417, '#ASOSinthebag #trending #EXTRADateReady #roblox #wwe #asosintheba #gym #duisburg #duisburg #ronaldo #workout #tiktokindia #bodybuilder #ronaldo #worko', 1567, 107500, 44, 27, 9),
(6900102046876208386, '? of ? ? #voorjou #modelfood #foryou #fyp #model', 4220, 38400, 44, 33, 21),
(6900178346919857410, 'фанаты сакуры зайдите в комментарий ✨#sakura #sakuraharuno #shannaroo #edit #animeedit #fyp #fypシ #recommendations #foryou #shannaro #sakurabest', 7320, 29000, 424, 401, 17),
(6900185373540961537, 'Naast levenslange straf zijn er ook landen die de doodstraf uitvoeren. En dat nog in 2020..? #world #facts #list #gaytiktok #loveislove', 3118, 31100, 406, 41, 30),
(6900196713852701954, 'قال و زوجوه بيعقل شايف الوضع عكس جانن هاد  بكري #شلة_هولندا #kat #قط', 7187, 72100, 160, 230, 15),
(6900197975818095873, 'comment what I should cover next! :) #fy #tiktokviral #viralsinger #alabamaarkansas #bekind #lifeathome', 6270, 52700, 226, 28, 21),
(6900235731059494145, 'Give it a try ? #crossfit #cardio #training #crossfitworkout', 1086, 27900, 7, 172, 9),
(6900256765527477506, 'Wat een top nummer ??? #francisxvk #foryou #geefjeover #geefjehelemaal #pink', 2384, 34300, 60, 111, 10),
(6900302214896618757, 'Reply to @boiledleche like and comment if you want me make more videos about scummy things gnc does #gnc #fyp #gym #fitness #muscle #SmallBusiness', 5328, 53800, 106, 81, 58),
(6900344945777872133, '#fancy #fancypants #fancyaudio', 988, 65200, 14, 390, 15),
(6900396011722689793, 'Proyecto HR Otro video de 1 millón!!??????#architecture #construction #engineer #home #luxury #transition #interesting #foryoupage #foryou', 7064, 70600, 102, 495, 41),
(6900478499933408513, 'Factory days #redbull #redbullracing #f1 #formula1 #fy #fyp #foryou #foryoupage #viral #tiktok #xyzbca', 21700, 292500, 78, 383, 41),
(6900492821862599938, 'Wie herinnert zich dit nummer nog ? #jumpstyle #2007 #voorjou #jumpen #xyzbca #vooru #vroeger #foryou #jeugdsentiment #fypシ #fyp #jeckyllandhyde #fy #', 26400, 352200, 977, 111, 22),
(6900563923892800769, 'I’ll just leave it here lol #quarantinemood #fyp #fy #foryoupage #songwriting', 20200, 87700, 333, 463, 32),
(6900566632859585793, 'Tagg je tiktok maatje☺️ #fy #fyp #foryoupage #ruinourfriendship #loversinstead', 74300, 622700, 1440, 482, 10),
(6900606242016840962, 'BLUB ?', 3500000, 64500000, 23100, 114, 12),
(6900621838653869313, 'Heeft ooit iemand jou hard gebroken...?', 1723, 72300, 79, 336, 10),
(6900632361621392642, '???#شلة_هولندا #سوريا #kat #foryou', 3077, 40900, 42, 395, 15),
(6900701600440978694, 'The people’s champ runs the house #therock #wwe #fyp #fypシ', 2428, 65200, 33, 89, 15),
(6900735754700459270, 'Reply to @jaredwiggins2832 #foryoupage #fyp #foryou #powerlifting #bodybuilding #deadlift #fitness #workout #fittok #powertok', 9504, 78300, 112, 393, 28),
(6900916467936529666, 'Jij en je 2e @ mogen bij ons in het VibeHouse op bezoek komen... ga je??', 34900, 194600, 6423, 25, 14),
(6900932062853893378, '?? #totowolff #mercedes #f1 #formula1 #fy #foryou', 3412, 41200, 36, 217, 6),
(6900948690186407170, 'tag de gierigaard van je vriendengroep! #ruinourfriendship #loversinstead #friendship #friends #dutch #funny', 10700, 90700, 209, 12, 11),
(6900949746962238721, 'Antwoorden aan @x.roosf.10 De 5e in je @ wil in een circus werken ? #blackwhite #clown #featureme #feature #famous #4up #fy #4u #drawing #procreate', 36300, 260800, 1099, 228, 59),
(6900951421374516481, '#horadearrasar', 11000, 150100, 40, 261, 13),
(6901020148426099969, '#fypシ #amv #anime #animation #edit #haikyuu #hinatashoyo #weeb #animeedit', 15200, 62300, 126, 332, 33),
(6901026135119760642, '#drift #fyp', 21800, 267300, 80, 376, 9),
(6901063021955681541, 'Reply to @thatskie84 Here you go. I do have tutorial for each ones. So there are 4 steps you’ll need to practice.', 5612, 139900, 148, 41, 44),
(6901122865928670466, '#onepiece #luffy #edit #recommendations #animeedit #ванпис #аниме #БезОстатка', 34300, 346600, 183, 418, 17),
(6901155395100806401, 'She can have all the horses she wants?? #horse #horses #animals #equestrian #girlfriend #fyp #foryou #horsegirl', 23900, 105700, 171, 7, 13),
(6901195423273291009, 'That’s it. ? #horse#horsegirl#equestrian#equestrianlife#horsememes#horsesoftiktok', 42600, 132800, 742, 274, 11),
(6901216725325384961, '#БезОстатка #football #rec #krotik26 #recommendations #рек #футбол #рекомендации', 1335, 12800, 32, 328, 23),
(6901216792186785025, 'laat je gaaaannnn #voorjou #foryou #gioswikkers #alsjehandoverjekontglijd #laatjegaan #cringe', 116200, 1600000, 4367, 301, 10),
(6901276149175815426, 'It happens sometimes...##fypシ #fy #fyp #areyoudumb', 2322, 94300, 45, 444, 9),
(6901276629268581633, '✨Kunst✨ #sorry #teletubbies #help', 15500, 494800, 214, 32, 8),
(6901321371113032962, 'Oeps, het bord stond nog aan! #areyoudumb #meester #foryou #school #fyp #docent #leerling', 11300, 155600, 127, 184, 8),
(6901321675988651265, 'Deze video werd verwijderd door tiktok.... FOR WHAT?', 29000, 291100, 436, 425, 10),
(6901322841849974017, 'You want this...try this ?? #wantthischallenge #fyp #foryou #fitness', 590400, 6700000, 2976, 2, 36),
(6901344153343364354, '#ahmad_star_1 #vs شو خترتو ?', 4147, 18000, 1756, 336, 11),
(6901356285833252098, 'Pure waarheid! Laat je nooit afleiden van je doelen & ga er met de volle 100% voor ? #motivation #goals #viralvideo #stop #positivity #fyp #trend', 2308, 31000, 97, 129, 34),
(6901387960424484097, 'i got this from @thisusernameisrare #fyp #viral', 102800, 889700, 745, 36, 9),
(6901420903322635525, 'Reply to @chancesonnier97 just a little knowledge for you ? #army #armyreserve #fyp #miltok #usarmy #lildanceydance', 5804, 65500, 721, 49, 42),
(6901458108372077826, '?‍♀️ #horse #ohno #royalwinterfair #horseshow #equitation #fyp #disqualified', 7986, 58500, 165, 474, 13),
(6901592880129805570, 'whoops it was too fizzy ?', 13100, 311800, 1191, 419, 8),
(6901655785407909121, 'Очень сильный момент #naruto  #sasuke #sakura #anime #animeedit #recommendations #fyp', 112600, 540800, 1179, 506, 16),
(6901670973137898753, 'heb nu ong 100+ draften maar tis gelukt hoor pfoe #foryou #fy #netherlands !!', 15900, 196900, 176, 458, 15),
(6901681280128208130, '#jhope #junghoseok #ПорадуйМаму #검둥개 #bts_official_bighit #recommendations #방탄소년단 #глобальныерекомендации #р_е_к_о_м_и_н_д_а_ц_и_и #horse', 6025, 18100, 217, 117, 10),
(6901719665584672005, 'Reply to @playboymango I’ve gotten some complaints #warrantofficer #army #miltok #chieftok #chief #usarmy #usmilitary #fyp #comment #like #follow', 13000, 248000, 865, 252, 10),
(6901723835310116101, 'If you don’t know me guess what sport I play.. I’m trying to see something? #foryou', 5021, 62000, 549, 311, 9),
(6901787858395286786, '#cartiktok #bmw', 21600, 224000, 376, 406, 10);
INSERT INTO `short_videos` (`id`, `text`, `tymCount`, `playCount`, `commentCount`, `user_id`, `duration`) VALUES
(6901795238021696769, '#duet met @comet_fire', 179600, 1100000, 6389, 318, 16),
(6901798489315921158, '', 4411, 72500, 35, 3, 14),
(6901815472178646274, 'Novia de alquiler. ♥️ #kanojookarishimasu #rentagirlfriend #waifu #kawaii #otaku #anime #animeedit #girlfriend', 61600, 345000, 972, 37, 15),
(6901832410091064582, '#duet with @qneqs I had to jump on this ? #CashAppInBio #miltok #army #navy #marines #airforce #fyp #foryoupage #trending #zyxcba #lmao #hi', 9048, 80500, 52, 260, 6),
(6901833660224326914, 'Never satisfied... #fitness #fyp #gym #viral #fitnesschallenge', 700, 35800, 68, 400, 9),
(6901972269636078850, 'Should this have been a fRed card? ?? #fred #paredes #manunited #psg #ucl #ziggosport', 3169, 37900, 42, 277, 10),
(6901995461238934785, 'Did you expact that? ? #foryoupage #trending #fyp #Taekwondo #fitness #sport', 16400, 212500, 286, 473, 15),
(6902010787800370433, '#drawing', 822200, 12900000, 1960, 506, 29),
(6902015702576762113, '#fyp #dutch #nederland #voorjou #snapchat #filter #camera', 4710, 40200, 52, 32, 9),
(6902038249573731586, '#horadearrasar #amizadeverdadeira', 7575, 67200, 93, 443, 13),
(6902048025334615297, 'Find this fiesta at Mama Kelly in Amsterdam✨?? seriously though: Tacos or Burritos?? #foodie #foodlover  #tacos #mexicanfood #amsterdamlocal #nl', 7222, 76400, 287, 29, 15),
(6902048470417378561, 'Hoor jij ze allemaal? ?⚡️', 36500, 312600, 994, 272, 59),
(6902084818440408321, 'Облом века ? #anime #boruto #naruto #konohomaru #recommendations #anime #animeedit #ПорадуйМаму #безостатка #можноврек #рекомендации', 7001, 56700, 35, 20, 20),
(6902096916776209665, '#hirugashi#sad#anime#animeedit#animes#viral#tendencia#fyp#parati#protec#love#amor#otaku', 39200, 230700, 250, 368, 42),
(6902103334392450306, 'Reply to @brandondeee - I’m ready when you are sweetheart. #anytime #letsdance #squats #gym #workout #worldstar', 2232, 47900, 27, 504, 4),
(6902115301094116610, '#nederland #vervelendd #nederlandsetiktokkers #funny #fyp #foryoupage #voorjoupagina #lgbt #lesbian', 16700, 94200, 504, 497, 53),
(6902294648451075330, '#standwithkashmir #foryou #foryoupage #featureme #outfits #slowmo #transition', 168, 6046, 14, 292, 15),
(6902396851106925825, 'Вот и туториал ✔️ #туториал #аниме #наруто #naruto #anime #animeedit #рек #limonka_pechenka #ПорадуйМаму #ДавайБросать #рекомендации', 712, 6458, 24, 431, 60),
(6902406836176162049, 'Hey @netflix you gave us Emily in Paris, here’s a newer idea #europe #america #emilyinparis #americanstory #fyp #newyork #losangeles', 3139, 23400, 135, 89, 57),
(6902412854188674306, 'I’m the combination #fyp #foryou #fy #voorjou #voorjoupagina #viral', 6454, 63200, 107, 79, 15),
(6902420063882628357, '#duet w/ @janickthibault / #africa #toto #80s #fyp #foryoupage #foryou #theataris #quietdrive #popgoespunk #punkrock #poppunk #cover #zyxcba #drummer', 692300, 3500000, 10700, 40, 59),
(6902424258006273281, 'Waarom zijn gymdocenten zo? (Insta: larsspeters) || #foryou #voorjou #dutch #school #docent #fyp #gym #bruh #gymdocent', 86000, 590600, 2875, 386, 11),
(6902436491536944386, 'WEL EENS PIJN GEHAD DAT PLOTSELING VERDWEEN? #pijn #ziekenhuis #voorjou #middelbare #sporten #blessure #jouwverhaal #verhalen', 5812, 43500, 86, 228, 17),
(6902451462962547969, '#dilemma #vlees okee laat het allemaal even weten ik weet t namenlijk nie meer #fy #dutch', 678, 27700, 329, 426, 42),
(6902459846260559106, 'Wait till the end?? IG: miafitness_sw #winterdiy #lernenmittiktok #gymnasticschallenge #backmuscle #strong #crush #mistake #fitgirl #forYou', 2029, 26900, 27, 281, 14),
(6902476909045615877, 'any questions? #gotothegym #flexfroday #gymtime #workout #fitfam #swolefam #workout #homegym', 37200, 262600, 1280, 314, 20),
(6902512873109605634, 'Allebei lekker geshopt bij de Hunkemöller, dit was het eindresultaat #gifts #hunkemöller', 8232, 212700, 35, 39, 6),
(6902555378651794690, '#horadearrasar #aquinao #sexta #sextou #agrobaby #agroboy #caipira #roça #sertanejoraiz #bebestiktoks #agro #trator #fyp', 102000, 1100000, 644, 54, 13),
(6902680579989359874, 'Wanneer kwam jij erachter? ?‍♂️ #rijst #lifehack #foodhack', 8990, 246400, 380, 86, 19),
(6902724999757532418, '??#fyp#foryou', 161200, 3600000, 0, 387, 15),
(6902725059429911809, 'بكري ماهمو الا مرتو. والاكل ??ياخسارة  الشكلاطات بس', 11200, 124000, 213, 341, 15),
(6902725442260749570, 'werken is belangrijk #fyp #fy #KerstInHuis #viraal #foryou #tenbrinke #werk #voorjou #callanambulancebutnotforme', 4193, 127200, 13, 66, 8),
(6902733196811635969, 'Antwoorden aan @eefje_kwz  even goed nadenken #fyp #foryou #fy #sandroscalia1999 #jokes', 4568, 82700, 91, 224, 7),
(6902751117805899009, 'Iknow maagdenvlies bestaat niet? #foryou #fyp #foryoupage #fy', 2080, 39300, 19, 223, 9),
(6902810912416189701, '245lbs ?? Tag your strongest friends! Duet this with your best attempts ?? @sumnerhaye where you at? #deads #deadlift @blackstonelabsofficial', 7367, 133900, 387, 507, 25),
(6902819837345533186, '', 12900, 94900, 143, 188, 13),
(6902823504383659266, 'Vandaag alle muren in ons huis geverfd! ?️?', 651, 81600, 42, 133, 21),
(6902938842874121474, '#duet with @asleep.emma #greenscreen #foryoupage #foryou #fyp #wwe', 13500, 143700, 564, 449, 8),
(6902941615376157954, '#giojade #voorjou', 30600, 360000, 248, 3, 6),
(6903050763124215042, '#horadearrasar #ambev #tiktok #brahma #horadearrasar', 7446, 48800, 327, 207, 13),
(6903061991225691394, '', 36400, 1700000, 370, 483, 20),
(6903091992268459265, '#duet with @big_shiwa  අලුත් එක Follow කරන්ඩෝ @pawandissanayake7 #fyp', 833, 9373, 6, 285, 15),
(6903134814715661570, 'Bourtange, the Netherlands ?? #travel #traveldiaries #fyp #foryou #dreamy #christmas', 11200, 139500, 370, 225, 16),
(6903157559578987777, 'I’m in love with these pants??#upsidedownamsterdam #netherlands #KerstInHuis #foryou #fyp #dance #indonesia', 5320, 47400, 50, 433, 9),
(6903178284012522754, 'He’s the cutest omg #equestrian #horse #dressage #horserider #horseriding #stallion #blackbeauty', 73300, 1200000, 583, 238, 16),
(6903188918078852354, 'Miren a los señores de atrás JAJJAA #mallplaza #baile #siguemeytesigo #parati #viral #fyp', 5611, 63800, 184, 464, 15),
(6903190549960920321, 'Cute Dutch sounds part 2 @rob.morrisw @ricmorrisw @dominiquewienk ??? #huphollandhup #livinginholland #dutch #languages #venezolanosenholanda', 7418, 80800, 108, 124, 25),
(6903247940127640834, 'I feel so sorry for you George? #georgerussell #mercedes #f1 #formula1 #fy #foryou', 25700, 197200, 414, 451, 9),
(6903317821770484994, 'Missing this weather? @katelyn_thompson_ #fyp #gymnastics #tumbling #cheer #flips', 48100, 511200, 460, 509, 12),
(6903324940011916546, 'Reply to @.tendou_nugget5 train ride with #tendou #haikyuu#haikyuuedit#anime#animeedit#livewallpaper#animelivewallpaper#livewallpaperanime', 46500, 125400, 1035, 491, 13),
(6903508885970193666, 'Reply to @lupsidash train ride with #kenma #haikyuu#haikyuuedit#anime#animeedit#livewallpaper#animelivewallpaper#livewallpaperanime', 129200, 340500, 2629, 272, 9),
(6903527132979318018, 'شكراااااال كتييير بحبيبكم والله ???#جيش_بكري #اكسبلورر #هولندا #السعودية?? #سوريا?? #العراقي?? #فلسطين  وجميع المتابعين ربي  يسعدكم?', 3755, 33500, 55, 429, 15),
(6903551807230872833, '#duet with @eorth78 Lena is not impressed ? #horse #equestrian #cheval #farmlife #fyp #foryoupage', 6144, 25000, 25, 279, 10),
(6903552918159379713, 'Koe ? #koe #mindfuck #snelheid #jajajaja #ja #lachen #dochter #queensover30 #queensonfyp @marrrittt', 5626, 126400, 48, 288, 15),
(6903574645899939074, 'For the ones who don’t know how to do this?? #foryou #fyp #outofbody #imaghost #boo dc: @.crapper', 14400, 208900, 77, 432, 13),
(6903579807641095430, 'Reply to @mikeymousehouseboi', 5753, 89100, 568, 388, 15),
(6903585019017645314, 'Vers uit mijn nieuwe video: 3 Beste Borst Oefeningen??', 5606, 81000, 30, 502, 9),
(6903653180282817794, 'FR ! Lol#foryou #dunkin #charli #viral', 32000, 161400, 1600, 46, 14),
(6903703219923340550, '@erin.66kg we’re tired lmao #foryoupage #fyp #foryou #powerlifting #bodybuilding #deadlift #fitness #workout #fittok #powertok', 14600, 114400, 92, 148, 19),
(6903738407227297026, 'උස්සපු එකාව අහු උනා', 1525, 10400, 93, 102, 9),
(6903809474268646658, 'Ответить пользователю @anwexte вот богиня темари) #naruto #temari #shikamaru #gaara #anime #animeedit #recommendations #fyp', 20700, 102400, 86, 505, 11),
(6903854177072499969, 'Ruut doet mee aan de hype ? #foryou #fyp #voorjou #voorjoupagina #foryoupage', 2497, 45500, 28, 122, 14),
(6903867852672077057, 'Based on a true story. #hijab #muslimtiktok #inclusion', 3080, 39900, 32, 32, 15),
(6903898067490163969, 'So naar @royalistiq Sws! Uitbrengen?? #fy #fyp #voorjou #zingen #royalistiq', 23200, 194200, 2104, 50, 16),
(6903908757386841346, 'Missen jullie de feesten ook zo? (Insta: larsspeters) || #foryou #voorjou #dutch #school #party #toets #tentamen #fyp #sad #single', 3725, 32000, 26, 204, 8),
(6903923265945849089, '', 41500, 382100, 368, 355, 10),
(6903924035164376321, 'What kind of fruit is this? ? @heidisdream', 36100, 762500, 1108, 467, 9),
(6903934953705245954, 'Reply to @g3ck059 can also be done with bands #fitness #exercise #muscle #chest #workout #pecs', 3067, 26600, 78, 101, 50),
(6903940573091187973, '#stitch with @midwestswingin #ThinkingAbout #UpTheBeat #fyp #fypシ #foryoupage', 15000, 79500, 276, 159, 15),
(6903949620775324930, 'ig I\'m wrong then #spiderman #cosplay #ThinkingAbout #HouseTour', 4967, 47200, 46, 477, 9),
(6903954146630569217, 'if you know you know #fyp #voorjou #dutch', 5047, 107600, 61, 314, 9),
(6903969832719453445, 'Draft', 10600, 141500, 161, 144, 10),
(6903974884154608897, 'Uuuuhhhh.... #foryou #fy', 1089, 32300, 6, 463, 8),
(6903990740993477894, 'Finals are over and the only thing I wanna do is make tik toks but I lack the dancing/rhythm part :( #sad #UpTheBeat', 7940, 113300, 91, 113, 10),
(6903994055907118338, 'It\'s always the most difficult workout ?', 1339, 28200, 26, 362, 11),
(6904037272048389378, '#parati #foryou #dakaretaiotoko #videoedit #yaoiedit #bl #animeedit #fujoshi #fudanshi', 63600, 222000, 2702, 120, 12),
(6904040351607147781, 'Special 1M followers video! “He’s a Pirate” ft. my roommate Jakob ?‍☠️?? #rimbatubes #piratesofthecaribbean', 84500, 694100, 988, 444, 59),
(6904066579655396610, '#faloow #emyemeralda #foryou habar nu am ce mi-o venit aici ??????', 2698, 48600, 185, 108, 15),
(6904096377152785665, 'Like and follow for part two | Discord link in bio #greenscreenvideo #ThinkingAbout #anime #fyp #animeedit', 132900, 611100, 2937, 371, 19),
(6904148139716955394, 'Reply to @mai.san.tiktok___??#nezuko #amv #otaku_forever #animeedit #otaku_forever', 40900, 309300, 417, 290, 10),
(6904174259589958913, 'Altijd t zelfde gezeik #fypage #foryou #fyp #trucks #tiktoktruckers #50tonarmy?', 4634, 92000, 1, 266, 15),
(6904182931909004545, 'Deze video is voor een kleine groep mensen bedoeld #zopepijn #fyp #fa2gang #haat #feiten', 4221, 37500, 77, 63, 10),
(6904227603067047170, 'Antwoorden aan @nitro_turbo #fy #xcbyza #house #1k #dollar #euro #google #googlemaps #maps #i #know #wherelive #hehe #come #andtry #fyp #fypシ #fya', 2008, 99700, 678, 255, 14),
(6904236597529595138, 'Haring ver van t’ mes #hollandsroem #haring #holland #fypシ #guiltypleasure #lekkerneef', 262, 40300, 13, 494, 19),
(6904238654751870209, 'Рукожопы#встилеRIO #рекомендации #рек #стройка #recommendations #рукожоп #стиральнаямашина #стиралка', 28000, 2500000, 668, 452, 9),
(6904256013650758914, 'Storytime #vjp #voorjou #fyp #foryou #dutch #tiktoknl #vriendin #storytime #viral #xyzbca', 22100, 253000, 179, 357, 59),
(6904264506998951169, '??| Elke school heeft zo’n docent.. #fy #fyp #foryoupage #KerstInHuis #school #teacher', 9280, 144100, 53, 422, 6),
(6904271117783928065, 'Who say my Pokémon boxers at the end?! ??? #parkour #fail #ohno #spiderman #cosplay #ohnono', 6834, 32800, 76, 319, 9),
(6904279792388984066, 'Our #Colombian ⭐️ is back! ? #Sinisterra #Feyenoord #Soccer #Training #FY #Celebrate #Football #ForYouPage', 9099, 103000, 124, 492, 11),
(6904294597862755585, '#roadmarking #work #satisfying #roadmarker #signalisation #white #fyp', 4075, 358500, 22, 206, 30),
(6904335595301080325, 'Any request? ? #wantthischallenge #gymshark #fitness #homeworkout', 28500, 346100, 363, 252, 30),
(6904338682598264069, 'How did he do this? ? #how #transition #howdidhedothat #HolidayCrafts', 27700, 228100, 236, 174, 11),
(6904344469747911942, '5 months later and I finally get to go home!!! #finals #airforce #college', 12400, 82300, 131, 431, 13),
(6904359798809054470, 'sheath cleaning ain’t it #fyp #horse #gelding #barrelracer #rodelife', 21300, 135100, 603, 443, 7),
(6904384164641000705, 'Dat laatste pakt me ??', 1112, 69700, 107, 186, 28),
(6904391764824608005, '#gymlife', 13500, 76600, 168, 444, 59),
(6904391934735944961, 'SÍGUENOS EN INSTA:DulcesGemelas? #gemelas #destacame #trend #fyp #challenge #dancechallenge #baile #twins #outfits #viral #dance #funny', 17200, 215600, 80, 27, 11),
(6904396013923060994, 'Bekijk t altijd van de positieve kant hé !! #foryou #fyp #KerstInHuis', 20500, 190200, 256, 479, 10),
(6904405263386758402, '', 428, 8916, 4, 193, 12),
(6904422505843363077, 'one person asked for another one of these, don’t hate me ?  #fyp #foryoupage #hoodbaby #ThinkingAbout', 28100, 178400, 488, 458, 15),
(6904429617021570306, 'Para los que querían el de BATMAN? #christianbale #michaelkeaton #benaffleck  #batman #edit #transition #paratupagina #viralll #aprendeentiktok', 14000, 75100, 159, 369, 18),
(6904496575930731778, '', 16100, 154100, 318, 284, 15),
(6904536120755768578, '#worldcup #laliga #football #premierleague', 321900, 11200000, 527, 209, 11),
(6904610600870038786, '??????', 9303, 49600, 861, 22, 15),
(6904612666099305729, 'Можно в рек пожалуйста) #naruto #sasuke #narutouzumaki #sasukeuchiha #anime #animeedit #recommendations #fyp', 33400, 143700, 173, 370, 8),
(6904638377530772741, '#horadearrasar', 103000, 791000, 0, 401, 13),
(6904645678018923777, '#الحق #مسيحين #يسوع #الانحيل #محبه #يوم الحساب #القيامة#bijbel #respect #christelijk', 732, 23200, 1206, 155, 15),
(6904650067999821057, 'Thai Airways A380 plays Jingle Bells.  We wish you a wonderful christmas time. #jinglebells #a380 #thaiairways  #miniaturwunderland #christmasmusic', 759200, 7900000, 4100, 83, 21),
(6904651986059218178, '#duet met @viraalniels dit was mijn reachtie op dit filmpje?????instagram-lisanaomix#foryoupage #fypage #viral #duet #fyp', 2163, 35100, 22, 287, 8),
(6904653648349957377, 'Neymar #11 #встилеRIO #rec #recommendations #рек #футбол #рекомендации #неймар #neymar #barcelona', 250, 10600, 1, 338, 20),
(6904657340679654661, '#horadearrasar', 5046, 45400, 59, 506, 13),
(6904692946486971649, '', 1475, 142600, 0, 307, 12),
(6904726306047446274, '♥️Who’s your favourite Hazbin character and why? Take a wild guess at mine XD #alastorcosplay #hazbinhotelcosplay #shouldvepickedmercy #transition', 12600, 42300, 252, 164, 9),
(6904736629454359813, '#stitch with @annaxsitar yes, im napping in my car. #military #miltok #army #navy #marines #airforce #fyp #foryoupage #UpTheBeat', 12400, 62400, 702, 14, 13),
(6904739327385799942, '#horadearrasar ???', 5057, 52300, 155, 55, 13),
(6904743507693554950, '425 OHP PR from the other day ?? #fitness #gym #workout #fit #fitnessmotivation #motivation #bodybuilding #powerlifting', 35400, 224900, 1152, 56, 17),
(6904778229526039813, 'brought em back ‼️?#fyp #foryou  #xyzbca #barber #transition', 5594, 83500, 183, 491, 14),
(6904798749290286341, 'Pelirroja ??‍? o castaña ?‍♀️?? #transition #cosplay #mera #aquaman', 1504, 24800, 65, 23, 7),
(6904823810994818310, 'How to work up to pistol squats #squats #pistolsquat #deadlift #gym #fitgirls', 13400, 123400, 70, 41, 15),
(6904909762027195649, '#පොඩි බඩගින්නක් #ඇවිල්ලා ඒයාට #vedio #කරනවා_ දැකලා #දුවනවා ????#Mine @dula__girl98', 1188, 31300, 8, 491, 15),
(6904966483730894082, '#pov Your mom wants you to be a successful model but your father sees you’re starving yourself.. #tw #awareness #model #starving #foryou #foryoupage', 2462, 65700, 18, 448, 15),
(6904973629524692230, 'This is so good! #fyp #f1 #funny #racing', 46500, 427300, 124, 376, 58),
(6904976916437044482, 'responding to @stressinabox’s video!! ❤️✨ thank you for the advice!!', 46200, 291200, 406, 311, 59),
(6904978624085069057, 'Carlos was so confused? #formula1 #carlossainz #landonorris', 16000, 154200, 139, 11, 33),
(6904986469501259014, '#duet with @jeffviolette Sometimes the wipe doesn’t work #abs #lifehack', 1754, 66400, 14, 321, 6),
(6905010590108978437, 'Eu amo tudo isso ♥️ #horadearrasar #cordecabelo #fyp #cabelo', 4593, 40200, 93, 306, 13),
(6905029441760578818, 'Maar er is écht veel mis aan deze video??Deze juf is toe aan weekend! #groep8a #juf #foutekersttruiendag #tegroot #badhair #stokstruggles #iloveit', 2766, 45700, 69, 10, 8),
(6905031739127713026, '#f1 #f1crash #f1mercedes #mercedes #f1race #win #lose #ftb #fortheboys #rage #pit #pitstop #box #boxing #fy #fyp #painful', 3386, 60300, 36, 261, 29),
(6905034791188434177, 'Mijn mening over fatburners #foryou #foryoupage #fatburner #gains #fitness #abs #gym #workout #training #satire #chestday #rotterdam #explore #fyp #fy', 6447, 81000, 147, 28, 50),
(6905053286374706433, '??‍♂️? #fy #fyp #foryou #foryourpage', 2079, 64800, 101, 78, 10),
(6905060523184901381, '#stitch with @kylekilpatrickfit #foryoupage #fyp #foryou #powerlifting #bodybuilding #deadlift #fitness #workout #fittok #powertok', 6319, 52600, 91, 511, 21),
(6905063271129287938, 'Kan er niks aan doen #voorjoupagina #fyp #fitness', 13500, 189700, 115, 37, 26),
(6905077243240877313, 'je 3e @ heeft een mooie lach ?? #voorjou #tiktoknl #dutch #drawing #tekenen #zotekenje #netherlands', 6403, 34500, 171, 467, 59),
(6905109455466220805, '8 week cut #fyp #gymshark #fypシ #fatloss #progress #motivation #transformation #diet #natural #pain #body #how #viral #OOTD #Catchphrases #abs', 6063, 76500, 838, 447, 17),
(6905110082913045762, 'cause my ass seems to be the only thing getting views #dailydicerollwalk #funny #transition #transitions #fyp #foryou #foru', 7207, 54800, 119, 175, 9),
(6905139893425474818, 'طبعا بكري قرر يصلي واخيرا ?  ياجماعة انا واقع في حالة حب معكم كليلاتكووون دخيل قلبكم?#foryou #اكسبلورر', 3373, 38500, 121, 63, 15),
(6905298511470890241, '', 1287, 33700, 55, 79, 10),
(6905326071026109697, '#duet met @ryan.perdaan', 798, 35900, 16, 425, 5),
(6905356954621824257, 'Zo de basics zijn ingeslagen ? grapje natuurlijk? #boodschappen #appie #weekend #voorjou #expectations #reality', 5887, 52700, 29, 271, 16),
(6905378500392324354, 'ya girl is negative, no worries ??? ic: @emmakeuven #fyp #keigoed', 19600, 348600, 142, 163, 10),
(6905378711986801922, '??‍♂️??‍♂️كم وزنكم ؟#foryou #اكسبلو', 3719, 45500, 80, 486, 15),
(6905408660185320706, 'weekend chill ??‍♂️?', 11500, 75900, 709, 297, 59),
(6905409625726766341, '??? #coastguard #navy #marines #airforce #army #military #womeninuniform #womeninthemilitary #spaceforce', 9403, 112100, 1049, 298, 15),
(6905462755919269121, '@giolatiktok @meesdik #meesdix @tiktokkiedon #dondejong #dutchperformante #challange #giolatooy #knolpower #fy #viral #fyp #foryoupage #foryou #chick', 145200, 1500000, 1444, 390, 13),
(6905464131097332997, 'Cakesicles??#blue#QualityTime #ComfortFood #ocean#cake#chocolate#candymelts#cakesicles#baketok #food#chocolate #fyp#fy#ontario#mississauga #cakedeco', 1443, 34500, 52, 149, 40),
(6905490815309729025, 'Not exactly how I was planning it to be ?? #2020evolution #corona #lockdown', 11000, 94200, 117, 30, 9),
(6905505804959452417, 'Ben even vergeten part 2? #qucee #viral #foryoupage #foryou #peterpiet', 13000, 198500, 52, 281, 59),
(6905530005711768833, 'MY MUM HEARD ME also, please go donate in the donate link in my bio if you can ❤️ animals lives matter too!!', 165100, 1100000, 1969, 283, 15),
(6905635666588192002, '小技です?✨#tiktok教室#tutorial', 8805, 115300, 52, 13, 22),
(6905698143560633602, '#foryou #fyp #voorjou #chicken #eten #koken #cooking #nl #dutch #fpodie #food #snacks #haagschekeuken #nederland #onskerstmenu #picassobaby #vj', 4597, 64200, 207, 306, 59),
(6905705430886944002, 'Heujjj gelukt! #hinkebeentje #hatseflats #KerstInHuis #fyp #fy #vjp #vj #daarbenikweer #athome', 1472, 49400, 39, 320, 10),
(6905755896115236098, 'Antwoorden aan @fr.henkie88 armen train ik op een boot ?#foryoupage #voorjoupagina', 4739, 116600, 56, 176, 12),
(6905761532039220482, '#stitch mit @guinnessworldrecords #sonnelebensfroh#fy#fyp#fun', 461700, 11100000, 11600, 422, 12),
(6905763253192789253, '#morph top surgery transition  time line; 1 year? #fyp #topsurgery #montreal #lgbtq #transition #ftm #foryourpage #queer #selflove #nonbinary #trans', 2243, 396700, 36, 513, 9),
(6905763366166367489, 'Nou ging nie helemaal goed', 7748, 146000, 215, 151, 15),
(6905772202600189189, '#costurar com @takemotodesu #linhacongelante #viral #foryou #viralizoou #linhacongelante #viralizoupostou', 5473, 346100, 41, 134, 7),
(6905790048197758210, '100% body positive. Bra simply makes my shoulders hurt. And yes, they bounce... #bodypositivity #plussize', 249800, 4600000, 11100, 196, 15),
(6905816780938235138, 'Nederlander #nederlandsetiktokkers #dutchtiktok #hollands #geertwilders #rutte #geertwilders #zwartepietlivesmatter #kaaskop #voorjoupagina #fyp #fy', 12700, 297500, 980, 24, 10),
(6905831259478461698, '#fyp #covid2020 #yolo', 1242, 62900, 104, 510, 13),
(6905849998680820993, 'The Clifton Mill ? @oogsydney', 12700, 102100, 242, 262, 16),
(6905961818062114054, 'Así fue ? #Anime #animeedit #waifu #himikotoga #fyp #parati', 20400, 70900, 256, 43, 12),
(6906048081628859650, 'Do u like?#art #drawing #decoration #painting #fyp', 712, 31900, 4, 437, 7),
(6906058362128010498, 'الرد على @a___s36   انا بقول انو هل فلتر نعمل بس مشان ماهركو???#pubg #اكسبلوررررررر #مضرطه #ماهركو_البيض #abn #ماهركو #اكسبلورر #ببجي', 3435, 71700, 30, 162, 16),
(6906077607750618369, '✨ lockdown ✨ | #voorjou #markrutte #lockdown #corona #fyp', 1371, 44000, 89, 369, 13),
(6906112097554271490, 'Lil Kleine lacht Nederland uit vanwege lockdown #fy #foryou #foryoupage #fyp #vj #voorjou', 2190, 35400, 74, 179, 7),
(6906126061696863489, 'Als er dan tóch niemand op straat gaat zijn. Het F1-seizoen is afgelopen. Mogen wij een paar rondjes door de stad blazen??? #f1 #redbull #fastestlap', 6729, 68100, 29, 14, 11),
(6906136469144964357, 'no hate, but duet me to prove me wrong lol #gymshark #rdl #guyswholift @gymshark', 7657, 183900, 515, 399, 8),
(6906137577003175169, 'Ik snap deze Nederland echt niet??#lockdownvibe #foryoupage #xyzbca #fy #ahajla #foryou #cabaret #duetmetnajib', 2098, 36700, 70, 449, 15),
(6906139639753559298, '#tiktoknl #fyp #fy #foryou #foryoupage #toiletpaper #voorjoupagina #christmas #rudolf #fyppage', 2883, 95400, 73, 209, 30),
(6906170881626754309, 'One day Zoe is going to be REALLY over my shenanigans, but for now I can still subject her to this kind of breakfast entertainment #hoodiechallenge', 8204, 86200, 297, 31, 12),
(6906224943332068610, 'vooral bij turkse bruiloften? #foryou #ryfc', 17100, 345200, 321, 65, 10),
(6906243777036389637, '#stitch with @gavinthomaas yeet #fyp #foryoupage #foryou #xyzbca #powerlifting #fitness #yeet', 12600, 64300, 33, 254, 30),
(6906244949176569093, 'Man I have changed #voguemagazine  #CancelTheNoise #fypシ #fyp #foryou #vir #xyzbca #femalesoldier #soldier #army #stillgotit #bi', 5415, 82200, 269, 449, 12),
(6906249909863779585, 'Часть 1 «Нити судьбы» #recommendations #MEGADREAMS #popular #top #ff #haikyuu #haikyuuff #anime #animeedit', 12300, 40300, 249, 246, 18),
(6906416223785864450, 'Weet jij wel wat Netflix&chill is???#jandinoasporaat #dino #jandino #voorjou #voorjoupagina #fyp', 7961, 109800, 77, 42, 41),
(6906503615284808961, '???? #foryoupage #fyp #bekeerling #noticeme #xzybca #foryou #foryoupage #foryoupage #fyp #foryoupage #fyp #foryoupage #noticeme #fyp #fyp', 4262, 30100, 354, 323, 10),
(6906504850712907009, '#attitude #jok #foryoupage #love #foryou', 2489, 11000, 29, 47, 13),
(6906514521582570753, 'we all need seb in our lives #f1 #vettel #russell #foryou #formula1 #sakhirgp #fyp #mercedes #ferrari', 17000, 189100, 78, 333, 11),
(6906514963569888513, 'Kendinizi yıpratmayın, DEĞMEZ ?? #keşfet #tiktok #turkey #kadın #erkek #aldatma #seniniçin #beniöneçıkart #ortamısalla #mizah #boys #girls #türkiye', 734, 8071, 54, 320, 15),
(6906515542035746050, '#verkeersagressie #verkeershufter #verkeer #cbr #fy #foryou #foryoupage #for #foryourpage', 4012, 316800, 93, 218, 14),
(6906519148025629953, 'Rispondi a @puppy_love291 #calisthenics #fitness #foryou #perte', 46900, 488800, 489, 317, 14),
(6906559972839034117, 'ooooo? #transition #transitions #loop #fyp #foryou #CancelTheNoise #TheProm', 9902, 57000, 151, 341, 7),
(6906565635371764993, 'Mondkapje op en je hoeft de helft maar te doen! ? #elknadeelheeftznvoordeel #bespaartip', 16700, 322100, 174, 161, 25),
(6906571896683285761, 'Lets help the bacons #roblox #hacks #exploiting #bunbungirls', 6629, 61500, 1166, 68, 15),
(6906604842081357057, 'Kookie cuz my movie doesn\'t have a name?? #jungkook #bts #armybts #bts_official_bighit @bts_official_bighit', 24000, 70100, 264, 475, 59),
(6906640842543418630, '#stitch with @barbarianbody - this must be amateur hour. #noexcuses #alpha #legs #squat #deadlift', 3181, 33700, 16, 80, 15),
(6906649897869659394, '', 16700, 218500, 724, 138, 29),
(6906741890503183621, 'Wire twisting Tool drill attachment #toolstour #drillbit #electrician #tools#amazonfinds #homedep', 500800, 21500000, 1810, 338, 13),
(6906757897628192005, 'I kept messing it up ? #fyp', 360100, 4200000, 1225, 271, 8),
(6906776161221758210, 'Long awaited  ✨hair tutorial✨ by @si3nna0 #hairtutorial #hairstyle #hairtransformation', 113500, 1000000, 415, 114, 29),
(6906797341341224193, '#ميرنا? #اللهم_صلي_على_نبينا_محمد #صلو_عليه_شفيع_الامة #deepthoughts #transition #horse #عاشق_الخيل❤️', 5246, 52800, 30, 437, 17),
(6906814891034823938, '#mask #vindiesel #KFCMakeItLegendary #vibewithvin #funny', 2600000, 19100000, 0, 357, 8),
(6906818204966915330, 'Ben ik de enigste die dit doet? #foryou#pizzametananas#noticeme#xyzbca#viral#like#comment', 2501, 71400, 44, 385, 11),
(6906822328580181250, 'Wat gaan jullie doen in deze lockdown?? #foryou #fyp #voorjou #voorjoupagina', 4436, 50600, 98, 117, 9),
(6906841661821717762, 'අප්‍රේල් 21 ප්‍රහාරය සම්බන්ධයෙන් විමර්ශනය කරන ජනාධිපති පරීක්ෂණ කොමිෂන් සභාවේ පොලිස් ඒකකය වෙත ප්‍රකාශයක් ලබා දිමට රජයේ අධිනීතිඥ නිරාෂා ජයරත්න පැමිණියා.', 779, 25800, 11, 168, 59),
(6906845094473649410, 'MORE GLOBBLES #ASMR #GLOBBLEASMR', 299500, 1800000, 2637, 369, 53),
(6906870391466216709, '#horadearrasar', 1688, 64300, 13, 123, 13),
(6906880148352552193, 'Who still remembers that Lando Norris called F1 drivers during his stream for some tips ?? #landonorris #f1 #formula1 #formulaone #georgerussell', 4620, 52100, 14, 393, 59),
(6906884442728516865, 'Wie dacht ook famous te kunnen worden met tiktok? #joeyvandenhoek #tiktoknl #famous #blijeeisquad #fy #3700 ❤️??', 4328, 34500, 49, 288, 11),
(6906885936366259457, 'I GOT MORE FISH! ?', 141200, 1000000, 1432, 67, 25),
(6906932916631129346, 'the end? #couple #couplegoals #buttslap', 657, 43600, 11, 330, 8),
(6906933953777700097, '@theori6 ✨Challenge accepted ✨ #googlesheets #excel #spreadsheet', 20100, 254200, 53, 165, 22),
(6906940104053476609, 'My heart follow ❤️?', 14900, 53500, 33, 223, 8),
(6906969301446593793, '#amongus #corpse #corpsehusband @corpse_husband', 179100, 607700, 394, 428, 52),
(6907101598074391810, 'Reply to @action_dvl', 4778, 41700, 209, 485, 16),
(6907108578482457861, 'i have a negative amount of words at this point. #fyp #biden #trump #democrat #bi #foryou #maskup #covid19 #MakeItMagical #greenscreenvideo', 15000, 60700, 689, 5, 53),
(6907187437986958593, '', 73000, 611900, 1715, 448, 21),
(6907193077371309313, '', 3066, 47400, 171, 177, 10),
(6907211930755271942, 'Reply to @daniel_blanchard_150 - I’m just the messenger. #opinion #coach #training #workouttips #gym', 5715, 66800, 73, 127, 12),
(6907213826681261314, 'Bird #foryou #foryoupage #fürdich', 74700, 748900, 183, 8, 14),
(6907228749016714497, 'Confidence went ?', 3710, 44800, 68, 132, 15),
(6907233534893640965, '#horadearrasar #fy #foryou #tiktok', 16800, 139300, 150, 183, 13),
(6907253227490725122, 'mijn jeugd in een notendop @the.g.moore #tiktoknl #nederlands #agv', 27900, 245100, 535, 350, 33),
(6907268705248464129, 'උබලට බය නෑ ?????', 3414, 33700, 38, 60, 18),
(6907292013293505794, '@jorgevanvliet', 63100, 525900, 352, 327, 45),
(6907297390638714118, 'My Review On The RO—86 Alkonost #gta #gta5 #gtaonline #fyp #trending #popular #gta5online #recommendations #cayopericoheist #gtav #foryou #gta5update', 15700, 90000, 142, 91, 58),
(6907309069904776454, 'Reply to @willelrod2 it gets better. #warrantofficer #DejaTuHuella #miltok #chieftok #fyp #foryoupage #HaventSeen #PlantTikTok #MakeItMagical', 8839, 74000, 436, 260, 17),
(6907334602017344774, '#dance #garrafa #horadearrasar #girl #challenge #musically #music', 14500, 174400, 267, 443, 13),
(6907344809195736326, 'Feeling my body get weaker #strength #cancer #hodgkinslymphoma #chemotherapy #gym', 15700, 64100, 465, 104, 24),
(6907365817118166278, 'what do you want for Christmas??? #HaventSeen#foryou#fyp', 9021, 78000, 100, 249, 8),
(6907464609116982529, '#kesfet #turkish #asianmakeup #foryou #viral ###voorjou #funny #komik #like #fypシ #virall', 25200, 439700, 984, 92, 15),
(6907491921220947205, '#fyp #anime #animeedit #animegirl #opais #otaku #weeb', 5715, 54800, 114, 291, 11),
(6907540932682321153, '#soldier #movdbuurt #foryou #fyp #fy hoor je dat a mattie??', 30000, 395100, 780, 346, 18),
(6907570846215294210, '#Duett mit @carl_edit2 #animeedit #animeboy #weebtiktok #animeart #fürdichpage', 7216, 71600, 181, 428, 8),
(6907614572048305409, '#skittles sorted by color ?! #allweneedisglam', 29900, 394000, 462, 192, 14),
(6907635850985704709, 'FOOD.? #fyp #food #diet #bodybuilding', 6217, 123500, 228, 387, 33),
(6907659902789897474, 'How fast can you get your stirrup ? #equestrian #horsegirl #horseriding #horse #dressage #equine #stallion', 57000, 236000, 490, 136, 6),
(6907668397484559617, 'Who do you think is the most normal of the 2 of us??? @evitavdz #justdancemoves #foryoupage #mood #voorjou #keepsailing #bestfriend #duo #crazy ?', 2445, 32600, 183, 428, 10),
(6907670356887211265, 'Bedankt hé Jumbo ? #food #foodporn #jumbo #foryou @dominiqueramona', 8042, 289800, 208, 377, 15),
(6907692740469902593, 'I m s o r r y', 90600, 623000, 843, 225, 10),
(6907792796111981829, 'Recreating my best video #fyp #viral #theboys #fitness #lift #weights #grind #gymrat #track #lifting #gymtime #gym #swole #bulk #fit', 10400, 54000, 126, 58, 28),
(6907808236133469445, 'Hope this helps! #foryoupage #fyp #foryou #powerlifting #bodybuilding #creatine #fitness #workout #fittok #powertok', 14700, 69100, 221, 331, 57),
(6907818554905726214, 'The sad truth about having a boyfriend who works out.. #jokes #StrikeAPosay #fyp #gym #productivity #challenge #hoe #funny #trend #gymshark', 2475, 92400, 11, 28, 11),
(6907916640386813185, 'So I broke a piece of my teeth yesterday :) #fyp #fy #chachaslide', 1579, 55600, 13, 483, 13),
(6907943881829059841, 'Pencil #amazing', 4000000, 37900000, 18600, 25, 10),
(6907950986871000322, 'Leven: gered', 12700, 181200, 602, 264, 8),
(6907966191059356929, 'Идеальные трюки: Угадайте самый сложный кадр | Real life trick shots: Guess the hardest shot ? #thekiryalife #trickshot', 153400, 795900, 509, 234, 25),
(6907971568165604610, '#duo avec @x...jesus #fyp #animal #tombé #de #haut', 3900000, 29900000, 61200, 507, 8),
(6907974329305156866, 'Deze is voor de mensen die geen rijst kunnen koken ✨? #fyp #fy #koken #voorjou #vj', 31100, 294700, 880, 179, 59),
(6907990866284088578, 'Smooth enough??...Viral kyu nhi ho rha mein?? Foryou? #raplikechester #jontysquad #faheemsajjad07 #standwithkashmir #slowmo #transition', 14800, 132300, 125, 259, 7),
(6907997809094495494, 'this thought lives in my head #armday #triceps #fittok', 7742, 68200, 92, 159, 18),
(6908031436243225858, '#stitch mit @malkimeansking #foryou #viral #fy #fyp #foryoupage', 846100, 5400000, 7471, 35, 9),
(6908069845825359109, 'Stop eating ? #gttfg #gotothegym #swolefam #nutrition #diet #workout #gymtime #pumpkinspice', 12200, 80700, 321, 361, 20),
(6908110392422092033, 'Sainz and his golf?#F1 #Formula1 #F12020 #FormulaOne #GrandPrix #Racing #Motorsport #Hamilton #Vettel #Verstappen', 21600, 346900, 73, 433, 8),
(6908111363365768453, '#vibe #drums #fun #duet #fyp #happy #music', 13400, 89500, 469, 266, 59),
(6908113835845012742, 'mood ? / #fyp #foryou #melodictechno #housemusic #techno #eletronicmusic', 395200, 2900000, 1890, 41, 8),
(6908143157616151813, 'Benching and angle progress #foryou #fyp #fitness #chestworkout', 5023, 79600, 75, 211, 16),
(6908179105494174982, 'Tis the season ?? #bungoustraydogs #anime #animeedit #chuuyanakahara #dazaiosamu #bsd', 24700, 55300, 640, 314, 34),
(6908266212787047686, 'The pupil to drench surface #LoveStory #cake', 11900, 219700, 91, 209, 10),
(6908292605101051137, 'Rate the Video from 1-10 #yzfamily #fürdich #fyp #foryoupage', 619000, 4000000, 6991, 307, 15),
(6908295874653342978, 'lijkt net echt gewoon??? #foryoupage #ikmisdit', 25200, 261000, 569, 191, 15),
(6908298047470472450, 'I think he’ll win until he retires. #gym #fyp #mrolympia #parati', 22800, 153100, 297, 372, 14),
(6908309278365404418, 'Viral kyu nhi ho rha mein???...Foryou? #raplikechester #jontysquad #faheemsajjad07 #standwithkashimr #slowmo #transition #viralvideo', 1546, 12800, 38, 113, 14),
(6908311912941931777, 'Zo kan het ook jongens #coronaproof #balkonfeest #enschede', 32500, 198300, 730, 449, 55),
(6908336148037274881, 'This took me a month', 88900, 598200, 338, 431, 16),
(6908342087528254722, '???', 9588, 104400, 119, 349, 11),
(6908353046783347969, 'Aangezien IEDEREEN wilde dat het een bioscoop werd, hier de verbouwing! ?#voorjou #verbouwing #bioscoop', 54200, 659700, 351, 128, 26),
(6908391851418471682, 'Dusss ? Insta: @esmeejoanna #herkenbaar #herkenbaresituaties #voorjoupagina #grappig #lachen #jeugdvantegenwoordig #hysterisch #jeugd #tiktokdans #fy', 21200, 226000, 301, 35, 24),
(6908401262065143045, '#horadearrasar', 646, 34500, 27, 84, 13),
(6908408424610974977, 'Beep boop?? #tekenen #voorjou #netherlands #dutch', 7721, 89900, 143, 190, 6),
(6908460695461891329, 'Antwoorden aan @wana_alewa_eritrea #extradateready #habeshatiktok #eritreanmusic #antwoord @grmayhawinaxu8 @gogogaga124  #Samsung ￼', 1106, 22500, 80, 482, 54),
(6908543785303608581, 'Have you learned#kungfu #chinesekungfu', 305300, 3600000, 1777, 403, 22);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `stores`
--

CREATE TABLE `stores` (
  `id` bigint(20) NOT NULL,
  `owner_id` bigint(20) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `rating` double DEFAULT 0,
  `rating_count` int(11) DEFAULT 0,
  `maximum_waiting_time_minutes` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `stores`
--

INSERT INTO `stores` (`id`, `owner_id`, `address`, `description`, `email`, `name`, `phone`, `rating`, `rating_count`, `maximum_waiting_time_minutes`) VALUES
(1, 2, '117 P. Trần Đại Nghĩa, Bách Khoa, Hai Bà Trưng, Hà Nội', 'Ăn là ngon - Nghĩ là thèm', 'buncacotuyet@gmail.com', 'Bún cá cô Tuyết', '0383338888', 4.5, 6, 20),
(2, 5, 'Số 26 Kim Đồng, Phường Giáp Bát, Quận Hoàng Mai, Hà Nội', 'Hãy đổi gió với ẩm thực Singapore thơm ngon trong những niêu cơm', 'pato.com.vn@gmail.com', 'Cơm niêu Singapore', '19002280', 3.4761904761904763, 21, 15),
(3, 508, '11 Ngõ 13 Lĩnh Nam, P. Mai Động, Hoàng Mai, Hà Nội', 'Chuyên Đồ Hàn & Gà Chiên', 'tiemanphanhphanh@gmail.com', 'Tiệm Ăn Phanh Phanh', '84913001356', 3.909090909090909, 11, 30),
(4, 509, 'Số 7 Gầm Cầu Vĩnh Tuy, P. Vĩnh Tuy, Hai Bà Trưng, Hà Nội', 'Cơ sở tại Vĩnh Tuy', 'bundaumetbathanh@gmail.com', 'Bún Đậu Mẹt Bà Thành', '84932195488', 3.25, 12, 20),
(5, 510, '98 Trần Nhật Duật, Hoàn Kiếm, Hà Nội', 'Cơ sở tại Trần Nhật Duật', 'bunthuy@gmail.com', 'Bún Thủy', '84913440567', 3.5, 6, 20),
(6, 511, 'Số 2 Ngách 23 Ngõ 336 Nguyễn Trãi, P. Thanh Xuân Trung, Thanh Xuân, Hà Nội', 'Bún Trộn Nam Bộ - cơ sở Nguyễn Trãi', 'bumtro@gmail.com', 'BUMTRO', '84902070000', 2.875, 16, 30),
(7, 512, '39 Lý Thường Kiệt, P. Hàng Bài, Hoàn Kiếm, Hà Nội', 'cơ sở Lý Thường Kiệt', 'bonchonchicken@gmail.com', 'Bonchon Chicken', '84904569069', 3, 11, 30),
(8, 513, 'A004 - Tòa The Manor, Mễ Trì, P. Mỹ Đình 1, Nam Từ Liêm, Hà Nội', '\"Hồi xuân\" ngon lành, Giáp Thìn thăng hoa', 'thepizzacompany@gmail.com', 'The Pizza Company - The Manor', '84962220643', 3.1, 10, 25),
(9, 514, 'Tầng 1, Siêu Thị Co.opmart, 16 Trần Phú, P. Mộ Lao, Hà Đông, Hà Nội', 'Singapore Chilli Crab', 'dominopizza@gmail.com', 'Domino’s Pizza - Co.opmart Hà Đông', '84932221484', 2.8333333333333335, 12, 20),
(10, 515, 'Ngõ 195 /16 Vũ Xuân Thiều, P. Sài Đồng, Long Biên, Hà Nội', 'Cơ sở Vũ Xuân Thiều', 'chaosuonsunvadoannhanh@gmail.com', 'Cháo Sườn Sụn & Đồ Ăn Nhanh', '84941914843', 2.7777777777777777, 9, 25);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tables`
--

CREATE TABLE `tables` (
  `status` bit(1) DEFAULT NULL,
  `belongs_to_store_id` bigint(20) NOT NULL,
  `id` bigint(20) NOT NULL,
  `max_capacity` bigint(20) DEFAULT NULL,
  `min_capacity` bigint(20) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tables`
--

INSERT INTO `tables` (`status`, `belongs_to_store_id`, `id`, `max_capacity`, `min_capacity`, `name`) VALUES
(b'1', 1, 1, 8, 0, 'Table 1'),
(b'0', 1, 2, 6, 0, 'Table 2'),
(b'1', 1, 3, 4, 0, 'Table 3'),
(b'1', 1, 4, 8, 0, 'Table 4'),
(b'1', 1, 5, 6, 0, 'Table 5'),
(b'0', 1, 6, 3, 0, 'Table 6'),
(b'1', 2, 7, 8, 0, 'Table 1'),
(b'0', 2, 8, 6, 0, 'Table 2'),
(b'1', 2, 9, 4, 0, 'Table 3'),
(b'1', 2, 10, 8, 0, 'Table 4'),
(b'1', 2, 11, 6, 0, 'Table 5'),
(b'0', 2, 12, 3, 0, 'Table 6'),
(b'0', 2, 13, 5, 0, 'Table 7'),
(b'1', 2, 14, 10, 0, 'Table 8'),
(b'0', 2, 15, 6, 0, 'Table 9'),
(b'1', 2, 16, 8, 0, 'Table 10'),
(b'1', 3, 17, 6, 0, 'Table 1'),
(b'1', 3, 18, 10, 0, 'Table 2'),
(b'1', 3, 19, 10, 0, 'Table 3'),
(b'1', 3, 20, 9, 0, 'Table 4'),
(b'1', 3, 21, 5, 0, 'Table 5'),
(b'1', 4, 22, 6, 0, 'Table 1'),
(b'1', 4, 23, 10, 0, 'Table 2'),
(b'1', 4, 24, 6, 0, 'Table 3'),
(b'1', 4, 25, 8, 0, 'Table 4'),
(b'1', 4, 26, 9, 0, 'Table 5'),
(b'1', 4, 27, 9, 0, 'Table 6'),
(b'1', 5, 28, 6, 0, 'Table 1'),
(b'1', 5, 29, 10, 0, 'Table 2'),
(b'1', 5, 30, 6, 0, 'Table 3'),
(b'1', 5, 31, 8, 0, 'Table 4'),
(b'1', 5, 32, 6, 0, 'Table 5'),
(b'1', 5, 33, 7, 0, 'Table 6'),
(b'1', 5, 34, 8, 0, 'Table 7'),
(b'1', 5, 35, 10, 0, 'Table 8'),
(b'1', 5, 36, 5, 0, 'Table 9'),
(b'1', 5, 37, 6, 0, 'Table 10'),
(b'1', 6, 38, 7, 0, 'Table 1'),
(b'1', 6, 39, 6, 0, 'Table 2'),
(b'1', 6, 40, 6, 0, 'Table 3'),
(b'1', 6, 41, 7, 0, 'Table 4'),
(b'1', 6, 42, 6, 0, 'Table 5'),
(b'1', 6, 43, 8, 0, 'Table 6'),
(b'1', 6, 44, 8, 0, 'Table 7'),
(b'1', 6, 45, 5, 0, 'Table 8'),
(b'1', 6, 46, 7, 0, 'Table 9'),
(b'1', 6, 47, 9, 0, 'Table 10'),
(b'1', 7, 48, 9, 0, 'Table 1'),
(b'1', 7, 49, 8, 0, 'Table 2'),
(b'1', 7, 50, 8, 0, 'Table 3'),
(b'1', 7, 51, 8, 0, 'Table 4'),
(b'1', 7, 52, 8, 0, 'Table 5'),
(b'1', 7, 53, 10, 0, 'Table 6'),
(b'1', 7, 54, 7, 0, 'Table 7'),
(b'1', 7, 55, 7, 0, 'Table 8'),
(b'1', 7, 56, 8, 0, 'Table 9'),
(b'1', 8, 57, 7, 0, 'Table 1'),
(b'1', 8, 58, 7, 0, 'Table 2'),
(b'1', 8, 59, 10, 0, 'Table 3'),
(b'1', 8, 60, 10, 0, 'Table 4'),
(b'1', 8, 61, 8, 0, 'Table 5'),
(b'1', 9, 62, 7, 0, 'Table 1'),
(b'1', 9, 63, 10, 0, 'Table 2'),
(b'1', 9, 64, 9, 0, 'Table 3'),
(b'1', 9, 65, 8, 0, 'Table 4'),
(b'1', 9, 66, 6, 0, 'Table 5'),
(b'1', 9, 67, 8, 0, 'Table 6'),
(b'1', 10, 68, 10, 0, 'Table 1'),
(b'1', 10, 69, 7, 0, 'Table 2'),
(b'1', 10, 70, 8, 0, 'Table 3'),
(b'1', 10, 71, 9, 0, 'Table 4'),
(b'1', 10, 72, 10, 0, 'Table 5'),
(b'1', 10, 73, 10, 0, 'Table 6'),
(b'1', 10, 74, 6, 0, 'Table 7'),
(b'1', 10, 75, 5, 0, 'Table 8');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `balance` double DEFAULT NULL,
  `id` bigint(20) NOT NULL,
  `role_id` bigint(20) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `video_viewed_time` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`balance`, `id`, `role_id`, `email`, `password`, `username`, `video_viewed_time`) VALUES
(2499975000, 1, 1, 'hiruez@gmail.com', '$2a$10$FLjwCRI0jtCPdFLdvRQPEOqp.68rmkCxVu8oFIbz29atjcfaEEp7.', 'sysadmin', 40),
(12762500, 2, 2, 'buncotuyet@gmail.com', '$2a$10$FU6f9jQKze1Hnri/acw7quRpQkIALFO/HRYY78MPqcu1NY3ybXC5m', 'buncoTuyet_admin', 49),
(1527500, 3, 3, 'daokimduong322@gmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'duongdk', 0),
(24975000, 4, 3, 'minh@gmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'minh', 0),
(12500000, 5, 2, 'comnieusingapore@gmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'comNieuSingapore_admin', 13),
(1250000, 6, 3, 'dungnn@gmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'dungnn', 0),
(750000, 7, 3, 'trungtv@gmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'trungtv', 0),
(3075000, 8, 3, 'jbutt@gmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'James Butt', 17),
(2650000, 9, 3, 'josephine_darakjy@darakjy.org', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Josephine Darakjy', 0),
(7150000, 10, 3, 'art@venere.org', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Art Venere', 14),
(12475000, 11, 3, 'lpaprocki@hotmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Lenna Paprocki', 0),
(11100000, 12, 3, 'donette.foller@cox.net', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Donette Foller', 9),
(9625000, 13, 3, 'simona@morasca.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Simona Morasca', 14),
(8075000, 14, 3, 'mitsue_tollner@yahoo.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Mitsue Tollner', 0),
(6250000, 15, 3, 'leota@hotmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Leota Dilliard', 0),
(3900000, 16, 3, 'sage_wieser@cox.net', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Sage Wieser', 0),
(7950000, 17, 3, 'kris@gmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Kris Marrier', 0),
(3675000, 18, 3, 'minna_amigon@yahoo.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Minna Amigon', 0),
(2650000, 19, 3, 'amaclead@gmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Abel Maclead', 0),
(3975000, 20, 3, 'kiley.caldarera@aol.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Kiley Caldarera', 9),
(10400000, 21, 3, 'gruta@cox.net', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Graciela Ruta', 0),
(3100000, 22, 3, 'calbares@gmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Cammy Albares', 0),
(10200000, 23, 3, 'mattie@aol.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Mattie Poquette', 39),
(5675000, 24, 3, 'meaghan@hotmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Meaghan Garufi', 0),
(11800000, 25, 3, 'gladys.rim@rim.org', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Gladys Rim', 0),
(7900000, 26, 3, 'yuki_whobrey@aol.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Yuki Whobrey', 0),
(3175000, 27, 3, 'fletcher.flosi@yahoo.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Fletcher Flosi', 0),
(3100000, 28, 3, 'bette_nicka@cox.net', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Bette Nicka', 0),
(10975000, 29, 3, 'vinouye@aol.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Veronika Inouye', 0),
(4825000, 30, 3, 'willard@hotmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Willard Kolmetz', 0),
(4750000, 31, 3, 'mroyster@royster.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Maryann Royster', 0),
(12125000, 32, 3, 'alisha@slusarski.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Alisha Slusarski', 0),
(12475000, 33, 3, 'allene_iturbide@cox.net', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Allene Iturbide', 0),
(5425000, 34, 3, 'chanel.caudy@caudy.org', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Chanel Caudy', 0),
(2600000, 35, 3, 'ezekiel@chui.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Ezekiel Chui', 0),
(11100000, 36, 3, 'wkusko@yahoo.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Willow Kusko', 0),
(10900000, 37, 3, 'bfigeroa@aol.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Bernardo Figeroa', 0),
(8650000, 38, 3, 'ammie@corrio.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Ammie Corrio', 0),
(3100000, 39, 3, 'francine_vocelka@vocelka.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Francine Vocelka', 0),
(5375000, 40, 3, 'ernie_stenseth@aol.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Ernie Stenseth', 0),
(6775000, 41, 3, 'albina@glick.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Albina Glick', 0),
(9700000, 42, 3, 'asergi@gmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Alishia Sergi', 0),
(2525000, 43, 3, 'solange@shinko.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Solange Shinko', 0),
(9075000, 44, 3, 'jose@yahoo.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Jose Stockham', 0),
(7175000, 45, 3, 'rozella.ostrosky@ostrosky.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Rozella Ostrosky', 0),
(10000000, 46, 3, 'valentine_gillian@gmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Valentine Gillian', 0),
(6675000, 47, 3, 'kati.rulapaugh@hotmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Kati Rulapaugh', 0),
(11275000, 48, 3, 'youlanda@aol.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Youlanda Schemmer', 0),
(5600000, 49, 3, 'doldroyd@aol.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Dyan Oldroyd', 0),
(7875000, 50, 3, 'roxane@hotmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Roxane Campain', 5),
(8975000, 51, 3, 'lperin@perin.org', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Lavera Perin', 0),
(3925000, 52, 3, 'erick.ferencz@aol.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Erick Ferencz', 0),
(11550000, 53, 3, 'fsaylors@saylors.org', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Fatima Saylors', 0),
(4175000, 54, 3, 'jina_briddick@briddick.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Jina Briddick', 0),
(9675000, 55, 3, 'kanisha_waycott@yahoo.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Kanisha Waycott', 0),
(3200000, 56, 3, 'emerson.bowley@bowley.org', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Emerson Bowley', 0),
(5650000, 57, 3, 'bmalet@yahoo.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Blair Malet', 0),
(5225000, 58, 3, 'bbolognia@yahoo.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Brock Bolognia', 0),
(4300000, 59, 3, 'lnestle@hotmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Lorrie Nestle', 0),
(5125000, 60, 3, 'sabra@uyetake.org', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Sabra Uyetake', 0),
(7000000, 61, 3, 'mmastella@mastella.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Marjory Mastella', 0),
(6350000, 62, 3, 'karl_klonowski@yahoo.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Karl Klonowski', 0),
(8350000, 63, 3, 'twenner@aol.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Tonette Wenner', 0),
(9900000, 64, 3, 'amber_monarrez@monarrez.org', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Amber Monarrez', 0),
(10075000, 65, 3, 'shenika@gmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Shenika Seewald', 0),
(11700000, 66, 3, 'delmy.ahle@hotmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Delmy Ahle', 0),
(2700000, 67, 3, 'deeanna_juhas@gmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Deeanna Juhas', 0),
(9425000, 68, 3, 'bpugh@aol.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Blondell Pugh', 0),
(11650000, 69, 3, 'jamal@vanausdal.org', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Jamal Vanausdal', 0),
(8025000, 70, 3, 'cecily@hollack.org', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Cecily Hollack', 0),
(10625000, 71, 3, 'carmelina_lindall@lindall.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Carmelina Lindall', 0),
(11675000, 72, 3, 'maurine_yglesias@yglesias.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Maurine Yglesias', 0),
(8625000, 73, 3, 'tawna@gmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Tawna Buvens', 0),
(8975000, 74, 3, 'penney_weight@aol.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Penney Weight', 0),
(4750000, 75, 3, 'elly_morocco@gmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Elly Morocco', 0),
(5650000, 76, 3, 'ilene.eroman@hotmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Ilene Eroman', 0),
(11225000, 77, 3, 'vmondella@mondella.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Vallie Mondella', 0),
(10825000, 78, 3, 'kallie.blackwood@gmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Kallie Blackwood', 0),
(12225000, 79, 3, 'johnetta_abdallah@aol.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Johnetta Abdallah', 0),
(6450000, 80, 3, 'brhym@rhym.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Bobbye Rhym', 0),
(7925000, 81, 3, 'micaela_rhymes@gmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Micaela Rhymes', 0),
(7300000, 82, 3, 'tamar@hotmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Tamar Hoogland', 0),
(2750000, 83, 3, 'moon@yahoo.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Moon Parlato', 0),
(5725000, 84, 3, 'laurel_reitler@reitler.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Laurel Reitler', 0),
(7725000, 85, 3, 'delisa.crupi@crupi.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Delisa Crupi', 0),
(9450000, 86, 3, 'viva.toelkes@gmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Viva Toelkes', 0),
(8825000, 87, 3, 'elza@yahoo.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Elza Lipke', 0),
(3525000, 88, 3, 'devorah@hotmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Devorah Chickering', 0),
(10625000, 89, 3, 'timothy_mulqueen@mulqueen.org', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Timothy Mulqueen', 0),
(6325000, 90, 3, 'ahoneywell@honeywell.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Arlette Honeywell', 0),
(6175000, 91, 3, 'dominque.dickerson@dickerson.org', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Dominque Dickerson', 0),
(11400000, 92, 3, 'lettie_isenhower@yahoo.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Lettie Isenhower', 0),
(8475000, 93, 3, 'mmunns@cox.net', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Myra Munns', 0),
(6800000, 94, 3, 'stephaine@barfield.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Stephaine Barfield', 0),
(6850000, 95, 3, 'lai.gato@gato.org', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Lai Gato', 0),
(12375000, 96, 3, 'stephen_emigh@hotmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Stephen Emigh', 0),
(4150000, 97, 3, 'tshields@gmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Tyra Shields', 0),
(8975000, 98, 3, 'twardrip@cox.net', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Tammara Wardrip', 0),
(8225000, 99, 3, 'cory.gibes@gmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Cory Gibes', 0),
(4775000, 100, 3, 'danica_bruschke@gmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Danica Bruschke', 15),
(5825000, 101, 3, 'wilda@cox.net', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Wilda Giguere', 0),
(11600000, 102, 3, 'elvera.benimadho@cox.net', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Elvera Benimadho', 0),
(7025000, 103, 3, 'carma@cox.net', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Carma Vanheusen', 0),
(10600000, 104, 3, 'malinda.hochard@yahoo.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Malinda Hochard', 0),
(3550000, 105, 3, 'natalie.fern@hotmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Natalie Fern', 0),
(4100000, 106, 3, 'lisha@centini.org', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Lisha Centini', 0),
(11425000, 107, 3, 'arlene_klusman@gmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Arlene Klusman', 0),
(3150000, 108, 3, 'alease@buemi.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Alease Buemi', 0),
(9050000, 109, 3, 'louisa@cronauer.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Louisa Cronauer', 0),
(5850000, 110, 3, 'angella.cetta@hotmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Angella Cetta', 0),
(3550000, 111, 3, 'cgoldammer@cox.net', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Cyndy Goldammer', 0),
(6175000, 112, 3, 'rosio.cork@gmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Rosio Cork', 0),
(8300000, 113, 3, 'ckorando@hotmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Celeste Korando', 0),
(7675000, 114, 3, 'twana.felger@felger.org', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Twana Felger', 0),
(6075000, 115, 3, 'estrella@aol.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Estrella Samu', 0),
(6925000, 116, 3, 'dkines@hotmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Donte Kines', 0),
(6550000, 117, 3, 'tiffiny_steffensmeier@cox.net', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Tiffiny Steffensmeier', 0),
(7875000, 118, 3, 'emiceli@miceli.org', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Edna Miceli', 0),
(7725000, 119, 3, 'sue@aol.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Sue Kownacki', 0),
(10075000, 120, 3, 'jshin@shin.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Jesusa Shin', 0),
(8700000, 121, 3, 'rolland@cox.net', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Rolland Francescon', 0),
(8800000, 122, 3, 'pamella.schmierer@schmierer.org', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Pamella Schmierer', 0),
(5975000, 123, 3, 'gkulzer@kulzer.org', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Glory Kulzer', 0),
(10550000, 124, 3, 'shawna_palaspas@palaspas.org', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Shawna Palaspas', 0),
(2600000, 125, 3, 'brandon_callaro@hotmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Brandon Callaro', 0),
(9875000, 126, 3, 'scarlet.cartan@yahoo.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Scarlet Cartan', 0),
(11425000, 127, 3, 'oretha_menter@yahoo.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Oretha Menter', 0),
(3525000, 128, 3, 'tsmith@aol.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Ty Smith', 0),
(10850000, 129, 3, 'xuan@gmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Xuan Rochin', 0),
(5275000, 130, 3, 'lindsey.dilello@hotmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Lindsey Dilello', 0),
(10075000, 131, 3, 'devora_perez@perez.org', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Devora Perez', 0),
(6775000, 132, 3, 'hdemesa@cox.net', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Herman Demesa', 0),
(7175000, 133, 3, 'rpapasergi@cox.net', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Rory Papasergi', 0),
(11075000, 134, 3, 'talia_riopelle@aol.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Talia Riopelle', 0),
(8500000, 135, 3, 'van.shire@shire.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Van Shire', 0),
(4750000, 136, 3, 'lucina_lary@cox.net', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Lucina Lary', 0),
(10925000, 137, 3, 'bok.isaacs@aol.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Bok Isaacs', 0),
(5750000, 138, 3, 'rolande.spickerman@spickerman.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Rolande Spickerman', 0),
(7675000, 139, 3, 'hpaulas@gmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Howard Paulas', 0),
(3100000, 140, 3, 'kimbery_madarang@cox.net', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Kimbery Madarang', 0),
(2800000, 141, 3, 'thurman.manno@yahoo.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Thurman Manno', 0),
(9925000, 142, 3, 'becky.mirafuentes@mirafuentes.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Becky Mirafuentes', 0),
(5950000, 143, 3, 'beatriz@yahoo.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Beatriz Corrington', 0),
(4550000, 144, 3, 'marti.maybury@yahoo.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Marti Maybury', 0),
(2950000, 145, 3, 'nieves_gotter@gmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Nieves Gotter', 0),
(12050000, 146, 3, 'lhagele@cox.net', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Leatha Hagele', 0),
(9375000, 147, 3, 'vklimek@klimek.org', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Valentin Klimek', 0),
(6200000, 148, 3, 'melissa@cox.net', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Melissa Wiklund', 0),
(8750000, 149, 3, 'sheridan.zane@zane.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Sheridan Zane', 0),
(10625000, 150, 3, 'bulah_padilla@hotmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Bulah Padilla', 0),
(3675000, 151, 3, 'audra@kohnert.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Audra Kohnert', 0),
(3200000, 152, 3, 'dweirather@aol.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Daren Weirather', 0),
(11950000, 153, 3, 'fjillson@aol.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Fernanda Jillson', 0),
(3500000, 154, 3, 'gearldine_gellinger@gellinger.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Gearldine Gellinger', 0),
(10425000, 155, 3, 'chau@gmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Chau Kitzman', 0),
(5750000, 156, 3, 'theola_frey@frey.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Theola Frey', 0),
(11125000, 157, 3, 'cheryl@haroldson.org', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Cheryl Haroldson', 0),
(3500000, 158, 3, 'lmerced@gmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Laticia Merced', 0),
(5300000, 159, 3, 'carissa.batman@yahoo.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Carissa Batman', 0),
(3925000, 160, 3, 'lezlie.craghead@craghead.org', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Lezlie Craghead', 0),
(9175000, 161, 3, 'oshealy@hotmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Ozell Shealy', 0),
(4950000, 162, 3, 'arminda@parvis.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Arminda Parvis', 0),
(3950000, 163, 3, 'reita.leto@gmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Reita Leto', 0),
(6650000, 164, 3, 'yolando@cox.net', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Yolando Luczki', 0),
(2575000, 165, 3, 'lizette.stem@aol.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Lizette Stem', 0),
(3100000, 166, 3, 'gpawlowicz@yahoo.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Gregoria Pawlowicz', 0),
(6425000, 167, 3, 'cdeleo@deleo.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Carin Deleo', 0),
(3850000, 168, 3, 'chantell@yahoo.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Chantell Maynerich', 0),
(9675000, 169, 3, 'dyum@yahoo.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Dierdre Yum', 0),
(7250000, 170, 3, 'larae_gudroe@gmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Larae Gudroe', 0),
(8725000, 171, 3, 'latrice.tolfree@hotmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Latrice Tolfree', 0),
(9800000, 172, 3, 'kerry.theodorov@gmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Kerry Theodorov', 0),
(9125000, 173, 3, 'dhidvegi@yahoo.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Dorthy Hidvegi', 0),
(4225000, 174, 3, 'fannie.lungren@yahoo.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Fannie Lungren', 0),
(3175000, 175, 3, 'evangelina@aol.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Evangelina Radde', 0),
(9325000, 176, 3, 'novella_degroot@degroot.org', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Novella Degroot', 0),
(11175000, 177, 3, 'choa@hoa.org', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Clay Hoa', 0),
(7400000, 178, 3, 'jfallick@yahoo.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Jennifer Fallick', 0),
(11850000, 179, 3, 'irma.wolfgramm@hotmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Irma Wolfgramm', 0),
(3600000, 180, 3, 'eun@yahoo.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Eun Coody', 0),
(5050000, 181, 3, 'sylvia_cousey@cousey.org', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Sylvia Cousey', 0),
(4150000, 182, 3, 'nana@aol.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Nana Wrinkles', 0),
(6500000, 183, 3, 'layla.springe@cox.net', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Layla Springe', 0),
(4600000, 184, 3, 'joesph_degonia@degonia.org', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Joesph Degonia', 0),
(12425000, 185, 3, 'annabelle.boord@cox.net', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Annabelle Boord', 0),
(11225000, 186, 3, 'stephaine@cox.net', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Stephaine Vinning', 0),
(6675000, 187, 3, 'nelida@gmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Nelida Sawchuk', 0),
(2600000, 188, 3, 'marguerita.hiatt@gmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Marguerita Hiatt', 0),
(7825000, 189, 3, 'ccookey@cookey.org', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Carmela Cookey', 0),
(5625000, 190, 3, 'jbrideau@aol.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Junita Brideau', 0),
(3675000, 191, 3, 'claribel_varriano@cox.net', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Claribel Varriano', 0),
(12000000, 192, 3, 'benton.skursky@aol.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Benton Skursky', 0),
(3925000, 193, 3, 'hillary.skulski@aol.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Hillary Skulski', 0),
(2825000, 194, 3, 'merilyn_bayless@cox.net', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Merilyn Bayless', 0),
(4625000, 195, 3, 'tennaco@gmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Teri Ennaco', 0),
(8200000, 196, 3, 'merlyn_lawler@hotmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Merlyn Lawler', 0),
(2575000, 197, 3, 'gmontezuma@cox.net', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Georgene Montezuma', 0),
(12325000, 198, 3, 'jmconnell@hotmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Jettie Mconnell', 0),
(5400000, 199, 3, 'lemuel.latzke@gmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Lemuel Latzke', 0),
(5325000, 200, 3, 'mknipp@gmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Melodie Knipp', 0),
(2625000, 201, 3, 'candida_corbley@hotmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Candida Corbley', 0),
(12375000, 202, 3, 'karan_karpin@gmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Karan Karpin', 0),
(7075000, 203, 3, 'andra@gmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Andra Scheyer', 0),
(8450000, 204, 3, 'fpoullion@poullion.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Felicidad Poullion', 0),
(9325000, 205, 3, 'belen_strassner@aol.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Belen Strassner', 0),
(9325000, 206, 3, 'gracia@melnyk.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Gracia Melnyk', 0),
(7550000, 207, 3, 'jhanafan@gmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Jolanda Hanafan', 0),
(4500000, 208, 3, 'barrett.toyama@toyama.org', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Barrett Toyama', 0),
(2600000, 209, 3, 'helga_fredicks@yahoo.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Helga Fredicks', 0),
(12425000, 210, 3, 'apinilla@cox.net', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Ashlyn Pinilla', 0),
(5475000, 211, 3, 'fausto_agramonte@yahoo.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Fausto Agramonte', 0),
(5650000, 212, 3, 'ronny.caiafa@caiafa.org', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Ronny Caiafa', 0),
(11975000, 213, 3, 'marge@gmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Marge Limmel', 0),
(2700000, 214, 3, 'norah.waymire@gmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Norah Waymire', 0),
(9050000, 215, 3, 'aliza@aol.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Aliza Baltimore', 0),
(6450000, 216, 3, 'mpelkowski@pelkowski.org', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Mozell Pelkowski', 0),
(8575000, 217, 3, 'viola@gmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Viola Bitsuie', 0),
(8000000, 218, 3, 'femard@emard.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Franklyn Emard', 0),
(6000000, 219, 3, 'willodean_konopacki@konopacki.org', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Willodean Konopacki', 0),
(7775000, 220, 3, 'beckie.silvestrini@silvestrini.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Beckie Silvestrini', 0),
(4300000, 221, 3, 'rgesick@gesick.org', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Rebecka Gesick', 0),
(5275000, 222, 3, 'frederica_blunk@gmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Frederica Blunk', 0),
(2750000, 223, 3, 'glen_bartolet@hotmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Glen Bartolet', 0),
(11950000, 224, 3, 'freeman_gochal@aol.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Freeman Gochal', 0),
(10325000, 225, 3, 'vincent.meinerding@hotmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Vincent Meinerding', 0),
(4025000, 226, 3, 'rima@cox.net', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Rima Bevelacqua', 0),
(9950000, 227, 3, 'gsarbacher@gmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Glendora Sarbacher', 0),
(12500000, 228, 3, 'avery@cox.net', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Avery Steier', 0),
(5125000, 229, 3, 'cristy@lother.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Cristy Lother', 0),
(8025000, 230, 3, 'nicolette_brossart@brossart.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Nicolette Brossart', 0),
(5300000, 231, 3, 'tracey@hotmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Tracey Modzelewski', 0),
(2750000, 232, 3, 'virgina_tegarden@tegarden.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Virgina Tegarden', 0),
(8775000, 233, 3, 'tfrankel@aol.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Tiera Frankel', 0),
(12400000, 234, 3, 'alaine_bergesen@cox.net', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Alaine Bergesen', 0),
(9025000, 235, 3, 'earleen_mai@cox.net', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Earleen Mai', 0),
(10100000, 236, 3, 'leonida@gobern.org', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Leonida Gobern', 0),
(5275000, 237, 3, 'ressie.auffrey@yahoo.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Ressie Auffrey', 0),
(11000000, 238, 3, 'jmugnolo@yahoo.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Justine Mugnolo', 0),
(11525000, 239, 3, 'eladia@saulter.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Eladia Saulter', 0),
(7900000, 240, 3, 'chaya@malvin.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Chaya Malvin', 0),
(10025000, 241, 3, 'gwenn_suffield@suffield.org', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Gwenn Suffield', 0),
(6625000, 242, 3, 'skarpel@cox.net', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Salena Karpel', 0),
(8575000, 243, 3, 'yoko@fishburne.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Yoko Fishburne', 0),
(7450000, 244, 3, 'taryn.moyd@hotmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Taryn Moyd', 0),
(10675000, 245, 3, 'katina_polidori@aol.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Katina Polidori', 25),
(4100000, 246, 3, 'rickie.plumer@aol.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Rickie Plumer', 0),
(5800000, 247, 3, 'alex@loader.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Alex Loader', 0),
(6875000, 248, 3, 'lashon@aol.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Lashon Vizarro', 0),
(11975000, 249, 3, 'lburnard@burnard.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Lauran Burnard', 0),
(11475000, 250, 3, 'ceola.setter@setter.org', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Ceola Setter', 0),
(8825000, 251, 3, 'my@hotmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'My Rantanen', 0),
(7375000, 252, 3, 'lorrine.worlds@worlds.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Lorrine Worlds', 0),
(6125000, 253, 3, 'peggie@cox.net', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Peggie Sturiale', 0),
(5350000, 254, 3, 'mraymo@yahoo.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Marvel Raymo', 0),
(5400000, 255, 3, 'daron_dinos@cox.net', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Daron Dinos', 0),
(10350000, 256, 3, 'an_fritz@hotmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'An Fritz', 0),
(4800000, 257, 3, 'portia.stimmel@aol.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Portia Stimmel', 0),
(12350000, 258, 3, 'rhea_aredondo@cox.net', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Rhea Aredondo', 0),
(8825000, 259, 3, 'bsama@cox.net', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Benedict Sama', 0),
(7550000, 260, 3, 'alyce@arias.org', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Alyce Arias', 0),
(4800000, 261, 3, 'heike@gmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Heike Berganza', 0),
(2925000, 262, 3, 'carey_dopico@dopico.org', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Carey Dopico', 0),
(9350000, 263, 3, 'dottie@hellickson.org', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Dottie Hellickson', 0),
(9875000, 264, 3, 'deandrea@yahoo.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Deandrea Hughey', 0),
(6750000, 265, 3, 'kimberlie_duenas@yahoo.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Kimberlie Duenas', 0),
(3700000, 266, 3, 'martina_staback@staback.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Martina Staback', 0),
(8900000, 267, 3, 'skye_fillingim@yahoo.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Skye Fillingim', 0),
(10250000, 268, 3, 'jade.farrar@yahoo.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Jade Farrar', 0),
(4200000, 269, 3, 'charlene.hamilton@hotmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Charlene Hamilton', 0),
(5725000, 270, 3, 'geoffrey@gmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Geoffrey Acey', 0),
(9275000, 271, 3, 'stevie.westerbeck@yahoo.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Stevie Westerbeck', 0),
(6325000, 272, 3, 'pamella@fortino.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Pamella Fortino', 0),
(7750000, 273, 3, 'hhaufler@hotmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Harrison Haufler', 0),
(5600000, 274, 3, 'jengelberg@engelberg.org', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Johnna Engelberg', 0),
(3400000, 275, 3, 'buddy.cloney@yahoo.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Buddy Cloney', 0),
(4750000, 276, 3, 'dalene.riden@aol.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Dalene Riden', 0),
(12025000, 277, 3, 'jzurcher@zurcher.org', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Jerry Zurcher', 0),
(10600000, 278, 3, 'hdenooyer@denooyer.org', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Haydee Denooyer', 0),
(9550000, 279, 3, 'joseph_cryer@cox.net', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Joseph Cryer', 0),
(8850000, 280, 3, 'deonna_kippley@hotmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Deonna Kippley', 0),
(5475000, 281, 3, 'raymon.calvaresi@gmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Raymon Calvaresi', 0),
(7125000, 282, 3, 'alecia@aol.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Alecia Bubash', 0),
(8350000, 283, 3, 'mlayous@hotmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Ma Layous', 0),
(12225000, 284, 3, 'detra@aol.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Detra Coyier', 0),
(11950000, 285, 3, 'terrilyn.rodeigues@cox.net', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Terrilyn Rodeigues', 0),
(9275000, 286, 3, 'slacovara@gmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Salome Lacovara', 0),
(11650000, 287, 3, 'garry_keetch@hotmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Garry Keetch', 0),
(5125000, 288, 3, 'mneither@yahoo.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Matthew Neither', 0),
(11975000, 289, 3, 'theodora.restrepo@restrepo.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Theodora Restrepo', 0),
(3825000, 290, 3, 'noah.kalafatis@aol.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Noah Kalafatis', 0),
(2875000, 291, 3, 'csweigard@sweigard.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Carmen Sweigard', 0),
(7600000, 292, 3, 'lavonda@cox.net', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Lavonda Hengel', 0),
(5075000, 293, 3, 'junita@aol.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Junita Stoltzman', 0),
(10300000, 294, 3, 'herminia@nicolozakes.org', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Herminia Nicolozakes', 0),
(4575000, 295, 3, 'casie.good@aol.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Casie Good', 0),
(11200000, 296, 3, 'reena@hotmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Reena Maisto', 0),
(2875000, 297, 3, 'mirta_mallett@gmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Mirta Mallett', 0),
(10000000, 298, 3, 'cathrine.pontoriero@pontoriero.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Cathrine Pontoriero', 0),
(4100000, 299, 3, 'ftawil@hotmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Filiberto Tawil', 0),
(9400000, 300, 3, 'rupthegrove@yahoo.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Raul Upthegrove', 0),
(8225000, 301, 3, 'sarah.candlish@gmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Sarah Candlish', 0),
(10325000, 302, 3, 'lucy@cox.net', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Lucy Treston', 0),
(2650000, 303, 3, 'jaquas@aquas.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Judy Aquas', 0),
(5625000, 304, 3, 'yvonne.tjepkema@hotmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Yvonne Tjepkema', 0),
(7750000, 305, 3, 'kayleigh.lace@yahoo.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Kayleigh Lace', 0),
(8725000, 306, 3, 'felix_hirpara@cox.net', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Felix Hirpara', 0),
(5750000, 307, 3, 'tresa_sweely@hotmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Tresa Sweely', 0),
(12125000, 308, 3, 'kristeen@gmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Kristeen Turinetti', 0),
(4775000, 309, 3, 'jregusters@regusters.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Jenelle Regusters', 0),
(8950000, 310, 3, 'renea@hotmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Renea Monterrubio', 0),
(6975000, 311, 3, 'olive@aol.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Olive Matuszak', 0),
(7575000, 312, 3, 'lreiber@cox.net', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Ligia Reiber', 0),
(10275000, 313, 3, 'christiane.eschberger@yahoo.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Christiane Eschberger', 0),
(3825000, 314, 3, 'goldie.schirpke@yahoo.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Goldie Schirpke', 0),
(4175000, 315, 3, 'loreta.timenez@hotmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Loreta Timenez', 0),
(9925000, 316, 3, 'fabiola.hauenstein@hauenstein.org', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Fabiola Hauenstein', 0),
(10000000, 317, 3, 'amie.perigo@yahoo.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Amie Perigo', 0),
(9200000, 318, 3, 'raina.brachle@brachle.org', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Raina Brachle', 0),
(6325000, 319, 3, 'erinn.canlas@canlas.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Erinn Canlas', 0),
(8525000, 320, 3, 'cherry@lietz.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Cherry Lietz', 0),
(7475000, 321, 3, 'kattie@vonasek.org', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Kattie Vonasek', 0),
(2925000, 322, 3, 'lilli@aol.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Lilli Scriven', 0),
(8325000, 323, 3, 'whitley.tomasulo@aol.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Whitley Tomasulo', 0),
(3725000, 324, 3, 'badkin@hotmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Barbra Adkin', 0),
(7125000, 325, 3, 'hermila_thyberg@hotmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Hermila Thyberg', 0),
(4275000, 326, 3, 'jesusita.flister@hotmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Jesusita Flister', 0),
(10150000, 327, 3, 'caitlin.julia@julia.org', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Caitlin Julia', 0),
(8575000, 328, 3, 'roosevelt.hoffis@aol.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Roosevelt Hoffis', 0),
(7975000, 329, 3, 'hhalter@yahoo.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Helaine Halter', 0),
(7975000, 330, 3, 'lorean.martabano@hotmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Lorean Martabano', 0),
(4050000, 331, 3, 'france.buzick@yahoo.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'France Buzick', 0),
(8525000, 332, 3, 'jferrario@hotmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Justine Ferrario', 0),
(11700000, 333, 3, 'adelina_nabours@gmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Adelina Nabours', 0),
(11350000, 334, 3, 'ddhamer@cox.net', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Derick Dhamer', 0),
(10525000, 335, 3, 'jerry.dallen@yahoo.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Jerry Dallen', 0),
(6025000, 336, 3, 'leota.ragel@gmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Leota Ragel', 0),
(12250000, 337, 3, 'jamyot@hotmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Jutta Amyot', 0),
(3150000, 338, 3, 'aja_gehrett@hotmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Aja Gehrett', 0),
(3050000, 339, 3, 'kirk.herritt@aol.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Kirk Herritt', 0),
(10675000, 340, 3, 'leonora@yahoo.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Leonora Mauson', 0),
(9775000, 341, 3, 'winfred_brucato@hotmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Winfred Brucato', 0),
(9300000, 342, 3, 'tarra.nachor@cox.net', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Tarra Nachor', 0),
(12325000, 343, 3, 'corinne@loder.org', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Corinne Loder', 0),
(5950000, 344, 3, 'dulce_labreche@yahoo.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Dulce Labreche', 0),
(11775000, 345, 3, 'kate_keneipp@yahoo.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Kate Keneipp', 0),
(7175000, 346, 3, 'kaitlyn.ogg@gmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Kaitlyn Ogg', 0),
(3500000, 347, 3, 'sherita.saras@cox.net', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Sherita Saras', 0),
(9025000, 348, 3, 'lstuer@cox.net', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Lashawnda Stuer', 0),
(9100000, 349, 3, 'ernest@cox.net', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Ernest Syrop', 0),
(9175000, 350, 3, 'nobuko.halsey@yahoo.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Nobuko Halsey', 0),
(5950000, 351, 3, 'lavonna.wolny@hotmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Lavonna Wolny', 0),
(6050000, 352, 3, 'llizama@cox.net', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Lashaunda Lizama', 0),
(8275000, 353, 3, 'mariann.bilden@aol.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Mariann Bilden', 0),
(2750000, 354, 3, 'helene@aol.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Helene Rodenberger', 0),
(6325000, 355, 3, 'roselle.estell@hotmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Roselle Estell', 0),
(7400000, 356, 3, 'sheintzman@hotmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Samira Heintzman', 0),
(4275000, 357, 3, 'margart_meisel@yahoo.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Margart Meisel', 0),
(11975000, 358, 3, 'kristofer.bennick@yahoo.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Kristofer Bennick', 0),
(10675000, 359, 3, 'wacuff@gmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Weldon Acuff', 0),
(8700000, 360, 3, 'shalon@cox.net', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Shalon Shadrick', 0),
(6250000, 361, 3, 'denise@patak.org', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Denise Patak', 0),
(8450000, 362, 3, 'louvenia.beech@beech.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Louvenia Beech', 0),
(6200000, 363, 3, 'audry.yaw@yaw.org', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Audry Yaw', 0),
(8100000, 364, 3, 'kristel.ehmann@aol.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Kristel Ehmann', 0),
(11450000, 365, 3, 'vzepp@gmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Vincenza Zepp', 0),
(5450000, 366, 3, 'egwalthney@yahoo.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Elouise Gwalthney', 0),
(3550000, 367, 3, 'venita_maillard@gmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Venita Maillard', 0),
(8775000, 368, 3, 'kasandra_semidey@semidey.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Kasandra Semidey', 0),
(5750000, 369, 3, 'xdiscipio@gmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Xochitl Discipio', 0),
(12125000, 370, 3, 'mlinahan@yahoo.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Maile Linahan', 0),
(11350000, 371, 3, 'krauser@cox.net', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Krissy Rauser', 0),
(5025000, 372, 3, 'pdubaldi@hotmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Pete Dubaldi', 0),
(8775000, 373, 3, 'linn_paa@paa.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Linn Paa', 0),
(12025000, 374, 3, 'paris@hotmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Paris Wide', 0),
(8425000, 375, 3, 'wynell_dorshorst@dorshorst.org', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Wynell Dorshorst', 0),
(11925000, 376, 3, 'qbirkner@aol.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Quentin Birkner', 0),
(12225000, 377, 3, 'regenia.kannady@cox.net', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Regenia Kannady', 0),
(9125000, 378, 3, 'sheron@aol.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Sheron Louissant', 0),
(4300000, 379, 3, 'izetta.funnell@hotmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Izetta Funnell', 0),
(9050000, 380, 3, 'rodolfo@hotmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Rodolfo Butzen', 0),
(7450000, 381, 3, 'zona@hotmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Zona Colla', 0),
(3225000, 382, 3, 'szagen@aol.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Serina Zagen', 0),
(3075000, 383, 3, 'paz_sahagun@cox.net', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Paz Sahagun', 0),
(7400000, 384, 3, 'markus@yahoo.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Markus Lukasik', 0),
(3150000, 385, 3, 'jaclyn@aol.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Jaclyn Bachman', 0),
(3875000, 386, 3, 'cyril_daufeldt@daufeldt.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Cyril Daufeldt', 0),
(4400000, 387, 3, 'gschnitzler@gmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Gayla Schnitzler', 0),
(6450000, 388, 3, 'erick_nievas@aol.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Erick Nievas', 0),
(7925000, 389, 3, 'jennie@cox.net', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Jennie Drymon', 0),
(4550000, 390, 3, 'mscipione@scipione.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Mitsue Scipione', 0),
(8000000, 391, 3, 'cventura@yahoo.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Ciara Ventura', 0),
(10525000, 392, 3, 'galen@yahoo.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Galen Cantres', 0),
(11275000, 393, 3, 'tfeichtner@yahoo.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Truman Feichtner', 0),
(11850000, 394, 3, 'gail@kitty.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Gail Kitty', 0),
(12375000, 395, 3, 'dalene@schoeneck.org', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Dalene Schoeneck', 0);
INSERT INTO `users` (`balance`, `id`, `role_id`, `email`, `password`, `username`, `video_viewed_time`) VALUES
(2875000, 396, 3, 'gertude.witten@gmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Gertude Witten', 0),
(5675000, 397, 3, 'lizbeth@yahoo.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Lizbeth Kohl', 0),
(4900000, 398, 3, 'gberray@gmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Glenn Berray', 0),
(7500000, 399, 3, 'lashandra@yahoo.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Lashandra Klang', 0),
(8350000, 400, 3, 'lnewville@newville.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Lenna Newville', 0),
(12100000, 401, 3, 'laurel@yahoo.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Laurel Pagliuca', 0),
(2575000, 402, 3, 'mireya.frerking@hotmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Mireya Frerking', 0),
(7900000, 403, 3, 'annelle@yahoo.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Annelle Tagala', 0),
(9925000, 404, 3, 'dean_ketelsen@gmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Dean Ketelsen', 0),
(11100000, 405, 3, 'levi.munis@gmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Levi Munis', 0),
(9325000, 406, 3, 'sylvie@aol.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Sylvie Ryser', 0),
(9275000, 407, 3, 'sharee_maile@aol.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Sharee Maile', 0),
(8325000, 408, 3, 'cordelia_storment@aol.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Cordelia Storment', 0),
(4550000, 409, 3, 'mollie_mcdoniel@yahoo.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Mollie Mcdoniel', 0),
(11000000, 410, 3, 'brett.mccullan@mccullan.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Brett Mccullan', 0),
(5500000, 411, 3, 'teddy_pedrozo@aol.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Teddy Pedrozo', 0),
(10875000, 412, 3, 'tasia_andreason@yahoo.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Tasia Andreason', 0),
(4775000, 413, 3, 'hubert@walthall.org', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Hubert Walthall', 0),
(9550000, 414, 3, 'arthur.farrow@yahoo.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Arthur Farrow', 0),
(6100000, 415, 3, 'vberlanga@berlanga.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Vilma Berlanga', 0),
(4425000, 416, 3, 'billye_miro@cox.net', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Billye Miro', 0),
(5850000, 417, 3, 'glenna_slayton@cox.net', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Glenna Slayton', 0),
(11600000, 418, 3, 'mitzie_hudnall@yahoo.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Mitzie Hudnall', 0),
(3175000, 419, 3, 'bernardine_rodefer@yahoo.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Bernardine Rodefer', 0),
(8900000, 420, 3, 'staci_schmaltz@aol.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Staci Schmaltz', 0),
(2575000, 421, 3, 'nichelle_meteer@meteer.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Nichelle Meteer', 0),
(5575000, 422, 3, 'jrhoden@yahoo.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Janine Rhoden', 0),
(3350000, 423, 3, 'ettie.hoopengardner@hotmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Ettie Hoopengardner', 0),
(3325000, 424, 3, 'eden_jayson@yahoo.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Eden Jayson', 0),
(4225000, 425, 3, 'lynelle_auber@gmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Lynelle Auber', 17),
(9975000, 426, 3, 'merissa.tomblin@gmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Merissa Tomblin', 0),
(9225000, 427, 3, 'golda_kaniecki@yahoo.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Golda Kaniecki', 0),
(8700000, 428, 3, 'catarina_gleich@hotmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Catarina Gleich', 0),
(9900000, 429, 3, 'vkiel@hotmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Virgie Kiel', 0),
(3225000, 430, 3, 'jolene@yahoo.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Jolene Ostolaza', 0),
(9350000, 431, 3, 'keneth@yahoo.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Keneth Borgman', 0),
(12375000, 432, 3, 'rikki@nayar.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Rikki Nayar', 0),
(10500000, 433, 3, 'elke_sengbusch@yahoo.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Elke Sengbusch', 0),
(5275000, 434, 3, 'hoa@sarao.org', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Hoa Sarao', 0),
(6875000, 435, 3, 'trinidad_mcrae@yahoo.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Trinidad Mcrae', 0),
(9350000, 436, 3, 'mari_lueckenbach@yahoo.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Mari Lueckenbach', 0),
(5550000, 437, 3, 'selma.husser@cox.net', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Selma Husser', 0),
(3800000, 438, 3, 'aonofrio@onofrio.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Antione Onofrio', 0),
(10750000, 439, 3, 'ljurney@hotmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Luisa Jurney', 0),
(11850000, 440, 3, 'clorinda.heimann@hotmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Clorinda Heimann', 0),
(6100000, 441, 3, 'dick@yahoo.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Dick Wenzinger', 0),
(9350000, 442, 3, 'ahmed.angalich@angalich.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Ahmed Angalich', 0),
(8550000, 443, 3, 'iluminada.ohms@yahoo.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Iluminada Ohms', 0),
(10350000, 444, 3, 'joanna_leinenbach@hotmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Joanna Leinenbach', 0),
(6775000, 445, 3, 'caprice@aol.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Caprice Suell', 0),
(2975000, 446, 3, 'stephane_myricks@cox.net', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Stephane Myricks', 0),
(11575000, 447, 3, 'quentin_swayze@yahoo.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Quentin Swayze', 0),
(10850000, 448, 3, 'annmarie_castros@gmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Annmarie Castros', 0),
(5750000, 449, 3, 'shonda_greenbush@cox.net', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Shonda Greenbush', 0),
(5000000, 450, 3, 'clapage@lapage.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Cecil Lapage', 0),
(5075000, 451, 3, 'jeanice.claucherty@yahoo.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Jeanice Claucherty', 0),
(6775000, 452, 3, 'josphine_villanueva@villanueva.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Josphine Villanueva', 0),
(7525000, 453, 3, 'dperruzza@perruzza.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Daniel Perruzza', 0),
(5150000, 454, 3, 'cassi.wildfong@aol.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Cassi Wildfong', 0),
(6425000, 455, 3, 'britt@galam.org', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Britt Galam', 0),
(8350000, 456, 3, 'adell.lipkin@lipkin.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Adell Lipkin', 0),
(12000000, 457, 3, 'jacqueline.rowling@yahoo.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Jacqueline Rowling', 0),
(3475000, 458, 3, 'lonny_weglarz@gmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Lonny Weglarz', 0),
(11425000, 459, 3, 'lonna_diestel@gmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Lonna Diestel', 0),
(3350000, 460, 3, 'cristal@cox.net', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Cristal Samara', 0),
(6550000, 461, 3, 'kenneth.grenet@grenet.org', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Kenneth Grenet', 0),
(7875000, 462, 3, 'emclaird@mclaird.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Elli Mclaird', 0),
(7975000, 463, 3, 'ajeanty@gmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Alline Jeanty', 0),
(9625000, 464, 3, 'sharika.eanes@aol.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Sharika Eanes', 0),
(9700000, 465, 3, 'nu@gmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Nu Mcnease', 0),
(3200000, 466, 3, 'dcomnick@cox.net', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Daniela Comnick', 0),
(10425000, 467, 3, 'cecilia_colaizzo@colaizzo.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Cecilia Colaizzo', 0),
(5900000, 468, 3, 'leslie@cox.net', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Leslie Threets', 0),
(9750000, 469, 3, 'nan@koppinger.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Nan Koppinger', 0),
(8450000, 470, 3, 'idewar@dewar.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Izetta Dewar', 0),
(3800000, 471, 3, 'tegan.arceo@arceo.org', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Tegan Arceo', 0),
(3575000, 472, 3, 'ruthann@hotmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Ruthann Keener', 0),
(3825000, 473, 3, 'joni_breland@cox.net', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Joni Breland', 0),
(11050000, 474, 3, 'vrentfro@cox.net', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Vi Rentfro', 0),
(3400000, 475, 3, 'colette.kardas@yahoo.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Colette Kardas', 0),
(7350000, 476, 3, 'malcolm_tromblay@cox.net', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Malcolm Tromblay', 0),
(8750000, 477, 3, 'ryan@cox.net', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Ryan Harnos', 0),
(7550000, 478, 3, 'jess.chaffins@chaffins.org', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Jess Chaffins', 0),
(3725000, 479, 3, 'sbourbon@yahoo.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Sharen Bourbon', 0),
(4700000, 480, 3, 'nickolas_juvera@cox.net', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Nickolas Juvera', 0),
(11650000, 481, 3, 'gary_nunlee@nunlee.org', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Gary Nunlee', 0),
(6875000, 482, 3, 'diane@cox.net', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Diane Devreese', 0),
(10850000, 483, 3, 'roslyn.chavous@chavous.org', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Roslyn Chavous', 0),
(6950000, 484, 3, 'glory@yahoo.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Glory Schieler', 0),
(5975000, 485, 3, 'rasheeda@aol.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Rasheeda Sayaphon', 0),
(9675000, 486, 3, 'alpha@yahoo.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Alpha Palaia', 0),
(3950000, 487, 3, 'refugia.jacobos@jacobos.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Refugia Jacobos', 0),
(4925000, 488, 3, 'shawnda.yori@yahoo.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Shawnda Yori', 0),
(3575000, 489, 3, 'mdelasancha@hotmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Mona Delasancha', 0),
(11050000, 490, 3, 'gilma_liukko@gmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Gilma Liukko', 0),
(3825000, 491, 3, 'jgabisi@hotmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Janey Gabisi', 0),
(6525000, 492, 3, 'lili.paskin@cox.net', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Lili Paskin', 0),
(3425000, 493, 3, 'loren.asar@aol.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Loren Asar', 0),
(6025000, 494, 3, 'dorothy@cox.net', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Dorothy Chesterfield', 0),
(8550000, 495, 3, 'gail_similton@similton.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Gail Similton', 0),
(11050000, 496, 3, 'catalina@hotmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Catalina Tillotson', 0),
(7325000, 497, 3, 'lawrence.lorens@hotmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Lawrence Lorens', 0),
(7200000, 498, 3, 'carlee.boulter@hotmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Carlee Boulter', 0),
(5000000, 499, 3, 'tankeny@ankeny.org', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Thaddeus Ankeny', 0),
(3050000, 500, 3, 'joles@gmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Jovita Oles', 0),
(4750000, 501, 3, 'alesia_hixenbaugh@hixenbaugh.org', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Alesia Hixenbaugh', 0),
(3475000, 502, 3, 'lai@gmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Lai Harabedian', 0),
(3750000, 503, 3, 'bgillaspie@gillaspie.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Brittni Gillaspie', 0),
(6300000, 504, 3, 'rkampa@kampa.org', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Raylene Kampa', 0),
(9175000, 505, 3, 'flo.bookamer@cox.net', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Flo Bookamer', 0),
(3100000, 506, 3, 'jbiddy@yahoo.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Jani Biddy', 0),
(5725000, 507, 3, 'chauncey_motley@aol.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Chauncey Motley', 0),
(2500000, 508, 2, 'tiemanphanhphanh@gmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'tiemanphanhphanhadmin', 0),
(2650000, 509, 2, 'bundaumetbathanh@gmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'bundaumetbathanhadmin', 0),
(5000000, 510, 2, 'bunthuy@gmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'bunthuyadmin', 0),
(5675000, 511, 2, 'bumtro@gmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'bumtroadmin', 0),
(5250000, 512, 2, 'bonchonchicken@gmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'bonchonchickenadmin', 0),
(4455000, 513, 2, 'thepizzacompany@gmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'thepizzacompanyadmin', 0),
(2000000, 514, 2, 'dominopizza@gmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'dominopizzaadmin', 0),
(2475000, 515, 2, 'chaosuonsunvadoannhanh@gmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'chaosuonsunvadoannhanhadmin', 0),
(0, 552, 3, 'andreawilson@gmail.com', '$2a$10$rAEQ64b4x3ghXRK2csnFQODs50.BFTbX2k5XnHbtBobs6Kn04RVSa', 'Andrea Wilson', 0),
(0, 553, 3, 'anderson@gmail.com', '$2a$10$3ImDopWfKfXCbEtATXOO.egwyNHCgc2n0FmzIAoT0pm4TfwMapp0S', 'Anderson', 0),
(0, 554, 3, 'matthew_zabic@gmail.com', '$2a$10$wrljKMQSW/IdgDhGel7pLe2uCF2T1Le0e9yb9CtiwyPdsYUzJXQS.', 'Matthew Zabic', 0),
(0, 555, 3, 'dangrangto@gmail.com', '$2a$10$LvK7dmpYvV8k6ggfFzvU2eY.cxWipXU1p9hHSXCVzSG/YnRHEMD3m', 'Dangrangto', 0),
(0, 556, 3, 'mimotoka@gmail.com', '$2a$10$8KImS82fE0pqvTo5hJVDyeffwzDWuXznvACzFXWCZb.3cT4Xfpa5i', 'Mimotoka', 0),
(0, 557, 3, '2pillz@gmail.com', '$2a$10$8QsvUBnSb2QQqyug3HA/UeaeosKW.1UNPsRwUX7sHL409QUw3VoV2', '2pillz', 0),
(0, 558, 3, 'minhhuy@gmail.com', '$2a$10$l7oSYv4DFFfmba7WoMsNS.ROQvKmMJXnzR2xllKatOdXOqg3ZJsTu', 'Minh Huy', 0),
(0, 559, 3, 'umie@gmail.com', '$2a$10$SJoJj2WI7QOO5oXt1wHuretbSqFZB4ty.BfhIcsQ6b0xx/qLZ1QfO', 'Umie', 0),
(0, 560, 3, 'lyly@gmail.com', '$2a$10$rIUjyYepM6y50rXRVoVr5ughhgF0B6m7nIakRduvmtJezzwfYOAd6', 'LyLy', 0),
(0, 561, 3, 'mtp@gmail.com', '$2a$10$KqKq06rtnXkTsxLLzLB/0e4nf.VlSvpKZDIE8f2vQe4NcjCBJU.pK', 'Son Tung Mtp', 0),
(0, 562, 3, 'nguyenxuanminh@gmail.com', '$2a$10$.Fdoww1y2Gi9ZM1Pu1k5IOXwXGk8m6Zcbq9l6/mRO/G.7skY.JiPe', 'Nguyen Xuan Minh', 0),
(0, 563, 3, 'phucxp@gmail.com', '$2a$10$vVwWc7xZAKVY/Ni3FBjXwOjVEr4D66ixHvAMAThZf.NKygwbuQS8a', 'PhucXp', 0),
(0, 564, 3, 'freakD@gmail.com', '$2a$10$UdIR8bSSIuhQ69sh4YTuPOMgd5Q088a7SrjKMpLIz.9aSGBsT9zHS', 'freakD', 0),
(0, 565, 3, 'tuananh@gmail.com', '$2a$10$B7qCTljhlHbcTKDNjG4tXuEwEAF20cP0zschgz/PgKdQRym4b.MZS', 'Tuan Anh', 0),
(230000, 566, 3, 'wean@gmail.com', '$2a$10$sLzyHVPP0zBnD0nRNNhJeuqWkXpTVeJdRnCUJF7AHKd8U5AKcxapK', 'WEAN', 0),
(0, 567, 3, 'wean1@gmail.com', '$2a$10$DV7srBA/mUaGRZ0k0fDoSOWQqTPQmfffifwwvLzxFyEPu8ruyxN4S', 'WEAN1', 0),
(80000, 568, 3, 'duong.dk205075@sis.hust.edu.vn', '$2a$10$Wlryb9IbDaVllF3Em.g8t./bABI1Su/uOrSIjwWE2GipBRd3ejty6', 'DuongDK2', 0),
(5000, 569, 3, 'voibandon@gmail.com', '$2a$10$DTMTaxx8SJiR3i3DDtkb1uiPHyjdazlY0YpwOwJLfKZoApZDfjut6', 'Voi Ban Don', 0),
(165000, 570, 3, 'trang@gmail.com', '$2a$10$/0he2a7ifwb9Vcwgp66/yuYg5c.NPJnoP.b.KGY3ZDbmCHny5r9uu', 'Trang', 0),
(305000, 571, 3, 'warrentdt@gmail.com', '$2a$10$zT6cTGxiMSp6D21UQm8WiuMt6HQvP3rR/uomJK4XYPMQy1859sUEq', 'Warren DT', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_roles`
--

CREATE TABLE `user_roles` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `user_roles`
--

INSERT INTO `user_roles` (`id`, `name`) VALUES
(1, 'ROLE_SYSADMIN'),
(2, 'ROLE_ADMIN'),
(3, 'ROLE_CUSTOMER');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_voucher`
--

CREATE TABLE `user_voucher` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `voucher_id` bigint(20) NOT NULL,
  `remain_count` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `user_voucher`
--

INSERT INTO `user_voucher` (`id`, `user_id`, `voucher_id`, `remain_count`) VALUES
(1, 1, 13, 1),
(2, 2, 13, 1),
(3, 3, 13, 1),
(4, 4, 13, 1),
(5, 5, 13, 1),
(6, 6, 13, 1),
(7, 7, 13, 1),
(8, 8, 13, 1),
(9, 9, 13, 1),
(10, 10, 13, 1),
(11, 11, 13, 1),
(12, 12, 13, 1),
(13, 13, 13, 1),
(14, 14, 13, 1),
(15, 15, 13, 1),
(16, 16, 13, 1),
(17, 17, 13, 1),
(18, 18, 13, 1),
(19, 19, 13, 1),
(20, 20, 13, 1),
(21, 21, 13, 1),
(22, 22, 13, 1),
(23, 23, 13, 1),
(24, 24, 13, 1),
(25, 25, 13, 1),
(26, 26, 13, 1),
(27, 27, 13, 1),
(28, 28, 13, 1),
(29, 29, 13, 1),
(30, 30, 13, 1),
(31, 31, 13, 1),
(32, 32, 13, 1),
(33, 33, 13, 1),
(34, 34, 13, 1),
(35, 35, 13, 1),
(36, 36, 13, 1),
(37, 37, 13, 1),
(38, 38, 13, 1),
(39, 39, 13, 1),
(40, 40, 13, 1),
(41, 41, 13, 1),
(42, 42, 13, 1),
(43, 43, 13, 1),
(44, 44, 13, 1),
(45, 45, 13, 1),
(46, 46, 13, 1),
(47, 47, 13, 1),
(48, 48, 13, 1),
(49, 49, 13, 1),
(50, 50, 13, 1),
(51, 51, 13, 1),
(52, 52, 13, 1),
(53, 53, 13, 1),
(54, 54, 13, 1),
(55, 55, 13, 1),
(56, 56, 13, 1),
(57, 57, 13, 1),
(58, 58, 13, 1),
(59, 59, 13, 1),
(60, 60, 13, 1),
(61, 61, 13, 1),
(62, 62, 13, 1),
(63, 63, 13, 1),
(64, 64, 13, 1),
(65, 65, 13, 1),
(66, 66, 13, 1),
(67, 67, 13, 1),
(68, 68, 13, 1),
(69, 69, 13, 1),
(70, 70, 13, 1),
(71, 71, 13, 1),
(72, 72, 13, 1),
(73, 73, 13, 1),
(74, 74, 13, 1),
(75, 75, 13, 1),
(76, 76, 13, 1),
(77, 77, 13, 1),
(78, 78, 13, 1),
(79, 79, 13, 1),
(80, 80, 13, 1),
(81, 81, 13, 1),
(82, 82, 13, 1),
(83, 83, 13, 1),
(84, 84, 13, 1),
(85, 85, 13, 1),
(86, 86, 13, 1),
(87, 87, 13, 1),
(88, 88, 13, 1),
(89, 89, 13, 1),
(90, 90, 13, 1),
(91, 91, 13, 1),
(92, 92, 13, 1),
(93, 93, 13, 1),
(94, 94, 13, 1),
(95, 95, 13, 1),
(96, 96, 13, 1),
(97, 97, 13, 1),
(98, 98, 13, 1),
(99, 99, 13, 1),
(100, 100, 13, 1),
(101, 101, 13, 1),
(102, 102, 13, 1),
(103, 103, 13, 1),
(104, 104, 13, 1),
(105, 105, 13, 1),
(106, 106, 13, 1),
(107, 107, 13, 1),
(108, 108, 13, 1),
(109, 109, 13, 1),
(110, 110, 13, 1),
(111, 111, 13, 1),
(112, 112, 13, 1),
(113, 113, 13, 1),
(114, 114, 13, 1),
(115, 115, 13, 1),
(116, 116, 13, 1),
(117, 117, 13, 1),
(118, 118, 13, 1),
(119, 119, 13, 1),
(120, 120, 13, 1),
(121, 121, 13, 1),
(122, 122, 13, 1),
(123, 123, 13, 1),
(124, 124, 13, 1),
(125, 125, 13, 1),
(126, 126, 13, 1),
(127, 127, 13, 1),
(128, 128, 13, 1),
(129, 129, 13, 1),
(130, 130, 13, 1),
(131, 131, 13, 1),
(132, 132, 13, 1),
(133, 133, 13, 1),
(134, 134, 13, 1),
(135, 135, 13, 1),
(136, 136, 13, 1),
(137, 137, 13, 1),
(138, 138, 13, 1),
(139, 139, 13, 1),
(140, 140, 13, 1),
(141, 141, 13, 1),
(142, 142, 13, 1),
(143, 143, 13, 1),
(144, 144, 13, 1),
(145, 145, 13, 1),
(146, 146, 13, 1),
(147, 147, 13, 1),
(148, 148, 13, 1),
(149, 149, 13, 1),
(150, 150, 13, 1),
(151, 151, 13, 1),
(152, 152, 13, 1),
(153, 153, 13, 1),
(154, 154, 13, 1),
(155, 155, 13, 1),
(156, 156, 13, 1),
(157, 157, 13, 1),
(158, 158, 13, 1),
(159, 159, 13, 1),
(160, 160, 13, 1),
(161, 161, 13, 1),
(162, 162, 13, 1),
(163, 163, 13, 1),
(164, 164, 13, 1),
(165, 165, 13, 1),
(166, 166, 13, 1),
(167, 167, 13, 1),
(168, 168, 13, 1),
(169, 169, 13, 1),
(170, 170, 13, 1),
(171, 171, 13, 1),
(172, 172, 13, 1),
(173, 173, 13, 1),
(174, 174, 13, 1),
(175, 175, 13, 1),
(176, 176, 13, 1),
(177, 177, 13, 1),
(178, 178, 13, 1),
(179, 179, 13, 1),
(180, 180, 13, 1),
(181, 181, 13, 1),
(182, 182, 13, 1),
(183, 183, 13, 1),
(184, 184, 13, 1),
(185, 185, 13, 1),
(186, 186, 13, 1),
(187, 187, 13, 1),
(188, 188, 13, 1),
(189, 189, 13, 1),
(190, 190, 13, 1),
(191, 191, 13, 1),
(192, 192, 13, 1),
(193, 193, 13, 1),
(194, 194, 13, 1),
(195, 195, 13, 1),
(196, 196, 13, 1),
(197, 197, 13, 1),
(198, 198, 13, 1),
(199, 199, 13, 1),
(200, 200, 13, 1),
(201, 201, 13, 1),
(202, 202, 13, 1),
(203, 203, 13, 1),
(204, 204, 13, 1),
(205, 205, 13, 1),
(206, 206, 13, 1),
(207, 207, 13, 1),
(208, 208, 13, 1),
(209, 209, 13, 1),
(210, 210, 13, 1),
(211, 211, 13, 1),
(212, 212, 13, 1),
(213, 213, 13, 1),
(214, 214, 13, 1),
(215, 215, 13, 1),
(216, 216, 13, 1),
(217, 217, 13, 1),
(218, 218, 13, 1),
(219, 219, 13, 1),
(220, 220, 13, 1),
(221, 221, 13, 1),
(222, 222, 13, 1),
(223, 223, 13, 1),
(224, 224, 13, 1),
(225, 225, 13, 1),
(226, 226, 13, 1),
(227, 227, 13, 1),
(228, 228, 13, 1),
(229, 229, 13, 1),
(230, 230, 13, 1),
(231, 231, 13, 1),
(232, 232, 13, 1),
(233, 233, 13, 1),
(234, 234, 13, 1),
(235, 235, 13, 1),
(236, 236, 13, 1),
(237, 237, 13, 1),
(238, 238, 13, 1),
(239, 239, 13, 1),
(240, 240, 13, 1),
(241, 241, 13, 1),
(242, 242, 13, 1),
(243, 243, 13, 1),
(244, 244, 13, 1),
(245, 245, 13, 1),
(246, 246, 13, 1),
(247, 247, 13, 1),
(248, 248, 13, 1),
(249, 249, 13, 1),
(250, 250, 13, 1),
(251, 251, 13, 1),
(252, 252, 13, 1),
(253, 253, 13, 1),
(254, 254, 13, 1),
(255, 255, 13, 1),
(256, 256, 13, 1),
(257, 257, 13, 1),
(258, 258, 13, 1),
(259, 259, 13, 1),
(260, 260, 13, 1),
(261, 261, 13, 1),
(262, 262, 13, 1),
(263, 263, 13, 1),
(264, 264, 13, 1),
(265, 265, 13, 1),
(266, 266, 13, 1),
(267, 267, 13, 1),
(268, 268, 13, 1),
(269, 269, 13, 1),
(270, 270, 13, 1),
(271, 271, 13, 1),
(272, 272, 13, 1),
(273, 273, 13, 1),
(274, 274, 13, 1),
(275, 275, 13, 1),
(276, 276, 13, 1),
(277, 277, 13, 1),
(278, 278, 13, 1),
(279, 279, 13, 1),
(280, 280, 13, 1),
(281, 281, 13, 1),
(282, 282, 13, 1),
(283, 283, 13, 1),
(284, 284, 13, 1),
(285, 285, 13, 1),
(286, 286, 13, 1),
(287, 287, 13, 1),
(288, 288, 13, 1),
(289, 289, 13, 1),
(290, 290, 13, 1),
(291, 291, 13, 1),
(292, 292, 13, 1),
(293, 293, 13, 1),
(294, 294, 13, 1),
(295, 295, 13, 1),
(296, 296, 13, 1),
(297, 297, 13, 1),
(298, 298, 13, 1),
(299, 299, 13, 1),
(300, 300, 13, 1),
(301, 301, 13, 1),
(302, 302, 13, 1),
(303, 303, 13, 1),
(304, 304, 13, 1),
(305, 305, 13, 1),
(306, 306, 13, 1),
(307, 307, 13, 1),
(308, 308, 13, 1),
(309, 309, 13, 1),
(310, 310, 13, 1),
(311, 311, 13, 1),
(312, 312, 13, 1),
(313, 313, 13, 1),
(314, 314, 13, 1),
(315, 315, 13, 1),
(316, 316, 13, 1),
(317, 317, 13, 1),
(318, 318, 13, 1),
(319, 319, 13, 1),
(320, 320, 13, 1),
(321, 321, 13, 1),
(322, 322, 13, 1),
(323, 323, 13, 1),
(324, 324, 13, 1),
(325, 325, 13, 1),
(326, 326, 13, 1),
(327, 327, 13, 1),
(328, 328, 13, 1),
(329, 329, 13, 1),
(330, 330, 13, 1),
(331, 331, 13, 1),
(332, 332, 13, 1),
(333, 333, 13, 1),
(334, 334, 13, 1),
(335, 335, 13, 1),
(336, 336, 13, 1),
(337, 337, 13, 1),
(338, 338, 13, 1),
(339, 339, 13, 1),
(340, 340, 13, 1),
(341, 341, 13, 1),
(342, 342, 13, 1),
(343, 343, 13, 1),
(344, 344, 13, 1),
(345, 345, 13, 1),
(346, 346, 13, 1),
(347, 347, 13, 1),
(348, 348, 13, 1),
(349, 349, 13, 1),
(350, 350, 13, 1),
(351, 351, 13, 1),
(352, 352, 13, 1),
(353, 353, 13, 1),
(354, 354, 13, 1),
(355, 355, 13, 1),
(356, 356, 13, 1),
(357, 357, 13, 1),
(358, 358, 13, 1),
(359, 359, 13, 1),
(360, 360, 13, 1),
(361, 361, 13, 1),
(362, 362, 13, 1),
(363, 363, 13, 1),
(364, 364, 13, 1),
(365, 365, 13, 1),
(366, 366, 13, 1),
(367, 367, 13, 1),
(368, 368, 13, 1),
(369, 369, 13, 1),
(370, 370, 13, 1),
(371, 371, 13, 1),
(372, 372, 13, 1),
(373, 373, 13, 1),
(374, 374, 13, 1),
(375, 375, 13, 1),
(376, 376, 13, 1),
(377, 377, 13, 1),
(378, 378, 13, 1),
(379, 379, 13, 1),
(380, 380, 13, 1),
(381, 381, 13, 1),
(382, 382, 13, 1),
(383, 383, 13, 1),
(384, 384, 13, 1),
(385, 385, 13, 1),
(386, 386, 13, 1),
(387, 387, 13, 1),
(388, 388, 13, 1),
(389, 389, 13, 1),
(390, 390, 13, 1),
(391, 391, 13, 1),
(392, 392, 13, 1),
(393, 393, 13, 1),
(394, 394, 13, 1),
(395, 395, 13, 1),
(396, 396, 13, 1),
(397, 397, 13, 1),
(398, 398, 13, 1),
(399, 399, 13, 1),
(400, 400, 13, 1),
(401, 401, 13, 1),
(402, 402, 13, 1),
(403, 403, 13, 1),
(404, 404, 13, 1),
(405, 405, 13, 1),
(406, 406, 13, 1),
(407, 407, 13, 1),
(408, 408, 13, 1),
(409, 409, 13, 1),
(410, 410, 13, 1),
(411, 411, 13, 1),
(412, 412, 13, 1),
(413, 413, 13, 1),
(414, 414, 13, 1),
(415, 415, 13, 1),
(416, 416, 13, 1),
(417, 417, 13, 1),
(418, 418, 13, 1),
(419, 419, 13, 1),
(420, 420, 13, 1),
(421, 421, 13, 1),
(422, 422, 13, 1),
(423, 423, 13, 1),
(424, 424, 13, 1),
(425, 425, 13, 1),
(426, 426, 13, 1),
(427, 427, 13, 1),
(428, 428, 13, 1),
(429, 429, 13, 1),
(430, 430, 13, 1),
(431, 431, 13, 1),
(432, 432, 13, 1),
(433, 433, 13, 1),
(434, 434, 13, 1),
(435, 435, 13, 1),
(436, 436, 13, 1),
(437, 437, 13, 1),
(438, 438, 13, 1),
(439, 439, 13, 1),
(440, 440, 13, 1),
(441, 441, 13, 1),
(442, 442, 13, 1),
(443, 443, 13, 1),
(444, 444, 13, 1),
(445, 445, 13, 1),
(446, 446, 13, 1),
(447, 447, 13, 1),
(448, 448, 13, 1),
(449, 449, 13, 1),
(450, 450, 13, 1),
(451, 451, 13, 1),
(452, 452, 13, 1),
(453, 453, 13, 1),
(454, 454, 13, 1),
(455, 455, 13, 1),
(456, 456, 13, 1),
(457, 457, 13, 1),
(458, 458, 13, 1),
(459, 459, 13, 1),
(460, 460, 13, 1),
(461, 461, 13, 1),
(462, 462, 13, 1),
(463, 463, 13, 1),
(464, 464, 13, 1),
(465, 465, 13, 1),
(466, 466, 13, 1),
(467, 467, 13, 1),
(468, 468, 13, 1),
(469, 469, 13, 1),
(470, 470, 13, 1),
(471, 471, 13, 1),
(472, 472, 13, 1),
(473, 473, 13, 1),
(474, 474, 13, 1),
(475, 475, 13, 1),
(476, 476, 13, 1),
(477, 477, 13, 1),
(478, 478, 13, 1),
(479, 479, 13, 1),
(480, 480, 13, 1),
(481, 481, 13, 1),
(482, 482, 13, 1),
(483, 483, 13, 1),
(484, 484, 13, 1),
(485, 485, 13, 1),
(486, 486, 13, 1),
(487, 487, 13, 1),
(488, 488, 13, 1),
(489, 489, 13, 1),
(490, 490, 13, 1),
(491, 491, 13, 1),
(492, 492, 13, 1),
(493, 493, 13, 1),
(494, 494, 13, 1),
(495, 495, 13, 1),
(496, 496, 13, 1),
(497, 497, 13, 1),
(498, 498, 13, 1),
(499, 499, 13, 1),
(500, 500, 13, 1),
(501, 501, 13, 1),
(502, 502, 13, 1),
(503, 503, 13, 1),
(504, 504, 13, 1),
(505, 505, 13, 1),
(506, 506, 13, 1),
(507, 507, 13, 1),
(508, 508, 13, 1),
(509, 509, 13, 1),
(510, 510, 13, 1),
(511, 511, 13, 1),
(512, 512, 13, 1),
(513, 513, 13, 1),
(514, 514, 13, 1),
(515, 515, 13, 1),
(516, 552, 13, 1),
(517, 553, 13, 1),
(518, 554, 13, 1),
(519, 555, 13, 1),
(520, 556, 13, 1),
(521, 557, 13, 1),
(522, 558, 13, 1),
(523, 559, 13, 1),
(524, 560, 13, 1),
(525, 561, 13, 1),
(526, 562, 13, 1),
(527, 563, 13, 1),
(528, 564, 13, 1),
(529, 565, 13, 1),
(530, 566, 13, 0),
(531, 567, 13, 1),
(532, 568, 13, 1),
(533, 569, 13, 1),
(534, 570, 13, 1),
(535, 571, 13, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `voucher`
--

CREATE TABLE `voucher` (
  `id` bigint(20) NOT NULL,
  `code` varchar(255) NOT NULL,
  `voucher_type` varchar(255) NOT NULL,
  `totalvideotimeto_claim` bigint(20) NOT NULL,
  `value` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `voucher`
--

INSERT INTO `voucher` (`id`, `code`, `voucher_type`, `totalvideotimeto_claim`, `value`) VALUES
(1, '#FOODSCAN5P', 'PERCENT', 2000, 5),
(2, '#FOODSCAN6P', 'PERCENT', 3000, 6),
(3, '#FOODSCAN7P', 'PERCENT', 4000, 7),
(4, '#FOODSCAN8P', 'PERCENT', 5000, 8),
(5, '#FOODSCAN9P', 'PERCENT', 6000, 9),
(6, '#FOODSCAN10P', 'PERCENT', 7000, 10),
(7, '#FOODSCAN50K', 'MONEY', 2500, 50000),
(8, '#FOODSCAN60K', 'MONEY', 3000, 60000),
(9, '#FOODSCAN70K', 'MONEY', 3500, 70000),
(10, '#FOODSCAN80K', 'MONEY', 4000, 80000),
(11, '#FOODSCAN90K', 'MONEY', 4500, 90000),
(12, '#FOODSCAN100K', 'MONEY', 5000, 100000),
(13, '#FOODSCANWELCOME', 'MONEY', 0, 40000);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `deposit_money_payment`
--
ALTER TABLE `deposit_money_payment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Chỉ mục cho bảng `foods`
--
ALTER TABLE `foods`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK2ij8vkex99abhw7cr26so1aqr` (`belongs_to_store_id`);

--
-- Chỉ mục cho bảng `food_menus`
--
ALTER TABLE `food_menus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK96f2cmg8sfspxti6v3jfsjx58` (`food_id`),
  ADD KEY `FKkmgfbsv33s0pn07tkuwvfsakn` (`menu_id`);

--
-- Chỉ mục cho bảng `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKhlxaal0abe4jhjbdcpq46xkaj` (`by_user_id`),
  ADD KEY `FK1t1ukcnr415u6gmom4pua25k3` (`on_table_id`);

--
-- Chỉ mục cho bảng `invoice_items`
--
ALTER TABLE `invoice_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKp4emrtct75fdk8m0jflto0chw` (`by_user_id`),
  ADD KEY `FKbrvpb441tf6ql2tmjeheh0vvk` (`food_id`),
  ADD KEY `FKofjjo8g9b4jqb6v9txxus17k2` (`order_id`);

--
-- Chỉ mục cho bảng `invoice_logging`
--
ALTER TABLE `invoice_logging`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_invoice` (`on_invoice_id`);

--
-- Chỉ mục cho bảng `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK4qbknsshykl217vgvbdr5jtr6` (`store_id`);

--
-- Chỉ mục cho bảng `oder_items`
--
ALTER TABLE `oder_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKi1w7bmruoh3mm5rpar90ea4nn` (`food_id`),
  ADD KEY `FK2kxpvsm51bwq1m5nqf7to8rce` (`order_id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK9mp3ggb5r8mo0m6tf68yaf7fu` (`by_user_id`),
  ADD KEY `FKr37ndxeqsfedc42d70khlo4jc` (`on_table_id`);

--
-- Chỉ mục cho bảng `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK81gagumt0r8y3rmudcgpbk42l` (`order_id`),
  ADD KEY `byUserId` (`by_user_id`);

--
-- Chỉ mục cho bảng `restaurant_rate`
--
ALTER TABLE `restaurant_rate`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `restarant_id` (`restaurant_id`);

--
-- Chỉ mục cho bảng `short_videos`
--
ALTER TABLE `short_videos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Chỉ mục cho bảng `stores`
--
ALTER TABLE `stores`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK62smc31fbgclsu56aa4y2hrxg` (`owner_id`);

--
-- Chỉ mục cho bảng `tables`
--
ALTER TABLE `tables`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKow6gsnnrhwr9rlxfg66nd4qkg` (`belongs_to_store_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKh555fyoyldpyaltlb7jva35j2` (`role_id`);

--
-- Chỉ mục cho bảng `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `user_voucher`
--
ALTER TABLE `user_voucher`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `voucher_id` (`voucher_id`);

--
-- Chỉ mục cho bảng `voucher`
--
ALTER TABLE `voucher`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `deposit_money_payment`
--
ALTER TABLE `deposit_money_payment`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `foods`
--
ALTER TABLE `foods`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT cho bảng `food_menus`
--
ALTER TABLE `food_menus`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT cho bảng `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `invoice_items`
--
ALTER TABLE `invoice_items`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT cho bảng `invoice_logging`
--
ALTER TABLE `invoice_logging`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT cho bảng `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `oder_items`
--
ALTER TABLE `oder_items`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `restaurant_rate`
--
ALTER TABLE `restaurant_rate`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- AUTO_INCREMENT cho bảng `short_videos`
--
ALTER TABLE `short_videos`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6908543785303608582;

--
-- AUTO_INCREMENT cho bảng `stores`
--
ALTER TABLE `stores`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `tables`
--
ALTER TABLE `tables`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=572;

--
-- AUTO_INCREMENT cho bảng `user_roles`
--
ALTER TABLE `user_roles`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `user_voucher`
--
ALTER TABLE `user_voucher`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=536;

--
-- AUTO_INCREMENT cho bảng `voucher`
--
ALTER TABLE `voucher`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `deposit_money_payment`
--
ALTER TABLE `deposit_money_payment`
  ADD CONSTRAINT `deposit_money_payment_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `foods`
--
ALTER TABLE `foods`
  ADD CONSTRAINT `FK2ij8vkex99abhw7cr26so1aqr` FOREIGN KEY (`belongs_to_store_id`) REFERENCES `stores` (`id`);

--
-- Các ràng buộc cho bảng `food_menus`
--
ALTER TABLE `food_menus`
  ADD CONSTRAINT `FK96f2cmg8sfspxti6v3jfsjx58` FOREIGN KEY (`food_id`) REFERENCES `foods` (`id`),
  ADD CONSTRAINT `FKkmgfbsv33s0pn07tkuwvfsakn` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`);

--
-- Các ràng buộc cho bảng `invoices`
--
ALTER TABLE `invoices`
  ADD CONSTRAINT `FK1t1ukcnr415u6gmom4pua25k3` FOREIGN KEY (`on_table_id`) REFERENCES `tables` (`id`),
  ADD CONSTRAINT `FKhlxaal0abe4jhjbdcpq46xkaj` FOREIGN KEY (`by_user_id`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `invoice_items`
--
ALTER TABLE `invoice_items`
  ADD CONSTRAINT `FKbrvpb441tf6ql2tmjeheh0vvk` FOREIGN KEY (`food_id`) REFERENCES `foods` (`id`),
  ADD CONSTRAINT `FKofjjo8g9b4jqb6v9txxus17k2` FOREIGN KEY (`order_id`) REFERENCES `invoices` (`id`),
  ADD CONSTRAINT `FKp4emrtct75fdk8m0jflto0chw` FOREIGN KEY (`by_user_id`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `invoice_logging`
--
ALTER TABLE `invoice_logging`
  ADD CONSTRAINT `fk_invoice` FOREIGN KEY (`on_invoice_id`) REFERENCES `invoices` (`id`);

--
-- Các ràng buộc cho bảng `menus`
--
ALTER TABLE `menus`
  ADD CONSTRAINT `FK4qbknsshykl217vgvbdr5jtr6` FOREIGN KEY (`store_id`) REFERENCES `stores` (`id`);

--
-- Các ràng buộc cho bảng `oder_items`
--
ALTER TABLE `oder_items`
  ADD CONSTRAINT `FK2kxpvsm51bwq1m5nqf7to8rce` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `FKi1w7bmruoh3mm5rpar90ea4nn` FOREIGN KEY (`food_id`) REFERENCES `foods` (`id`);

--
-- Các ràng buộc cho bảng `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `FK9mp3ggb5r8mo0m6tf68yaf7fu` FOREIGN KEY (`by_user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `FKr37ndxeqsfedc42d70khlo4jc` FOREIGN KEY (`on_table_id`) REFERENCES `tables` (`id`);

--
-- Các ràng buộc cho bảng `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `FK81gagumt0r8y3rmudcgpbk42l` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `payments_ibfk_1` FOREIGN KEY (`by_user_id`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `restaurant_rate`
--
ALTER TABLE `restaurant_rate`
  ADD CONSTRAINT `restaurant_rate_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `restaurant_rate_ibfk_2` FOREIGN KEY (`restaurant_id`) REFERENCES `stores` (`id`);

--
-- Các ràng buộc cho bảng `short_videos`
--
ALTER TABLE `short_videos`
  ADD CONSTRAINT `short_videos_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `stores`
--
ALTER TABLE `stores`
  ADD CONSTRAINT `FK62smc31fbgclsu56aa4y2hrxg` FOREIGN KEY (`owner_id`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `tables`
--
ALTER TABLE `tables`
  ADD CONSTRAINT `FKow6gsnnrhwr9rlxfg66nd4qkg` FOREIGN KEY (`belongs_to_store_id`) REFERENCES `stores` (`id`);

--
-- Các ràng buộc cho bảng `user_voucher`
--
ALTER TABLE `user_voucher`
  ADD CONSTRAINT `user_voucher_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `user_voucher_ibfk_2` FOREIGN KEY (`voucher_id`) REFERENCES `voucher` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
