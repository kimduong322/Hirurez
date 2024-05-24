-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 25, 2024 lúc 12:57 AM
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
(6, 571, 20000, 'NCB', 'ATM', 'Nap tien vao he thong luc : 05:52:47 25-05-2024', 'SUCCESSFUL', 'VN_PAY');

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
  `on_table_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `invoices`
--

INSERT INTO `invoices` (`is_current_on_table`, `by_user_id`, `created_time`, `id`, `on_table_id`) VALUES
(1, 3, '2024-04-17 15:23:16.000000', 1, 7);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `invoice_items`
--

CREATE TABLE `invoice_items` (
  `by_user_id` bigint(20) NOT NULL,
  `food_id` bigint(20) NOT NULL,
  `id` bigint(20) NOT NULL,
  `order_id` bigint(20) NOT NULL,
  `quantity` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `invoice_items`
--

INSERT INTO `invoice_items` (`by_user_id`, `food_id`, `id`, `order_id`, `quantity`) VALUES
(3, 6, 1, 1, 1),
(6, 8, 2, 1, 1),
(7, 9, 3, 1, 1);

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
(9, 12, 4, 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `total` float NOT NULL,
  `by_user_id` bigint(20) NOT NULL,
  `id` bigint(20) NOT NULL,
  `on_table_id` bigint(20) NOT NULL,
  `order_time` datetime(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`total`, `by_user_id`, `id`, `on_table_id`, `order_time`) VALUES
(9, 3, 1, 1, '2024-04-17 15:23:15.000000'),
(12, 3, 2, 3, '2023-12-30 15:26:00.000000'),
(31.5, 6, 3, 11, '2024-04-17 15:23:16.000000'),
(12.8, 7, 4, 16, '2023-12-30 15:26:00.000000');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `payments`
--

CREATE TABLE `payments` (
  `amount` float NOT NULL,
  `id` bigint(20) NOT NULL,
  `order_id` bigint(20) NOT NULL,
  `payment_time` datetime(6) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `payments`
--

INSERT INTO `payments` (`amount`, `id`, `order_id`, `payment_time`, `status`) VALUES
(9, 1, 1, '2024-04-17 15:23:15.000000', 'SUCCESS'),
(12, 2, 2, '2023-12-30 15:26:00.000000', 'SUCCESS'),
(31.5, 3, 3, '2024-04-17 15:23:16.000000', 'SUCCESS'),
(12.8, 4, 4, '2023-12-30 15:26:00.000000', 'SUCCESS');

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
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `short_videos`
--

INSERT INTO `short_videos` (`id`, `text`, `tymCount`, `playCount`, `commentCount`, `user_id`) VALUES
(6875317312082201857, 'Achter de schermen nee ging niet in 1 keer goed. #fy #fypageシ #foryou #voorjou #behindthescene #soccer #voetbal #', 1783, 202900, 4, 426),
(6875323773755657474, 'Makkelijk afvallen? #fatloss #gezond #fitness #fitdutchie #fitdutch  #vetverbranding #sportschool', 1086, 48000, 29, 15),
(6875342937002085633, 'Daarom heb ik geen modelface. ? fy #fyp #model #modelface #50plusontiktok', 49400, 376400, 123, 8),
(6875370613523909890, 'Reply to @mvo97 #gains #bodybuilding #training', 389, 22000, 19, 297),
(6875373441432816898, 'Awkwardn', 9387, 64800, 161, 268),
(6875378565614013697, 'En dan vervolgens gwn een halfuur zo op je bed blijft ligge, dan weet je dat je heerlijk hebt getrained #training #uitgeput #moe #thuiskomen #temoe', 6127, 179000, 111, 256),
(6875394675985992966, '#duet with @pugthegoat #foryoupage #fyp #foryou #powerlifting #bodybuilding #deadlift #fitness #workout #fittok #powertok', 5858, 196400, 81, 157),
(6875405441472498949, 'Reply to @jessca4765 #foryoupage #fyp #foryou #powerlifting #bodybuilding #deadlift #fitness #workout #fittok #powertok', 9630, 118700, 65, 312),
(6875436892226178305, 'theres no where near enough appreciation for this man #Haikyuu #ennoshita #animes #animee #animeedit #cool #fyp #foryou #4u #animeboy #haikyuuedit', 34100, 155500, 204, 32),
(6875453919879908614, 'Frindships #catocade #shuffle #dance', 23400, 495800, 331, 198),
(6875468410612993286, 'Quiet Zone... follow me on insta: joeysofo. Comment where you wanna see me blade next. Reply to @dwight_schnuute', 55700, 838100, 936, 218),
(6875528457388903681, '???', 890, 32000, 2, 411),
(6875621663564680450, 'So proud of how far Enzo has come... what do you guys think? #horse #eventing #training #equestrian #horsegirl', 30400, 201400, 60, 481),
(6875639469563759873, '#POV: Je wilt niet dat je ex je ziet op een feestje en vraagt mij om hulp.. #voorjou #tiktoknl #viraal #ios14', 5805, 47300, 110, 461),
(6875651291343883522, 'I think my mom hates me now ?#backyard #project #pool #johndeere #onabudget #foryou #fyp', 104300, 2600000, 734, 57),
(6875691073499352321, 'Reply to @t.and.d', 7326, 127900, 141, 137),
(6875739742340762885, 'Reply to @caden.wappler #foryoupage #fyp #foryou #powerlifting #bodybuilding #benchpress #fitness #workout #fittok #powertok', 9469, 209700, 304, 247),
(6875749962681044230, '⚠️Warning⚠️ ❄️ and hypocrites inbound #fyp #gym #lift #workout #pr #viral #motivation', 5494, 119700, 213, 433),
(6875862825932180738, 'මගේ උන් එක්ක අන්තිම වේනකල් බලන්න #ish @dope_adhi.10.08 @dope_japana', 9773, 60700, 105, 343),
(6875872124968439046, 'Reply to @dolphinarms #foryoupage #fyp #foryou #powerlifting #bodybuilding #deadlift #fitness #workout #fittok #powertok', 3932, 66100, 71, 506),
(6876007447883042050, 'DRZ400SM ❤#Drz #fyp #followyou #fypシ', 2914, 23300, 19, 339),
(6876130849683770625, 'කොල්ලෝ 2?? අපිට සද්දේ දාලා උන් දෙන්නාට රිටන් එක දෙන්න ඔං?? ගියා ......මුන් දෙන්නා පාරේ මැද්දේ කියහන්කෝ ....???', 2992, 61300, 27, 404),
(6876145412105899265, 'De trend na doen toch ?? ???#volleybal #training #laat #temelig', 1805, 64400, 57, 336),
(6876156631651077381, 'Reply to @annikasuenner Stress acne for the win ???', 157700, 821200, 1314, 222),
(6876245387871587590, 'Still keep track of your calories! #fyp #abs #abworkout #homeworkout #foryou #viral #xyzbca #tiktok #fitnesstips #bulking #tiktokwellness', 23200, 462600, 102, 183),
(6876262384093236485, 'Along with a calorie deficit this workout is gonna help you get those abs popping! #abs #aesthetics #fatloss #FeelingGood #fit #abworkout', 4271, 86100, 17, 409),
(6876318382703070465, 'ඔන්න අද මගේ GF පෙන්නනවා,ලස්සනයි ද කියන්න බලන්න ??පළමු වතාවට මගේ GF පෙන්නන්නෙ හැබැයි අන්තිමට', 6126, 74700, 188, 477),
(6876320502848261378, 'Boat boat ?foryou❤️Mujhe bhi famous hona hai✌️#foryoupage #trending #slowmo #transition', 801, 8223, 34, 133),
(6876369534018669825, 'oops... #fyp #foryou', 7045, 46800, 232, 318),
(6876374255974501633, 'Rate It 1/10', 365600, 5100000, 2765, 262),
(6876417380151479553, 'Learning to say goodbye in #Dutch ??', 229800, 2400000, 5260, 311),
(6876422232772578561, 'Reply to @stefan._77  I completely ruined my backyard? #backyard #project #pool #foryou #fyp', 18900, 189800, 77, 16),
(6876512902929599745, 'Cuando tu novia es celosa ? #foryou #1m #b', 199600, 1000000, 387, 312),
(6876603307708665093, 'Please blow this up so that my dad doesn’t make me delete it hahah #foryoupage #fyp #foryou #cheatonmeidareyou  #greenscreenvideo #VibeWithUs', 8135, 58000, 250, 152),
(6876643374548438274, 'හම්මෝ ඒක ??? #tharusha_shamal #rastha_lions #boodle_gang #tiktok #foryou #foryoupage #comedy #funny #', 2408, 19400, 148, 314),
(6876645435625262338, 'Thank you for 40K! ? | #canada #foryoupage #fyp #foryou #4u #viral #transition #transitions #transitioner #lipsync #trend #trending', 3965, 26200, 75, 134),
(6876674985746795778, '?weekend', 2485, 26100, 23, 91),
(6876716527186382081, 'La caminata de los 80, hazlo viral. #viral #caminatadelos80 #baile', 1714, 23600, 141, 451),
(6876760427229957377, 'Será que temos estilo?? #horadearrasar #diadecao #bulldogfrances #frenchie', 2961, 83200, 38, 331),
(6876787355181665537, 'Rekenwonder ? || #tiktoknederland #rekenen #couplesoftiktok #prank', 20600, 558900, 87, 432),
(6876805952117558529, 'Wie zou er op mij stemmen als premier??? tag iemand die te veel eet ? #ronanvdloo #volgderegels #ikdoemee #fy #fyp', 17100, 119000, 241, 48),
(6876827705950752005, 'horse show#foryoupage #horse #show #grasslands #competition #fyp #movement', 127000, 3900000, 1887, 507),
(6876835225989664002, 'That got shakey #fyp #fitness #gym #squat #powerlifting #powerliftingmotivation', 153600, 1500000, 1473, 474),
(6876857501397159170, 'Reply to @zachralph I can’t seem to find them #lats #backmuscles #wheretheyat #MIA', 587, 52100, 19, 95),
(6876860979787959554, '#fy #voorjou #foryou #fördich #covid #quarantine', 36500, 865000, 315, 246),
(6876862444988402945, '', 6015, 49600, 64, 39),
(6877036154982616321, 'end miss NH karna #foryou #foryoupage #fyp #satndwihkashmir #fyp #sameerkahn', 198, 1896, 4, 53),
(6877149710428245249, '', 826, 16400, 5, 430),
(6877167604100910337, 'Top oefeningen voor grotere schouders ? #shoulders #shoulder #motivation #viral #workout #foryourpage #foryou #shoulderworkout #tips', 6940, 136600, 81, 145),
(6877178763474423041, 'Os PIORES signos para namorar! Qual é o seu? #foryou #foryoupage #lgbtq #horadearrasar #signos #signoszodiacales', 1868, 12100, 263, 354),
(6877179236386376961, 'huisgemaakte katjang! #foryou #fyp #voorjou #broodje #eten #koken #schnitzel #cooking #foodporn #vj #anythingface #foodie #food #youbetterrun #fypシ', 25900, 620300, 579, 438),
(6877182502390353153, 'Based on true events... (idee van @emmakeuven )', 44200, 419500, 416, 96),
(6877191692341054721, '#foryou #foryoupage', 13300, 129300, 111, 10),
(6877219156186500354, 'Donde quedo ? ?? #1m #friends', 156800, 584700, 216, 187),
(6877251331145370881, 'Riding that moment of euphoria before  the??#crossfit #training #fitness #trainingmotivation', 575, 32800, 8, 164),
(6877301356101782785, 'Nasty burn with these #fyp #foryou #foryoupage #gymshark #fitness #bodybuilder #gains #workout #legday', 1957, 45000, 46, 138),
(6877337975030598917, 'Reply to @jakedyang #checkitout', 5449, 63700, 131, 140),
(6877411003160694017, '', 1759, 27800, 7, 364),
(6877458289978821889, 'Ever seen a 6 foot 8 man try and shuffle ???? #shuffle #giraffe #smoothcriminal', 607600, 7400000, 7523, 502),
(6877473712652799234, 'Fair decision? Let us know!!! #formulaone #lewishamilton #f1 #fyp #formula1', 1283, 59400, 116, 132),
(6877530962742217985, 'Break some ankles in FIFA 21. ? #FIFA21 #FIFASkills', 116400, 2700000, 347, 147),
(6877606750900538626, '#fy #fyp', 67300, 1700000, 424, 55),
(6877726677334510849, 'It isn’t just for lazy trouts #fyp #foryou #foryoupage #fitness #supplements #gains #gymshark #bodybuilder #preworkout', 3504, 51200, 122, 159),
(6877747486451043590, 'Reply to @bodobodolikesu #wwe #therock #anime #animes #animegirl #weeb #otaku #manga #secretanimesociety #bnha #mha #naruto #dbz #haikyuu #fyp #vs #W', 32200, 123900, 2186, 357),
(6877774951361875201, 'Can\'t wait to compete this weekend ❤ #horse #riding #equestrian #fyp #ToMyBestFriend #petthings #competition #rider #crosscountry', 9254, 64700, 22, 110),
(6877789463221947650, '#paint #easydraw #childrendrawing', 8348, 634300, 26, 427),
(6877796349459336450, '', 1091, 9247, 15, 139),
(6877816601308073218, '#teamychelle #teamrene #fatherdaughter #viral #atjevoordesfeer #fyp #voorjou #groenebril @ychellekarst #tarwesmoothie', 17400, 251700, 66, 378),
(6877869447999245569, 'Let’s get those boulder shoulders fellas ? #bodybuilding #homeworkouts #workout #fitness #gym #physique', 23200, 332900, 124, 240),
(6877981740690935041, '', 13, 465, 0, 113),
(6878138606205029634, '? Again stop flaring out your elbows to the side during pushups! Avoid #shoulderinjury and #elbowpain #pushups #pushup #pushupform #chestday #chest', 98100, 3400000, 153, 159),
(6878165800902085890, '#kawaii# payton# addisonre# #queen #song #ninja# #wwe# use #funny#ozuna ##funny# video# like #karo##@naseer_baloch_006#@rashidkh@balochisking05', 288, 4100, 16, 319),
(6878231837710372098, 'Hand break ??', 3450, 29200, 14, 31),
(6878254482698816770, 'සතියකට හරියන්න ගුටි කෑවා ? #comedy #sampa', 1055, 22200, 4, 285),
(6878259877353966850, 'sing this one with me! When the party’s over #BillieEilish #fyp #foryou #singingduet #duet #singing #singersoftiktok #singers', 10600, 145100, 101, 413),
(6878282456382835973, '#duet with @moomie.pie #foryoupage #fyp #foryou #powerlifting #bodybuilding #deadlift #fitness #workout #fittok #powertok', 4703, 89600, 36, 227),
(6878300825932860674, 'Having the best time here #greece #voorjou #fyp #fitdutchies', 16600, 251100, 76, 230),
(6878330292701121794, '#nlunatics #yinyang_fantasyworld #terrorkanita #minions #stitch #hat #_littlestitch #comedy #makeyoulaugh #haveaniceday', 426700, 5500000, 4368, 252),
(6878340953933876482, 'Are u beating them if they do this? #anime #weebs #animeboy #animeedit #anime4life #kakashi #gon #rocklee #naruto #foryoupage #xyzbca', 8283, 63700, 119, 475),
(6878404258367163654, 'I can see your ?', 136200, 1100000, 934, 314),
(6878457763668823298, 'Might’ve made a ✨gain✨ that day #fyp #foryou #foryoupage #fitness #workout #gymshark #bodybuilder #gains', 1415, 28600, 46, 229),
(6878510237784083713, '', 1915, 9667, 10, 289),
(6878517470894836998, '#fyp #lifting #fitness #motivation #foryou #disrespectyoursurroundings', 5845, 117500, 112, 340),
(6878531534303857922, '#izabella #izabellavoldigoad #themisfitofdemonkingacademy #misfitofdemonacademy #anosvoldigoad', 1744, 11300, 12, 116),
(6878590867968380162, 'EN GEEN SNOEP KOPEN! #mama #moeders #moeder #pinpas #boodschap #voorjou #foryou #fyp #foryoulage #appie #makraak', 33000, 327900, 156, 505),
(6878601415150062850, '', 5858, 102600, 98, 235),
(6878650367668653314, 'Reply to @dmckevitt - those who know, know. Those who don’t, should. #opinion #preference #politics #goat', 1723, 26900, 68, 113),
(6878665609870052610, 'Vandaag stond ik in het AD Rotterdams Dagblad en online ? was erg leuk om te doen! #fy #fyp #foryou #foryoupage #buschauffeuse #hoekschewaard #bus ?', 2802, 58900, 50, 327),
(6878668790503116038, '@skywalker87x @donalemiles #army #military #help #usarmy #veteran #AltRocktober #OikosOneTrip #marines #fyp #foryou', 14700, 102900, 1112, 507),
(6878676626108992769, 'Do you Accept this challenge? #pushup #challenge #workout #duet #workoutfromhome credits: @jpark_fit', 21800, 159000, 170, 80),
(6878710443926473986, '50k likes and I’ll do it #bodybuilding #fyp #xyzbca #gym #tiktoksouthafrica', 13800, 155000, 142, 315),
(6878715680728911106, 'Peter Parker heeft een nieuw gezicht gekregen in de remaster van Spider-Man voor PS5 #spiderman #ps5', 3412, 35500, 128, 219),
(6878719985535962369, 'Test #slowmo #WinWithASmile #transisi #transition #transitions #slowmotion #slow #tiktok #tiktokindo #viral #virall #tutorial #fypchallenge  #fyp', 1319, 25800, 14, 146),
(6878751105589824770, '#fyp #lift #gymprogress #gym', 580, 85600, 0, 222),
(6878791400289225985, '#voiceeffects', 2397, 211800, 37, 336),
(6878794517391150337, 'Life’s rough sometimes but you just have to keep grinding. #weightlossprogress #weightlosstransformation #wlsjourney  #weightlossjournal #wls', 2598, 50300, 66, 69),
(6878796954650889473, 'AMANE,AMANE ?✌️#edit #anime #hanakokun #tsukasa #wap #charlie #animeedit #fyp #no #viral #xyzbca #wap #hanakokun #tsukasa #wap #tsukasa #hanakokun', 43400, 152400, 702, 79),
(6878834531911224577, 'Hope this changes your life #fyp #foryou #foryoupage #fitness #gymshark #bodybuilder #nutrition #diet', 1650, 30100, 37, 33),
(6878841351916637441, 'My triceps suck but these have helped #fyp #foryou #foryoupage #fitness #gymshark #naruto #bodybuilder #strength', 4304, 49300, 47, 2),
(6878961920859262210, 'Nummer 1 trending op YouTube met Papaaaa! ???❤️', 19600, 149500, 150, 287),
(6878973704689175809, 'Oeps daar ging de lepel ? #foryou #fyp #voorjou #dontputtheblameonme #foryoupage #fun #tiktok', 2031, 110300, 59, 327),
(6879000638458449153, '???#magikbijjouslapen#love#nederland#fyp#foryoupage#foryou#tiktok#viral#voorjou#like#just4fun#follow#followback#vj#fy#dutch#fypシ', 218, 3313, 18, 330),
(6879022410528541953, 'You can watch me! ??', 11100, 143000, 491, 398),
(6879055195330858245, 'Take it day by day! #foryoupage #fyp #foryou #powerlifting #bodybuilding #squat #fitness #workout #fittok #powertok', 6858, 78500, 169, 424),
(6879055868676132097, 'Is moraine lake on your bucket list? #alberta #canada #travelcanada #travelalberta #banff #morainelake', 86900, 654200, 694, 188),
(6879086409496497410, 'Het is Dennis vergeven, maar ik zal dit nooit vergeten ?', 4194, 215600, 73, 194),
(6879123852467768581, 'https://www.advancedhumanperformance.com/ #powerlifting #benchpress #floorpress #powerlifter #powerlifting #powerlift #fitness #workout #strong', 3372, 226700, 56, 492),
(6879192624402582790, 'I can’t even @_thelifeofmikey  #spookyseason #foryoupage #fyp #CTCVoiceBox #DayInMyLife #OikosOneTrip #strapback #beconvincing #altrocktober #scare', 311800, 2200000, 1344, 458),
(6879222014880664833, 'Thank you for your concern #fyp #foryou #foryoupage #cooking #chef #diet #nutrition #gymshark #DayInMyLife #workout #bodybuilder', 1100, 30100, 63, 370),
(6879223075980741889, 'Reply to @user28254092  හැමොගෙම දැඩි ඉල්ලිම පරිදි ඔන්න full video එක දැම්මා ??❤❤❤', 2746, 24900, 58, 95),
(6879407225769692418, '? #fy #foryou #voorjou #dance #viral #4u', 5479, 79000, 95, 449),
(6879439037619342598, 'I blocked my kryptonite so it\'s over for you mfs (vote blue btw) #fyp #foryou #foryoupage #CollegeGotMeLike #Duet #CTCVoiceBox #StrapBack', 22500, 99900, 354, 259),
(6879439535726529794, 'Mood ? @norilouise #fy #fyp #voorjou #2020 #breakdown #lol #bestfriend', 33800, 429100, 473, 222),
(6879440891853982978, '#horadearrasar', 23000, 66600, 186, 252),
(6879452591953153282, '#destacame #animeedit #viral #fyp #hanakokun #bakugo #bokunohero #manga #anime #husbando #naruto #nanatzunotaizay', 48700, 154600, 970, 113),
(6879476802050460934, 'wow just wow ? #naruto #narutoedits #kakashi #easteregg #anime #obito #animeedit #foryou #fyp', 309900, 1500000, 2003, 261),
(6879699550303538434, '', 1411, 18700, 27, 262),
(6879703604249332993, '#❤️', 2018, 25100, 2, 349),
(6879705053884697858, '#life #is #a #beautiful? #story', 3347, 55100, 0, 346),
(6879724138114665730, 'Typisch Spaans ?? eten proeven deel 1 ? Zou jij dit lekker vinden of niet? ? met @dvlsantiago', 7996, 98700, 29, 425),
(6879756807481363714, '#not #twisting #hand', 4673, 246700, 12, 34),
(6879769716567657730, '#foryou #cheese #cheddar #fy', 83700, 1200000, 1501, 18),
(6879772200065436929, 'Dejo el POV en sus manos xd(créditos a @..aguadeuwu ) #anime #animeedit #yumeko #billieeilish #bakugou #shoto #iidatenya #uraraka', 11500, 47500, 212, 164),
(6879809686552530178, '#team07 #gym #elsa #11 #tiktok #foryou #oneday #onemillonaudition #fallow @shashini820 @sehanimaleesha @_viden_run_ @lakiya25 @sada_gril', 12000, 170500, 942, 123),
(6879837374927490306, 'මගේ බෲනෝ මැණිකගේ තාත්තා ARROW ?', 4945, 60800, 14, 433),
(6879842043880017154, 'AHHAHAHA #timewarpscan #drunkface', 7868, 130100, 87, 182),
(6879844969687878914, 'Ofc there\'s much more, but these are the basics - when done right will get you results ? #fitness #diet #training', 1016, 56700, 31, 214),
(6879871451772620033, 'Who should I do for part 3? #anime #animeedit #naruto #narutoshippuden #guysensei #kakashi #foryoupage #xyzbca', 14700, 90200, 143, 449),
(6879902533876337925, 'Reply to @man_myth_legend0 #foryoupage #fyp #foryou #powerlifting #bodybuilding #squat #fitness #workout #fittok #powertok', 15100, 139100, 99, 378),
(6879933206460648706, 'Antwoorden aan @seereenmarabeh obviously I speak Dutch as well? #vibetiktok #fy #fyp #foryou #likelike #tiktoktraditions #dutch', 10300, 66900, 532, 79),
(6879936527829404933, '@sheismarissamatthews #greenscreenvideo #foryoupage #fyp #foryou #powerlifting #bodybuilding #deadlift #fitness #workout #fittok #powertok', 8971, 61900, 271, 412),
(6879952519586450690, 'It’s a no from me. Be smart and work hard #fyp #foryou #foryoupage #gymshark #fitness #bodybuilder #supplements', 1742, 44100, 86, 143),
(6880080548086172929, 'දුඹුරුලමිස්සි & කූඹියො  සීගිරියේ යන අතරතුර ❤️@koobiyounlimited  @milanmaduhansa3 @nimanthaperera1 @shashikamalshan9', 2223, 21600, 12, 347),
(6880122437594270978, 'Antwoorden aan @logiciv Wie maakt ze ongeveer het zelfde? ? #wraps #tortilla #koken #fyp #onabudget #chicken', 102500, 1200000, 1243, 119),
(6880134891753852162, '23 years ago today.... #wwe #wwf #wrestling #prowrestling #aew #kane #undertaker #therock #shawnmichaels #romanreigns #sethrollins #brocklesnar', 640, 27500, 15, 219),
(6880161721349311746, '??? #foryoupage #fy #foryou #fyp', 4751, 58600, 32, 288),
(6880162735208877314, '#fyp #fyp #maximemeiland', 11400, 69000, 86, 275),
(6880196605513927938, '1,2,3,4 or 5?????#mix #tiktokcreator #creative #jadsedardkomitao #photo #vfx #gopro #sunset #photomagic #poto #fly #fyp #verifyme', 2500000, 25100000, 12000, 469),
(6880203069192211713, 'Reply to @julius_augustsson - this is my current total. Baby steps. One day I’ll be strong. #strength #lift #gym #squat', 1859, 30300, 55, 232),
(6880225229415681282, 'The joy? #fy #fyp #f1 #f1tiktok #ferrari #sebastianvettel #joy #foryoupage', 17600, 113600, 251, 157),
(6880239600590212353, 'අම්මො ඒක max ගන්න විදිය කියන්නම් ඉන්බොක්ස් එන්න???ආදරෙයි හැමෝටම ගොඩාක් ??', 2129, 11900, 80, 331),
(6880259329434324226, 'El dinero no lo es todo￼. ??#friends #1m', 126300, 513000, 221, 420),
(6880410980434660610, 'How not to do it and how you should do the technique! #martialarts #selfdefence #techniques #yep #nope', 4100000, 50500000, 12500, 93),
(6880446332352367873, '#satisying #horse #brush #shed', 150700, 1100000, 1133, 503),
(6880493048011263233, 'Reply to @rijsttschotel sorry ik ben niet de Pin Automaat#fyp #dutch #djamilacelina #pinautomaat #money #charity #geenhaat #voorjou #vjp #viraal #geld', 5624, 166500, 250, 55),
(6880501583231061249, 'Bhut Mehnat lagi hai eb to viral kardo tiktok walO #vivoy51style #foryou #100k #foryoupage #viral_video #keepsupporting #1millionaudition', 307, 977, 5, 395),
(6880508779109125378, 'Reply to @nimkar8 #foryoupage #fyp #tiktok #xyzbca #foryou #lewiscapaldi #beforeyougochallenge #suiciudalawrareness', 1116, 12200, 123, 168),
(6880527115037478145, 'My heart melts everytime ?? #vibetiktok #fy #fyp #foryou #likelike #tiktoktraditions #dutch', 12400, 62100, 313, 208),
(6880592183720676614, 'no one wants to help me make a tikytoky so I found a way to do this on my own', 8146, 54900, 100, 432),
(6880671806965959938, '', 23500, 192700, 1238, 334),
(6880694458552175874, 'Hit these to start your pull days #fyp #FallAesthetic #foryou #foryoupage #nutrition #fitness #gymshark #vans #bodybuilder', 2315, 35700, 31, 125),
(6880741941860928773, 'Nailed it ??', 26600, 161100, 319, 472),
(6880750408302693637, 'Grip Strength Movements #fyp #grip #bodybuilding #FallAesthetic #DoggyAnthem #StrapBack #razrfit #fitness #gym', 1590, 70600, 34, 314),
(6880839179677256962, 'Туториал по стрелочкам ❤️#recommendations #tutorial #туториал #foryou #урокимакияжа #makeuptutorials', 5134, 70600, 12, 446),
(6880848041792802053, '#greenscreensticker #okboomer', 22000, 78100, 900, 175),
(6880865616215952641, 'Fight song ?? dc: @britini_dangelo', 12000, 143000, 64, 490),
(6880877914078842113, '#foryou #foryou #foryou', 154, 3854, 2, 186),
(6880924024227040513, '⭐️ EVA ⭐️ Reageer nu met jouw naam! ?? #rice #foryoupage #fyp #rijstt', 36700, 547700, 7568, 31),
(6880924761333959938, 'POV - You realise I can sing x #singing #fyp #4u #viral #pov #music #cover #singer #model #singalong', 6691, 66200, 112, 415),
(6880928709956635909, 'Hey ladies ? #greenscreen #foryoupage #fyp #foryou #powerlifting #bodybuilding #deadlift #fitness #workout #fittok #powertok', 9881, 86600, 203, 354),
(6880983457019809026, 'Food Shredder', 114100, 6600000, 577, 332),
(6880986381309562118, '#duet with @_devinnscott care if I just vibe with y’all #vibes #vibecheck', 26200, 166600, 469, 135),
(6881035542830550278, 'Silent conventional tings #foryoupage #fyp #foryou #powerlifting #bodybuilding #deadlift #fitness #workout #fittok #powertok', 4851, 71400, 122, 193),
(6881040494332366086, 'Your 2nd & 3rd @ are down!???‍♀️??‍♂️??‍♀️ @erica_klein @brettmvrk @brettandkristin', 76100, 558400, 2325, 71),
(6881218787157216514, 'Picobello bv #fy #fyp #voorjou #voorjouwpage #follow #viraal #gekkies #internetgekkies #picobello #hallo #lachen #nederlands', 5898, 171200, 31, 362),
(6881237651702254850, 'Wanneer klanten producten niet op dezelfde plek terugzetten.. #deensupermarkten #fy #fyp', 1396, 41200, 10, 476),
(6881250870374321414, '#stitch with @inikamcpherson #foryoupage #fyp #foryou #powerlifting #bodybuilding #squat #fitness #workout #fittok #powertok', 10000, 81900, 112, 72),
(6881297980456996097, '☺️☺️☺️#defender110  #landrover', 1125, 9725, 16, 189),
(6881317813173095681, 'altijd geïntimideerd wel #voorjou #voorjoupagina #vjp #fyp #foryoupage #xyzbca #tiktoknl #viral #bmw #tiktoknl #voorjou', 8819, 125200, 341, 452),
(6881337151901027586, '#going #wrong #jpkautomotive #mrtiktok #funn #fyp #fyppppp #foryourpage #for #your #page #2020 #noticeme #sponsorme', 971, 79000, 11, 159),
(6881353341465611525, 'Reply to @jack_weight #foryoupage #fyp #foryou #powerlifting #bodybuilding #deadlift #fitness #workout #fittok #powertok', 9073, 81300, 130, 346),
(6881414725075242246, 'super happy with the result but yea I slowed down so much... #runner #crosscountry #track #xc #gorun #fast', 4286, 52300, 67, 206),
(6881428016275197186, '#horadearrasar #billieeilish', 5325, 45900, 58, 20),
(6881502944353717506, 'thank you so much for everything i love you all so much?', 51700, 232200, 588, 408),
(6881624031561354498, '#duet with @brockfit__ - this is probably the wildest one I’ve seen personally. #strength #peopleareawesome #gym', 6153, 61800, 36, 176),
(6881636686606912770, 'masenna ?????', 1257, 19300, 4, 236),
(6881662658794294529, 'Dit ziet er echt raar uit ?? #bawzarmy #foryoupage #fyp', 26000, 252600, 448, 33),
(6881719705028021509, 'Reply to @akabutt #greenscreen  army #marines #military #navy #airforce #coastguard #firyou #GimmeSomeTruth #StrapBack', 8960, 56800, 562, 24),
(6881741305345592577, 'Danny Ric and divebombs? #fy #fyp #f1 #f1tiktok #foryoupage #danielricciardo #overtake #divebomb', 9136, 179900, 43, 416),
(6881793753036721414, 'DEADLIFT IS COMING BACK ? #foryoupage #fyp #foryou #powerlifting #bodybuilding #deadlift #fitness #workout #fittok #powertok', 4947, 68200, 110, 35),
(6881838035051269377, 'Mikasa Ackerman [shingeki no kyojin] Disculpen la calidad :( #attackontitan #snk  #mikasa #anime  #animeedit #shingekinokyojin', 258200, 1300000, 3030, 140),
(6881841137934454017, '', 2349, 22700, 20, 283),
(6881844264750353665, 'Which one is your’s? #horse #horses #equestrian #pony #dressage #australia #perth #fyp #foryou', 86200, 434600, 1083, 180),
(6881909763723037954, 'Look that splash? Fastest water rollercoaster in the world!?? #themepark #omg #wow #water #energylandia #poland #rollercoaster #intamin #fy #pov #a', 16800, 384900, 121, 367),
(6882038951134137601, 'Sorry hoor.. ? #alexklein #foryou #foryoupage #fyp', 60300, 496800, 503, 116),
(6882041935029226754, '?', 64500, 547700, 947, 485),
(6882043160806116609, '??? ?? ???????? ✨ #akamegakill #akamegakilledit #esdeath #esdeathedit #anime #animeedit #weeb #otaku #fyp #foryou #fy', 11700, 73700, 157, 419),
(6882071585621069058, 'Sisiter\'s wedding❤️❤️❤️❤️❤️❤️ Suprice Dance? #jaanu_99 #wedding_suprice_dance #buttabomma #onemillionaudition #forupage', 1018, 10900, 13, 5),
(6882079709484649729, '', 51000, 1800000, 522, 361),
(6882153629034269957, 'i tried to hit 10 but nope... #gymfail #fyp #GhostMode #ItBeLikeThat', 3055, 88300, 54, 34),
(6882317577692138754, 'HBD to me ? #anime #weeb #otaku #lovelive #animeedit #animeedits #yoshiko #yoshikotsushima #lovelivesunshine #fyp', 3380, 24000, 103, 119),
(6882342986634595586, 'И как обычно 30 лайков и ни одного коммента?? #уменялюкс #тренд #recommendations #переписка #туториал #совет #душа #глобальныерекомендации #любовь', 643, 11900, 61, 424),
(6882348124120108289, 'පවුලේ උන් එක්ක දවසක්', 1401, 12300, 5, 111),
(6882388794671107330, 'In welk schooljaar zit jij? #foryou #dutch', 10900, 76500, 163, 18),
(6882395409973660930, 'How long have you been playing football for ? ?', 499600, 9200000, 6459, 473),
(6882404595394563330, '@mikeohearn #gymfail #cringe #gym #bodybuilding #fitness #powerlifting #fyp #viral #xycba', 40600, 605800, 696, 150),
(6882419822806699266, 'I’ll duet and redraw Billie in a year ✍?? #billieeilish #drawing #digitalart #digitaldrawing #procreate #realisticart #art #realism #fyp #foryou', 26900, 90300, 478, 399),
(6882436135214238981, '? #fyp #foryou #foryoupage #FootlongShuffle #GhostMode', 21300, 72100, 513, 264),
(6882438480786459906, 'You\'ve been requesting to see how I train my shoulders, so here goes ? #shoulderexercises #training #gym', 1373, 76800, 10, 485),
(6882508731343506694, 'This is me #fyp #thisisme #identify #StrapBack #funny #lipsync #usethissound #sharethis #shareit', 20500, 142300, 243, 146),
(6882547868792524034, '?Poopy pull?#foryou #fyp #foryoupage #fitness #gymshark #bodybuilder #powerlifting #exercise #workout #deadlift', 499, 28100, 12, 43),
(6882598038947286274, 'almost  33 reps?.beat me if you can #duet #sportlover #challenge', 10400, 202400, 747, 237),
(6882670049648200962, '#horadearrasar', 34700, 146100, 348, 447),
(6882734270910188802, '', 2125, 36900, 38, 176),
(6882735576160783617, 'Antwoorden aan @vannieeijken Wist jij alles al?⁉️ #politie #amsterdam #politieamsterdam #fyp #foryou #policecar #dreamjobcheck #learnontiktok #cops', 48300, 747400, 1252, 415),
(6882738915724233985, 'Leven is positief net als mijn coronatest #corona #fyp #foryou.', 1246, 46000, 65, 314),
(6882758194754522369, '#doublebodyweight #squat #squats #strength #coachpiyush #olympiclifting #olylifting #weightliftingcoach #powerlifting', 613, 20400, 54, 335),
(6882769301615496450, 'I can’t not sing the guitar solos...', 558800, 4100000, 4522, 359),
(6882770369573358853, 'women are not exempt from being controlling and toxic #fyp #foryou #foryoupage #RhymePOV #FootlongShuffle #GhostMode', 19700, 83100, 539, 380),
(6882817271899770114, 'Reply to @mrpathan_1  main karachi se hu Jo b ham se millna chahta hai insta pe bat karenge#vairal #100k #illu #foryou #foryoupage #fyp', 1816, 23100, 66, 38),
(6882831253519731970, 'can anyone relate ? #fyp #foryou #foru #fitnesspage #fitness #workout #gym', 22500, 196100, 262, 156),
(6882850172854979845, '@officerkingery - I’m in. #fyp#fypシ#copsoftiktok#firefightersoftiktok#police#firefighter#rival#viral#duet#sorry#prankwars#xyzbca#joking#madrespect', 7076, 65200, 117, 366),
(6882854042016419074, 'It’s hard to conga with sandals and slides ? #ThanksgivingVibes #RhymePOV #dance', 6931, 51100, 134, 135),
(6882870430625975557, 'Reply to @kay_is_here567 just like this lol ☺️ #RhymePOV #GhostMode #pets #horse #horses #animals #animal #horsebarn #horsegirl #part2 #build', 25800, 197700, 217, 204),
(6882920923314326785, 'Don’t complain if you don’t put the work in #foryou #foryoupage #fyp #fitness #nutrition #gymshark #bodybuilder #workout #diet', 3854, 41600, 91, 32),
(6882975789143379201, 'De @2e persoon heeft smetvrees en de @4e persoon laat alles liggen? @marito.dorito  #jufjoyce #verhuisvlog #teacher #comedy #yesidothecooking', 5865, 34800, 257, 9),
(6883011295763860738, '♥️✅', 4053, 32000, 60, 5),
(6883063619202993409, 'We back up on this ho #fy #tinder #rating #nieuwdakkie', 1339, 16900, 43, 183),
(6883066746559794434, 'Golddigger prank parodie met een random meid ?', 15900, 182800, 77, 99),
(6883070138279677186, 'friends ka liya kuch b karna padta hai and Tak dekho acha song hai #vairal #100k #illu #foryou #foryoupage #fyp', 1833, 27600, 87, 255),
(6883082488101555462, 'What can you press? #bigbendstrong #fittok', 1693, 61500, 168, 19),
(6883094233935252737, 'Welkom in Nederland??‍♂️ #nederland #dutch #stamppot #voorjoupagina #fyp #foodmeme #flodder #15sworkout', 23900, 346500, 181, 266),
(6883133559482191105, '❤️❤️❤️ #fyp #fy #voorjou #dollhouse', 2233, 39700, 16, 24),
(6883165648290139394, 'Ахаха #НиШагуБезDETTOL #тренд #recommendations #туториал #глобальныерекомендации #реакция #проверка #отношения #любовь #переписка #угадайкто #душа', 1194, 7090, 8, 187),
(6883180152164011265, 'What did you noticed first? #fyp #running #run #runner #doggo', 25100, 433100, 657, 478),
(6883211681988627714, '#stitch met @charlielifefitness vandaag in deze aflevering van “hoeveel TikTok kan ik kijken totdat ik mezelf compleet haat...” #dutch #humor', 6268, 45700, 68, 175),
(6883270499741273349, 'the fall onto my bed scared me tbh #Boo #gay #affirmations #military #transition #fyp #FootlongShuffle', 12600, 53900, 215, 327),
(6883331225197563141, 'Swimmers where you at', 56800, 379400, 595, 340),
(6883458545451388161, 'Reply to @odeplacolru', 893, 35900, 18, 477),
(6883484287434378497, '#fy #foryoupage #foryou', 26600, 449300, 668, 47),
(6883508337380478209, 'Red moment', 2520, 30300, 43, 409),
(6883532351960288518, '#duet with @sydneymcghee___ I think I messed it up but highly requested ? great challenge!! Girl you got some ?? #fyp #foru #fitnessgirl #fitgirls', 4911, 74400, 29, 349),
(6883565215552654593, 'we surprised my mom with her dream car for her 50th birthday ? #surprise #birthday #mom #fyp', 9782, 65300, 144, 28),
(6883594464900779270, '#duet with @maximevdd #foryoupage #fyp #foryou #powerlifting #bodybuilding #deadlift #fitness #workout #fittok #powertok', 12100, 95700, 77, 407),
(6883600153593367810, '#horadearrasar', 7700, 52500, 129, 363),
(6883604590525156609, '#Top10 Strongest #onepiece Characters by the end of the show. #anime #strongestcharacters #animeboy #luffy #zoro #animeedit #animeedits #animestiktok', 29200, 197300, 656, 242),
(6883622094190497025, 'bad guy⛓? #billieeilish #transition #fyp #ootd #badguy', 5559, 62700, 41, 233),
(6883841665841270017, '? or ? #foryoupage #foryou #couple #funny', 243400, 3100000, 739, 252),
(6883894825855274242, 'АКАШИИИ#НиШагуБезDETTOL #fupシ #anime #волейболаниме #волейбол #haikyuu #анимеэдит #animeedit #bokuto #akashi #kageyama #hinata', 19600, 72700, 140, 504),
(6883896778995846402, '', 1325, 57400, 117, 218),
(6883928153727831297, 'Alrighttt let’s get it he he #fy #smooth #fresh #shower', 2444, 45900, 18, 362),
(6883948403730992386, '#horadearrasar', 9950, 133100, 52, 414),
(6884030480736324869, 'Follow for more lifting tips! #foryoupage #fyp #foryou #powerlifting #bodybuilding #squat #fitness #workout #fittok #powertok', 15800, 163400, 233, 421),
(6884031629522717953, 'Try not to be jealous of my HUGE calves #foryou #foryoupage #fyp #fitness #bodybuilder #workout #exercise #aesthetics #gymshark', 1707, 29200, 39, 256),
(6884114945026411778, '#foryou #foryoupage #fyp #fy #viral #tiktok', 39000, 1300000, 200, 76),
(6884153193425636610, 'I wonder who will understand this trend... #ImJealous #fyp #gaming #streaming', 6111, 62800, 207, 448),
(6884239332329164034, 'why is it so blurry?? @tonylopez @ondreazlopez #memories #ondreazlopez #tonylopez #lopezbrothers #behindthescenes', 5013, 47000, 51, 120),
(6884257667573894401, 'Aqua ????? #anime #edit #fyp #otaku #waifu #animeedit #animegirl #aqua', 13700, 65900, 75, 379),
(6884265104637005057, '❗Дети Моря❗#детиморя #edit #эдит #recommendations #рекомендации #globalrecommendations #recomendation #anime #animeedit #аниме #антмеэдит', 50500, 198500, 578, 447),
(6884265711980645634, 'Zelfde meid 1,5 jaar later ?? #korthom #foryou #fyp #schooltour', 171500, 2400000, 1051, 291),
(6884266018936573189, 'This is a true story?? Ninja Punch City #fyp #foryoupage #fypシ #militaryhumor #marines #navy #army', 7191, 83500, 181, 55),
(6884287238138645761, 'Inspired by my tik tok neighbor #foryou#shefamous#tiktokstar#forupage', 513, 65800, 11, 440),
(6884340073693859074, 'This guy pushes your smoke, what do you do now? ?? #csgo #counterstrike #smoke #meme #greenscreen #wwe', 11700, 60400, 43, 297),
(6884352491505388801, 'Ele ainda é o preferido de vocês? #kakashi #kakashihatake #kakashisempai ##kakashisensei #kakashi_hatake #kakashiedit #kakashiart #animeedit #カカシ', 9288, 52400, 93, 149),
(6884399255302245633, 'Give it a shot if your knees hate you #foryou #fyp #foryoupage #fitness #bodybuilder #aesthetics #gymshark #workout #exercise', 1428, 24800, 22, 417),
(6884400510699343109, 'Wasn’t expecting that ending... #volleyball #pageant', 106700, 1400000, 973, 77),
(6884574278134582529, 'Happy Bwoah-thday Iceman??  #kimiraikkonen #bwoah #f1 #formula1 #fy #foryou', 6972, 86200, 64, 288),
(6884590643327290625, '#TimeWarpScan', 4326, 81200, 354, 472),
(6884646106970590470, '#duet with @jilliansurfs Follow my Backup @funnyk__ #fyp #foryou #views #transitions #transition #xyzbca', 30200, 139400, 79, 495),
(6884688821976354049, 'tá entrei na bad dps desse vídeo...(?ALERTA GATILHO?)#4upage #tradução #otaku #anime #animecasal #bad #animeedit #virall #fy', 25000, 99400, 659, 95),
(6884691950478298370, '?????vlinders', 8133, 118900, 80, 515),
(6884703655182880002, 'Colonel Sanders called, he wants his Prairie chicken back. #indigenous #dancer #transition #toronto #foryou #nativetiktoks #fyp #itstartsontiktok', 71800, 339100, 1179, 333),
(6884749597864987905, 'Eren Jaeger [Shingeki no Kyojin] #attackontitan  #anime #erenjaeger #snk #animeedit #shingekinokyojin', 30500, 143000, 444, 263),
(6884777374508911874, 'When the gyms are closing so you hit a full body circuit ? #joke #fitness #fyp #foryoupage #pistolsquatchallenge #acrobatic', 24000, 188500, 134, 496),
(6884795858827644161, '#horadearrasar', 1086, 48600, 36, 267),
(6884860645364354306, 'If you know me, you don’t ❤️ #fyp #lesbian #gaytiktok #gay #gayngels #bi #lgbt #stem', 5846, 45800, 56, 116),
(6884868479267147010, 'Its ur FAV guurlgroup #5YOU Tag yours!! Had to do this #breakupsong with my guurlss?@nina.jellina @meganmaximevandijk @carlijnvleeuwen #girlgroup', 3832, 46000, 70, 349),
(6884902907439779074, '#duet with @annabananaxdddd y’all keep telling me I look like her? so what do you. think?? dubbelgangers?? #foryou #looklikeart', 11100, 122000, 191, 179),
(6884933059758755073, '#fyp #???????? #foryou #standwithkashmir #rizwandurrani57 @rehankhan3724', 274, 3456, 3, 129),
(6884933447480003842, '#fyp #???????? #foryou #standwithkashmir                                     عشق وار خَتاَ دِ کم', 368, 5189, 13, 508),
(6884935459110178049, 'තරහයිද මා එක්ක ? අත දැම්මානේ ?', 720, 11300, 15, 206),
(6884946806833188097, 'welk type ben jij ? | TAG JE VRIENDEN ?', 19800, 213400, 271, 141),
(6884947969469156609, 'Reply to @hyphousestories2 Zo ? #feestiom #sportiom #kinderfeestje #bubbelvoetbal #kinderfeestje #jarig #feestje #zwemmen #water #verjaardag', 89100, 2100000, 678, 359),
(6884970166489271557, 'CHEST DIP TIPS. Work that chest ??✨ #fyp #foru #fitnessgirls #HorrorTok #DoItBold #fitnesstips #chestdips #chestworkout', 9247, 99600, 60, 486),
(6884981166659751169, '', 586, 8766, 8, 303),
(6884981528430988546, '#horadearrasar', 10600, 109200, 195, 480),
(6884999522360052993, 'Abs routine 8 minutes #abdos #abs #absworkout #entrainementalamaison #tiktokacademie', 41900, 684000, 152, 144),
(6885153736222706949, 'My biggest asset ?? #fit #fitness #gym #lift #fyp', 11100, 148300, 145, 380),
(6885161134748404998, 'Just for fun but there’s 2 kinds of people! #covid #fyp #HorrorTok', 3329, 105700, 36, 357),
(6885246252078910722, '#fy #fyp #foryoupage', 11900, 3400000, 52, 65),
(6885248860281654529, '#duet with @garyvee - accurate. #entrepreneur #business #lifestyle', 5186, 65200, 20, 261),
(6885276983870196994, '#fyp #???????? #foryou #standwithkashmir #rizwandurrani57', 104700, 1900000, 709, 143),
(6885293067562192130, 'Dag 1 of tasting things until i can taste again because I have #coronavirus. #tastetest #coronavirus check #quarantine', 12300, 169000, 207, 327),
(6885540773987667205, 'Hope this helps! #greenscreen #foryoupage #fyp #foryou #powerlifting #bodybuilding #deadlift #fitness #workout #fittok #powertok', 13600, 127500, 148, 353),
(6885565252151315718, '#duet with @daltonroe23 Thanks man, means alot since im small account. #fyp #gym #ProblemSolved #fight #ufc #boxing #fitness', 7207, 71400, 59, 431),
(6885582410579184897, '??මම ලියන එක නැවැත්තුවා??', 3355, 43500, 28, 83),
(6885654253826870530, 'When you feel the first powder of the season?? @christof_schenk #skitok', 5534, 58400, 38, 469),
(6885674156655021314, 'Tiktok Unband Special ???#comedy #foryoupage #viralvideo #hirafamxx #trend #comedy', 124, 1418, 5, 65),
(6885675789090704641, 'zin innnn￼?#dienstplicht #2003 #fyp #funny #meiden', 18900, 170100, 740, 195),
(6885726005357530370, 'Ow Ow pechdag!! #fyp #fy #hardgaan #kapot #broken', 1515, 106800, 17, 256),
(6885766692627107077, 'Beatbox keeping me sane before my flight ?✈️', 5200000, 44600000, 32000, 414),
(6885774617479302402, 'Lopen #fyp #voorjou #dutch', 441, 58900, 7, 469),
(6885779594901867777, 'tag een luilak???  #fyp #fy #lui #lieverluidanmoe', 8013, 147600, 98, 67),
(6885791166248340737, '#duet with @evan_holmes_  my first duet with this young chap #duet #mensfitness #menshealth #eduardofilipecoaching #duetwithme', 617, 33600, 36, 463),
(6885802277555293441, 'Voor voetbal vragen moet je niet bij mij zijn ? #fyp', 8581, 117800, 62, 437),
(6885861410329332998, 'Reply to @user26770788 #theboys #WorldSeries #GamingLife #foryou #fyp', 9522, 64000, 273, 146),
(6886011511391718657, 'Loudest pops in WWE history Pt. 1 #fyp #foryoupage #HBK #shawnmichaels #MickFoley #StoneCold #leagueofnations #wwe #wwf', 4851, 148200, 22, 218),
(6886026780914846978, 'Goedemorgen! #fyp #foryou #goedemorgen #powernap', 3657, 58200, 14, 317),
(6886033905531538689, 'long road to recovery dreamy but it’ll be ok❤️ #fyp #horseaccident #horse #pony #vets #broken #brokenspine #iloveyou', 31100, 163100, 833, 243),
(6886060490687106306, 'video khrb ogae ??#newtrend #foryou #foryoupage', 142, 1853, 12, 401),
(6886066384246443265, '#duet met @elisavanleersum', 810, 50500, 8, 478),
(6886068485345070337, 'Zuur-base reacties ? #fy #fyp #viral', 8639, 102500, 459, 246),
(6886115520425266433, 'Gamen met JP, gezellig man #amongus #diorsauvage #gamen #voorjou #hertje', 3824, 51000, 107, 489),
(6886117069851479297, 'my neighbour on the next balcony watched me film this ? #shuffle #footwork #shuffleprogress #professionaldancer #fyp #foryou', 2187, 34900, 27, 404),
(6886119631011007745, '#painting #oilpainting #artist #artwork #insta #girl #art #brushchallenge #drawing #fyp #creative #trending #support #artists #architecture #girls', 73300, 295700, 772, 314),
(6886192005270064386, '#farhadpaz', 9490, 383600, 134, 357),
(6886215675350666497, 'Absolute power is a helluva drug. #power #legday #boss #ceo #truestory #fitness', 1334, 9315, 23, 44),
(6886223121397894405, 'This whole video is of me trying not to let my b00bs fall out. You’re welcome#ThatWitch #twerk', 5500, 119600, 106, 111),
(6886231790332218629, 'If you have any questions just ask! #fitness #workout #training #gym #squats #deadlifts', 9233, 90200, 156, 64),
(6886265289206435074, '#foryou #bhuran__tv #standwithkashmir #foryoupage #fyp', 206, 4620, 7, 338),
(6886291383246671109, '@futbol.emanuel glad you’re okay! #greenscreenvideo #foryoupage #fyp #foryou #powerlifting #bodybuilding #bench #fitness #workout #fittok #powertok', 23000, 136600, 103, 85),
(6886298413885918465, '', 3205, 45000, 60, 428),
(6886331836444790018, '5 things about living in The Netherlands ? ??', 3603, 86800, 68, 449),
(6886383962885737730, 'Insta par aao bt krte hain ?♥️ #transition #foryou #foryoupage #fyp #tiktokindia #duet #acting #slowmo #love #burhan_tv #featureme #viral #famous', 277, 6893, 5, 174),
(6886417103046380801, 'Ben hopelijk niet de enigste? #fyp #dutch #fy', 3275, 65900, 159, 374),
(6886450016785894658, '#scaniav8  #theklokoprock #mikeymike #nieuwerondenieuwekansen  #Oldskool', 12200, 285700, 195, 290),
(6886459209051852038, '#fyp #fitness #ComingOfAge #mobility #movement', 4937, 95000, 25, 252),
(6886464165549001986, 'Reply to @mgdslade I feel like you’re teasing me ? #boots #laces #military #army #amazing #canadian #skills', 3324, 49100, 115, 468),
(6886472762878151937, 'Rot op met je bananenbrood en whipped coffee', 1425, 56800, 31, 42),
(6886517104871279874, 'Wel een hele creatieve opmerking meneer!', 4662, 59400, 64, 311),
(6886527144478936321, 'No❤️ #fyp #foryou #voorjou', 3808, 53000, 183, 39),
(6886527878100438273, '♡︎???? 1♡︎??? ?? ??? ???????? ??????? #procreate #fy #fyp #シ #foryou #viral #blue #red #impostor #amongus', 19000, 84200, 146, 383),
(6886618708731546886, 'my parents are watching the debate and i’m just like ?✌️? #fyp #runnergirl #gorun #debate #XC', 12800, 105100, 285, 355),
(6886619249889070337, 'Can you tell I want to be a @gymshark athlete? #fyp #foryou #foryoupage #fitness #bodybuilder #aesthetics #gymshark #workout #exercise', 1842, 25900, 87, 221),
(6886654544126758146, 'ආසවට කලේ?', 2171, 14000, 12, 218),
(6886679044323020033, 'magic comb', 1869, 21500, 5, 3),
(6886763008966577410, 'Who saw this? ? #wwe #smackdown #wrestling #fight #raw #fyp #foryoupage #foryou', 1794, 74500, 15, 311),
(6886765050355289346, '#fyp #foryou #xyzbca #foryoupage #boyfriend', 1251, 50400, 27, 56),
(6886816932222356741, 'Reply to @travismendenhall3', 4909, 59000, 886, 170),
(6886843424310414594, 'Reply to @harryseddon69 Help pls ?? #foryou #fyp #gym #workout #deadlift #? #viral', 379, 20200, 192, 110),
(6886856236667636993, '10sec VS 10min VS 1uur. Zien hoe in het in een langere tijd doe? Kijk snel op mijn YouTube ? #voorjou #foryou #fy #tekenen #ipad #procreate', 9025, 67000, 67, 87),
(6886872042411494658, 'spain but without the s #helloworld #animeedit #helloworldanime #animereccomendations #fyp #fypシ #foryoupage #amv #sadanime #romanceanime #weeb #otaku', 38700, 202200, 408, 228),
(6886904360207469825, 'Your soulmate can hear you sing. I wonder who Glitch’s soulmate is.. #bnhaunited #heroesoftomorrow #soulmate #bnhaoc #glitch', 12600, 47200, 158, 25),
(6886917791429954817, '?❤ #animeedit #animefan #otaku #waifu #waifusenpaii #kawai #kawaiicult #animecuteuwu #lolis #loli #animeboy #waifu2d #maisan #anime4life', 10500, 49300, 132, 172),
(6886946250336324870, 'Learn these basic moves to get comfortable with shuffling! #shufflechallenge #shuffletutorial #dance #dancechallenge #cuttinshapes #shuffle #shuffling', 7268, 100500, 100, 427),
(6886981950180003073, 'Shoulder tip #fitnesstips #trainingtips #strong #shoulders', 4124, 69900, 62, 50),
(6887366313526709510, 'First day of marriage. #lgbtq #marriedlife #challenge #singing #wlw #girlswholovegirls #loveislove #TikTokFood #wife', 20300, 87600, 625, 157),
(6887391026848320774, 'Early to bed, early to rise #aginggracefully #singlelife #fyp #transition #bedtime #parati #paravoce #tiktok2020 #saturdaynight #TikTokFood', 8851, 88800, 334, 304),
(6887443398446550273, '', 3716, 124400, 47, 478),
(6887458979954347266, 'Без нее жизнь теряет смысл?❤#ЧКМП_челлендж #выбериобразповкусу #top #recommendations #хочуврек #рекомендации #handemiyy #sencalkapimi #handeercel', 19000, 173900, 42, 235),
(6887527163617201410, 'outfits of the week... basically baggy pants and a top ? which one was your favorite?? #outfits #mondaytuesday', 67200, 1000000, 739, 140),
(6887562050265025794, '#horadearrasar', 12300, 162900, 141, 503),
(6887581168858893569, 'Who is joining the dark side next? We have dump trucks. This is a takeover. #gym #legday #ceo #MeLeaving', 1593, 13000, 54, 300),
(6887590237191572738, 'I really need to get better at transitions.. ? #fy #fyp', 41200, 423900, 790, 252),
(6887596160656215298, 'das pas echte equality', 7993, 50100, 358, 233),
(6887605177591942405, 'BIG BENCH PR #powerlifter #powerlifting #powertok #fitness #gym #benchpress #bodybuilding #strength #fyp #foryoupage  @timmytimmadome', 5574, 117200, 538, 342),
(6887617610196733186, '?? #HalloweenIsHere #equestrian #fyp #foryou #horse', 20500, 69300, 61, 389),
(6887618500307864833, 'almost died making this #halloweenishere #equestrian #fyp #foryou #horse', 33000, 126000, 226, 340),
(6887645369895898369, '? | I’m having some of my charli cake from my bday ? | ? | @charlidamelio | ? | #fyp #foryou #birthdaycake #charli #queen #cake #blm', 26300, 173100, 315, 309),
(6887853904697101570, 'Antwoorden aan @sadeetje031 Pepijn zonder pe voor Jp #voorjou #fa2gang #fyp #hertje #Jp', 8093, 76900, 65, 191),
(6887869748458130690, 'foryou ma Aon tw comments ma lazmi btana#crew07 #vrlvideo #fym #100k #foryou #foryoupage', 149, 3378, 42, 329),
(6887890425844141313, 'My life with multiple sclerosis #ms #fyp #fy #voorjoupagina #somethingdramaticthatchangedmylifecheck #dutch #hospital #positive #goodvibes', 4449, 120600, 201, 254),
(6887946160837790982, '? #foryoupage #fyp #foryou #powerlifting #bodybuilding #deadlift #fitness #workout #fittok #powertok', 9129, 54500, 231, 60),
(6888010128486845698, '(It’s a...)happiest birthday zaino love u ????#sultansbattledance #genderreveal #birthday #happylife #transition #wishes #cake #yummy #4u', 1236, 13700, 0, 500),
(6888031153173892353, 'When they call you ugly in ? ways #chinesetiktok #chinese #chineseboy #chinesetrend #asianboy #transition #transformation #fyp #foryou', 330000, 1100000, 3767, 314),
(6888059613158362369, 'La cara de mi novio es lo mejor ?❤️ #escaramuza #charro #charreria #mx #tiktok #page #lifestyle #horse #challenge', 6682, 56100, 34, 251),
(6888218363923942657, 'Legend dat ie dat durft', 340300, 4400000, 864, 88),
(6888254914754006274, 'TRUE FACT ? Welke telefoon heb jij? ✨ #fyp', 4896, 43700, 257, 27),
(6888322901305478401, 'Sorry neighbours❤️ #fy #fyp #michaeljackson #michael #jackson #foryou #foryoupage #vj #voorjou #vjp #voorjoupagina #music #dance #crazy', 2973, 44400, 118, 262),
(6888341759622008066, '#fyp #foryoupage #mycostume #chocolate #birthday #viral #asosdaytofright #fypシ #xyzbca #cake #idontlikeit #trending #trend #ilikeyacutg', 1090, 10100, 50, 171),
(6888353150521134338, 'Some strong 12 year olds about these days #catback #deadlift #gym #workout #fyp', 1795, 87900, 78, 34),
(6888373722546294022, 'Reply to @kilxuaaa i love corpse #fyp #foryou #foryoupage #MyCostume #exprESSIEyourself #MicellarRewind', 24200, 151900, 428, 117),
(6888423046529518853, '#duet with @kingofcommunism69 #DoItBold #MyCostume #exprESSIEyourself #MicellarRewind Facepalm is all I have to say about this', 3810, 56800, 706, 215),
(6888423769107385601, 'Je zou maar 549 hebben lol onderlaag van de samenleving', 5875, 59400, 203, 220),
(6888428739861040386, '#clownerij', 40400, 551800, 763, 101),
(6888453982440770821, 'Is it kissing time yet ? #MyCostume #exprESSIEyourself #kiss #foryou #fyp', 7042, 61200, 240, 393),
(6888474204623195397, '20 minutes of this workout paired with a calorie deficit will have your abs popping! #fyp #fypp #hiit #hiitworkout #bodybyberg', 15800, 269900, 81, 461),
(6888483056588508417, 'I’ll do a vid on bulking tips soon #fyp #foryou #foryoupage #fitness #bodybuilder #supplements #nutrition #workout #diet', 2021, 25500, 89, 195),
(6888486575005617409, '', 499, 15300, 12, 244),
(6888674709433535745, 'Happy death day#parati #fyp #4u #goforitchallenge #destacame #halloween #birthday #cake', 570, 3637, 3, 126),
(6888722307603336453, 'Reply to @cattmanick short answer? No. #rawiseasy #equippedpowerlifting', 6101, 73300, 184, 474),
(6888741138941955330, '#voorjou #ajax #ucl', 2137, 47400, 216, 19),
(6888750527845485825, 'Responder a @user709420874 #horadearrasar', 3123, 128500, 150, 392),
(6888753654594145537, 'Those booty slaps though ? #indoorcycling #indoorcyclinginstructor #soulcycle #fyp #foryourpage #xyzbca #beyonce #crazyrightnow #lit #fire', 305300, 3300000, 3502, 372),
(6888809548895849734, 'Teehee ? #foryoupage #fyp #foryou #powerlifting #bodybuilding #deadlift #fitness #workout #fittok #powertok', 10200, 95200, 297, 205),
(6888826582786395394, '#horadearrasar #fyp #tiktok #fy #foryou', 4053, 67000, 88, 216),
(6888847866157223169, 'amo a esta pareja ?❤ #fullmetalalchemistbrotherhood #fmab #edwardxwinry #animeedit #fyp #xyzbca #otakugirl #fypシ #weeb #parati', 18800, 87600, 219, 4),
(6888849748615367937, 'Duet me with your push workouts #RareAesthetic #fyp #foryou #foryoupage #fitness #bodybuilder #supplements #workout #gymshark #exercise', 1770, 25400, 29, 306),
(6888873392234056962, '#like #comments #follow #???????? #??? #fyp #foryou #foryoupage #standwithkashmir #share', 458, 943, 8, 439),
(6889092649895087362, 'Underchin gang #fyp #foryou #viral #trend #joke #xyzbca', 13200, 83100, 58, 315),
(6889105902234864901, '??? #foryoupage #fyp #foryou #powerlifting #bodybuilding #deadlift #fitness #workout #fittok #powertok', 7226, 74700, 96, 443),
(6889162600534330625, 'DIY wallart. For tutorial video instagram: @gulys_creaties #diy #tutorials #follow #diyhome #diyhomedecor #tutorial #makeover #gold #creative #like', 37900, 805900, 268, 3),
(6889402787612937473, '', 1870, 36000, 60, 212),
(6889412761927847169, 'En ik ga d’r als een hertje achteraan?', 1587, 44800, 30, 107),
(6889412974012943618, '???????#tramp #donaldtramp #comedies #foryou #dlaciebie #dlawas #haha #śmiesznefilmiki #tiktokpolska #youtubersentiktok', 15400, 818700, 372, 162),
(6889414816922930433, '#siguiendo#follow#viral#fyp#parati#anime#otaku#fyp#animeedit#loli #kawaii', 26700, 188400, 356, 133),
(6889428056704961793, '? #fyp', 802, 45300, 33, 348);
INSERT INTO `short_videos` (`id`, `text`, `tymCount`, `playCount`, `commentCount`, `user_id`) VALUES
(6889437057261866242, '#smiithdefortal #comoequeeupossovomitarbatata #batecomvaontade #horadearrasar #fy #whatsapp', 738, 37700, 19, 285),
(6889446389349125377, 'Every squad. #boys #fyp #marvel #memes #squad', 1763, 24200, 12, 394),
(6889452355486485762, 'Hier dan eindelijk het filmpje waar jullie op gewacht hebben. Wat vinden jullie er van? #fyp #muziek #meester #dance #twerk #school #comedy #tt #prank', 2247, 42000, 60, 144),
(6889466576051932421, '@sooshalt @octstrength honey grows lats #foryoupage #fyp #foryou #powerlifting #bodybuilding #deadlift #fitness #workout #fittok #powertok', 11700, 128900, 94, 318),
(6889502513469410565, '#animeedit #anime #weeb #love #family #friends #recommendations #workout #gym #weight #relatable #facts #pain', 29700, 326400, 226, 337),
(6889517297606708482, 'Reply to @bidenlikesmen2020 - my work here is done. One small victory at a time. One small step for man kind. #success #winning #legday #goals', 3573, 25500, 91, 179),
(6889521293306236161, '#fyp #jenga #fy #cheating #vals #spelen #friends #lol #frontpage #game #jengablocks #jengagame', 6276, 129900, 50, 302),
(6889521523833474305, 'Thank me later✨ #fyp #foryou #voorjou #dutch', 50900, 914000, 300, 494),
(6889539392105352450, '?????????? #WellDone #2prettybestfriends #csmajorsoftiktok #stem #techtok', 1846, 24900, 53, 379),
(6889624721005006085, 'This is everywhere and idk who started it so idk what creds to give, but this, this makes me happy #WellDone #fyp', 1993, 86500, 34, 185),
(6889712383049108737, 'AK pal ki ab to dure na muj ko Dana❤❤#foryou #foryoupage #bhurhn_tv #khasmirpakistan #videostar #trending', 93, 5377, 2, 461),
(6889769067306061057, 'Flash Warning #animeedit #edit #anime #fyp #recommendations #rec #tokyoghoul #kaneki', 8516, 50300, 70, 80),
(6889769258981575938, '#transition #edit #vfx #loop #promises', 3230, 41900, 114, 150),
(6889774570367192322, '', 244200, 1200000, 829, 238),
(6889807558618418433, 'Music in the Car just a little bit ? @spaudio8766', 190100, 1600000, 2361, 271),
(6889818292337249538, '#fyp #voorjou #rechtenstudent #student #voorjoupagina', 1535, 47300, 96, 113),
(6889831681469975810, 'Fishikta ameley❤️#eritreanmusic#habeshatiktok#eritreangirl#fyp#foryou#smile#habeshahousee#habeshazoom#gy#eritreatime', 2925, 51300, 120, 422),
(6889856262431837441, 'оцените от 1 до 10?#ТанцевАЛИнаАЛИ #animeedit #волейбол #волейболаниме #haikyyu ##haikyyuedit #karasuno #карасуно #fupシ #анимеэдит #anime #эдит', 6643, 19300, 138, 290),
(6890189236130073857, 'Can\'t he be lucky for one time?? #fyp #fy #foryoupage #foryou #voorjou #formula1 #f1 #racing #maxverstappen #redbullracing #crash #dnf #badluck #imola', 4734, 55100, 306, 438),
(6890298155766697221, '#stitch with @maxlifts  I know we were all just having this convo on my tok. #wewintogether ???', 9588, 136100, 75, 252),
(6890302116246637825, 'Round 1 brujos ?‍♂️ Round  2 Vampiros ?‍♂️ @gloriavalenciaf @pablomondragoon24 @ludwika.santoyo @somoslasrico @aliciavalenciaf_ #f #friends', 205500, 893900, 143, 453),
(6890329452253908230, 'Powder room make over.', 116400, 3500000, 713, 252),
(6890336478094773505, '#anime #animeedit #opening #rentagirlfriend #yourlieinapril #shingekinokyojin #naruto #evangelion #SAO', 79900, 301200, 1941, 456),
(6890351133366209793, '#horadearrasar', 1386, 43900, 75, 198),
(6890352437425638658, 'Casual paseando a caballo #fyp #hahaha #horsegirl #horse #horsegirlvibes #horsesontiktok #horseslover', 13100, 71000, 110, 153),
(6890518277752163585, 'kut wind #wind #regen #werk #selfloveclub #foryoupage #luukwatdenkenjij #voorjoupagina #fyp #fy', 2932, 40800, 91, 346),
(6890553472937200898, '???❤️?   #dance #baile #viral #video #boy #lgbt #latino #slowmo #slow', 2105, 45500, 41, 511),
(6890568657986931970, 'Vies eigenlijk #fyp #voorjoupagina #dutch #vjp #viraal #dutchtiktok #voorjou', 14400, 246900, 295, 451),
(6890571273110392065, 'How to draw hand #artchallenge #drawing', 5000000, 68700000, 12200, 178),
(6890591494126718210, 'Heartache #bleaching #pain #hairdye #backtoblack #foryou #fy #voorjou', 1620, 71300, 25, 148),
(6890594872328195333, 'Reply to @lucasneal1 comment any other ideas if you want #fyp #foryou #foryoupage #HolidayTikTok  #RnBVibes  #timewarpscan', 20000, 111100, 466, 67),
(6890631109583867137, '#parati #anime #videoedit #foryou #fyp #japon #animeedit #haikyuu  #haikyuuedits  #paratodos #animation', 58000, 186800, 725, 339),
(6890655206644747522, 'Do you have suggests to what I have to post? #xyzbca #fyp #fy #f1 #maxverstappen #racing', 28400, 690100, 117, 380),
(6890707606579563781, '#stitch with @mikeohearn #fyp #bodybuilding #fitness #motivation #gym #workout', 32100, 393800, 301, 99),
(6890871255134752006, '❤️VS Code Red ❤️ #vscodered #horse #amazing #hi', 8302, 78700, 84, 460),
(6890903823381056769, '“That’s akward”? #danielricciardo #sebastianvettel #f1 #formula1 #fy #foryou', 37000, 530900, 67, 301),
(6890954152281918721, '#anime#animeedit #animeedits #shonen #animefight #animefan #animeshonen #shingekinokyojin #animerecommendations #animebinge #animerec #animerecs', 19900, 140500, 220, 311),
(6890991934324755713, 'Come on Tiktok, make one go viral. #TFBornThisWay #iloveyou #olivia #trending #onedirection #1d #transition #peakyblinders #fyp #4u #thomasshelby', 1105, 6792, 85, 92),
(6891017445188848898, 'Quem ai recicla? #horadearrasar #tiktok #foryoupage #fypgakni #fyp #youhaveto #teletransporte #tiktokindonesia #fypシ #foryou #funny #fy', 4074, 37500, 78, 39),
(6891048135716506886, 'The most important move to learn if you want to start shuffling! #shuffletutorial #cuttinshapes #dancechallenge #dance #shuffle #shufflemusic #fyp', 5979, 152600, 94, 166),
(6891064220658502913, 'Doing some cheat rows at the gym a few weeks ago. Sometimes when you cheat with the weight you get big gains. Anyways stay motivated! #workout #gym', 1744, 191400, 290, 222),
(6891183356097187074, '#thankyoutaker @undertaker #wwe#legend #theundertaker', 5508, 51700, 135, 257),
(6891212276406160641, '?', 441200, 7200000, 4398, 336),
(6891240671357816065, 'දගයාගේ වෙනසක් soon ??❤️', 11900, 134900, 21, 223),
(6891256269898878209, 'මේ දවස්වල තේ බොද්දි කන්න රසම රස කෑමක් ☺️ මම රසටම හදන්න දන්න කෑමක් මේක... කලින් video එකේ හදන විදිය දැම්මා .කියන්න බලන්න මේ මොනවද කියල?#curfewdays', 515, 10300, 18, 454),
(6891273557981023489, '#quad #fy #race #motor #sport #work', 3119, 60900, 9, 14),
(6891275439826930946, '?#ashmezz #voorjou #voorjoupagina #nederlands #nederlandsetiktokkers #nederland #tiktokholland #dutch', 62200, 493900, 3735, 185),
(6891284879233879298, '', 572, 5127, 38, 128),
(6891310470830034182, 'Reply to @rehnconnor #greenscreen #foryoupage #fyp #foryou #powerlifting #bodybuilding #deadlift #fitness #workout #fittok #powertok', 8080, 90800, 178, 212),
(6891318229881343234, 'not ALL men, ha beat you to it ;) but most yes.', 20300, 140300, 474, 377),
(6891327911140314370, 'Vorige gerapporteerd, diegene mag zn teen stoten #foryou #fitness #training #chestday #workout #muscles #gains #joelbeukers #techno #c4 #jack3d #fyp', 4239, 80500, 206, 200),
(6891396863979769093, 'Reply to @jr6383638368373837', 11500, 101800, 388, 339),
(6891424030172253442, '??pobre #ohnono #viral #foryourpage #sakura #naruto #animeedit #anime #otaku #parati', 28000, 254300, 378, 78),
(6891434870057340162, '❤️❤️❤️❤️❤️ #horadearrasar #luizbacci #lbacci #amore', 4141, 42000, 140, 295),
(6891455289002839301, 'Yee #fyp #foryoupage #foryou #xyzbca #powerlifting #fitness #college #duet #gym #wewintogether #showupshowoff #mypfp #HomeOffice #UnwrapTheDeals', 25100, 184200, 319, 6),
(6891641815447932166, '(vira o celular/turn ur phone) esse deu trabalho viuuu? #naruto #sasuke #sakura #kakashi #sai #yamato #team7 #time7 #narutoshippuden #animeedit', 45900, 170700, 713, 51),
(6891645928797703425, 'Ik moest vooral om m’n eigen hoofd lachen ? #juf #foryou #voorjou #school #ohno #trending', 74300, 684200, 1613, 139),
(6891693185693797634, 'Tja verschil moet er zijn #boyfriend #relationship #studentproblems #study #fyp #xyzbca #viral #noticeme #schoollife #foryou #voorjou #foryoupage #fy', 3860, 71500, 68, 20),
(6891701560221404417, 'The boys were proud again ❤️ #fyp #foryoupage #foryou #gym #athlete #fitness #workout #motivation #MyRecommendation #ohno #tiktok #theboys #welldone', 3142, 36900, 160, 244),
(6891713222534089985, 'Wat  jouw pre over je zegt deel 2 #foryou #fitness #preworkout #mobicep #training #chestday #muscles #workout #gains #gym #fyp #fy #richpiana #c4 #fit', 13800, 252600, 284, 291),
(6891747931905330433, 'Morgen begint mijn toetsweek? Wanneer is jullie toetsweek? #dutch #foryou #fy #voorjou #letsprobeerit #viral #dance #trending', 1885, 39200, 42, 364),
(6891751258835750146, 'I did not expect them to make this ?? @bangenergy @bangenergy.ceo #bangenergy', 34500, 662900, 77, 144),
(6891776298784509185, '#horadearrasar', 14600, 97000, 232, 403),
(6891793639643647238, '#fyp #army #navy #airforce #marines #rangerschool #emarty_93  #sf_warriors', 5688, 52100, 88, 473),
(6891908639829937410, 'අඩුම ගානෙ උත්සාහ කලනේ???#onemillionaudition #trending #sltiktok @kalana.sp @pradeep_niranga @amila282', 4218, 47400, 90, 396),
(6891908752539274497, 'Sólo necesito tu dirección de correo electrónico y el personaje ♡ (Y datos extra, de precisar) #weeb #anime #animeedit #haikyuu #bokunoheroacademia', 74700, 254800, 5659, 156),
(6891973965238111489, 'Видимо опять придётся доказывать, что звук мой? #рек #рекомендации #хочуврек #recommendations #keşfet #billieeilish #lovely', 6130, 55500, 111, 188),
(6892015573861993730, 'What’s better than PIZZA??? IG: thefashionjogger #viral #fyp', 1651, 46900, 37, 402),
(6892072950648802561, '#mondkapjesplicht #mondkapje #ns #corona #coronavirus #covid19 #fy #ikdoenietmee #ikdoenietmeermee #regering #ns', 22, 484, 2, 313),
(6892096873453145350, '??‍♀️#fyp #newhere', 5814, 53600, 390, 280),
(6892107260181499137, 'Luffy !??                                              #animeedit #animeedits #onepiece #luffy #art #fyp #foryou #foryoupage', 12900, 85500, 75, 65),
(6892131074093223170, 'I\'m doing some form of this before my every heavy set ? #squat #squatmobility', 581, 19900, 8, 513),
(6892133738705177857, '#duet met @jessevdreek  we live in slowmo.. #pov je loopt langs onze vriendengroep..', 1689, 50500, 46, 264),
(6892150387453725953, '?? how do you this spike? ❤️?❤️#volleyball #volleyballlove', 24500, 199900, 231, 449),
(6892201986381335810, 'Just wanted an excuse to flex #foryou #fyp #foryoupage #bodybuilder #fitness #workout #gains #nutrition #fittok #myjob #movember2020', 3260, 36600, 31, 460),
(6892345024227331330, 'Fijn om het cijfer van een complete stranger te weten✨ #xyzbca #foryou #nederland', 12100, 165800, 161, 118),
(6892440916234210566, 'Reply to @erickg93 self love comes first #foryoupage #fyp #foryou #powerlifting #bodybuilding #deadlift #fitness #workout #fittok #powertok', 9085, 61700, 118, 39),
(6892449418851716354, '#train #cabride', 937, 44600, 26, 79),
(6892512401351085313, 'Ouch ? @babybrandio', 171700, 2000000, 3770, 25),
(6892582021672013061, '#duet with @you1stlondon leg day everyday #coles76 #gym #legs', 4823, 122000, 39, 92),
(6892654388314164482, '', 3903, 41600, 65, 475),
(6892685850996509953, 'වට්ටන්න කියලා ඉතලා ????', 1671, 9615, 62, 407),
(6892701445603298561, 'Hahah daar is moeke weer! Kijk tot het einde! ? au mn knie mn knie! ?', 29900, 441300, 278, 234),
(6892711484695121153, 'علمنا?#damascus #ثورة #دعم #syria #الساروت #ادلب #الثورة_السورية #آيفون #fyp', 12800, 172200, 520, 198),
(6892735023372389634, 'Comedia jajaja#comedia #fyp #sigueme #parati #comedia #destacame #comedia', 1806, 49000, 7, 205),
(6892745555836013826, '#sl__king අත් හදා බලන්න .වෙනස කියන්න', 393, 11400, 52, 31),
(6892756720829893890, 'Vergeet niet op het plusje te klikken ➕?volg me ook op insta ? en niet te vergeten blijf lachen☺️  #foryou #fy #foryoupage #herkenbaar', 2380, 57200, 73, 442),
(6892769736589888770, 'Wist jij dit? ? #sportplazagroenendaal #zwemmen #zwembad #glijbaan #badmeester #badjuf #werken #glijbaanchallenge', 57300, 1200000, 336, 331),
(6892784023928704258, 'I love them ? #asagaotokasesan #asagaotokasesanedit #yamada #kase  #anime #animeedit #animeyuri #yuri #?️‍? #yuriedit #fyp #foryou #fy #parati', 12600, 54200, 173, 490),
(6892805816492084481, 'where my selfish bottoms at? #fyp #voorjou #netherlands #grindr #gay', 2053, 46800, 42, 194),
(6892822437671570690, 'ℰ??? ???  //  #tomfelton #harrystyles #emmawatson #timotheechalamet  #billieeilish #zaynmalik  #fyp #foryoupage #viral #edit #louistomlinson #4u', 426100, 1500000, 5574, 53),
(6893028172024139009, '', 3337, 81700, 48, 50),
(6893035754067430658, 'inst:hefesto_girl #рекомендации #врекомендации #fitness #sports #tiktok', 41000, 785700, 195, 278),
(6893087415263644930, 'If you’re a girl with brown eyes hmu? #nederland #vibetiktok #british #fy #likelike #liamkratos #tiktoktraditions #fyp #foryou #dutch', 6103, 35800, 438, 226),
(6893119957534510338, 'vaieral vedeo please for you for youpage', 143, 1084, 4, 373),
(6893140398403816706, 'Nooit meer zorgen maken over het breken van mijn sokken#fyp #fashionhacks', 27700, 351500, 517, 265),
(6893175582482255109, 'This is ma jam! @backstreetboys @nickcarter @ajmcleanofficial #backstreetboys #largerthanlife #fyp #foryou #foryoupage #MotivationMonday', 2395, 85900, 38, 61),
(6893183413965147394, 'Reply to @nic23052 meet Anna The Warrior Of Strength ??? #4yp #foryou #gloryxv #limitededition #fyp #blowthisup #transition #JDWonderland #blessed', 2566, 31800, 96, 139),
(6893189880231283970, '#fy', 4929, 80400, 505, 423),
(6893192903749913858, 'The boys were proud once more ? #fyp #foryoupage #foryou #MotivationMonday #gym #athlete #fitness #workout #tiktok #fanedit #myhobby #motivation #abc', 447, 26200, 75, 470),
(6893247155738299650, 'GUESS WHO ARE BACK? #treadmilldance #foryou #fyp #treadmillworkout #fypage #xyzbca #gym #workmate #colleagues', 13800, 201300, 85, 455),
(6893253061305732357, '#fyp #fitness #crossfit #weightlifting  #girlswholift #eddygee #wheymen #MotivationMonday #gymhumor', 17400, 124400, 236, 425),
(6893282758790008065, 'Reply to @ebbagirl_ Lots of requests for #billieeilish and I hadn\'t heard her music before... I\'m hooked, thank you ? #harp #cover #Lovely #fyp', 6842, 43700, 184, 235),
(6893433380352822529, 'Ferrari ?? #F1 #formula1 #ferrari #mercedes #mclaren #hamilton #senna #verstappen #schumacher', 3186, 91300, 24, 255),
(6893481053441281282, 'it took too long⏰  #horse #equestrians #twins #fyp #foryoupage #makeusfamousthx', 3644, 47700, 19, 299),
(6893496095779933442, 'Gordon schrikt van het goedkope assortiment in de action ? #fy #foryou #foryoupage #fyp #vj #voorjou #gordon #action', 90600, 1100000, 1472, 121),
(6893504738076167426, 'Choices? Je bent fantastisch! #businesscoach #zelfvertrouwen #presence #businessmentor #bedrijf #tiktokforbusiness #stappenplan #groeiendondernemen', 886, 36700, 87, 20),
(6893521307023969538, 'Stuur dit naar al je vriendjes die minder moeten snappen voor ze 1 miljoen hebben #fyp #hertje #fa2gang #zopepijn #kaaskomkommer', 8161, 66100, 131, 336),
(6893536744218627330, 'tag that friend ? ? #friends #concept #exam #friendship #100k #funny #concept', 8284, 53400, 247, 331),
(6893596137022934274, '#dueto com @ @the_twin8 #daniela79 #newtrend #dança #fy #tiktok #inmybed', 2584, 51000, 150, 104),
(6893611785295793410, 'guapas ?? #narutoshippuden #hokage #meituremi #pakura #karinuzumaki #twitor #amv #animeedit #foryoupage #_xny twixtor: @nejixc uwu', 11800, 49200, 156, 421),
(6893676462788840709, 'I’ve got 50 on venmo for whoever beats it #benchpresschallenge #armday', 8082, 137200, 568, 187),
(6893741937132604673, 'Looool I love this dance pls don’t come for me?? #fyp #foryoupage #edmonton', 2704, 35000, 48, 511),
(6893823598432226561, 'Ready for winter?? @23nils23 #snowboarding #skitok #fyp', 23700, 183300, 155, 210),
(6893846505656995073, 'Bathroom cleaning part 4. After EVERY hairwash-time it’s gets so dirty and slimey? #foryou #fyp #clean #cleaning #tiktokcleaning #bathroomcleaning', 2906, 436400, 49, 424),
(6893869437884091649, 'RANDOM SCENE ? don’t know ? #fyp #foryoupage #voorjou', 46100, 321400, 199, 345),
(6893875244742741253, 'Got the idea from @biggweg_  #gym #fyp #squat #foryou #deadlift', 14100, 147500, 182, 271),
(6893906975730584833, 'Tumhari tasveer ??? #tokerstars #trending @shaheer._.khan1', 112800, 734700, 751, 281),
(6893910918913117441, '[ALERTA DE TRANSICIONES DIFÍCILES ⚠️❗️], etiqueta a tu 5@ amig@ y retalo a una batalla de transiciones ?❤️  #transition #fyp #viral #transitioner', 11400, 68100, 294, 85),
(6893922308096937222, 'Reply to @brockkk.c #foryoupage #fyp #foryou #powerlifting #bodybuilding #benchpress #fitness #workout #fittok #powertok', 8501, 79600, 60, 163),
(6893922616696999169, 'Odpowiedz użytk. @thatguymax91  only one I have? is that okay?? #fyp #funny #dance', 2212, 35200, 147, 336),
(6893935935684185346, '#horadearrasar fiz tb ?#horadearrasar #foryou #fyp #viral #tiktokbrasil #tiktok #3tambores #horse #horses #sentanofazendeiro #fazendeiro', 6529, 73600, 30, 8),
(6894039333100129537, 'It hurts the ego, but I do respect it when it happens. #strength #impressive #relatable #workout', 3576, 32800, 40, 183),
(6894047232274812165, 'Okayyy this transition tho... also I can’t find the @ of who did this first !! Help!! #fyp #foryou #viral #makeupartist #makeuphacks #transition', 20900, 75900, 230, 76),
(6894050180300131585, 'Still working on that', 2157, 35100, 24, 316),
(6894081763379924229, '#TimeWarpScan', 31000000, 250800000, 625700, 461),
(6894206452450217217, '#kids #parents #funny', 3874, 95800, 94, 198),
(6894259747290123521, 'The dogs went right in after him ? @salty.bun', 125000, 1500000, 1164, 273),
(6894262046720986369, 'Secured the bag boiss wie komt online? #voorjou #vjp #dutch #tiktoknederland #viraal #ps5', 3161, 39700, 81, 48),
(6894316591450705154, 'happy 3yr anniversary to ?rep?  #foryou #taylorswift  #HolidayCountdown #transition  #swiftie #fyp', 12100, 78800, 119, 119),
(6894377684403604738, 'What is the intention of the Lion? #fyp #foryoupage #Depay #Lion #football #soccer #icon #sport #interland', 69200, 1900000, 373, 230),
(6894393861238557954, '', 1338, 10600, 13, 46),
(6894591131565247745, '#kooiaap #kooiaapspecialist #redlichtdistict #lol #dolle10minuten #macdonalds #voorjou #transport #vrachtwagen #strijder #lekkerhoorrrr', 5124, 75800, 69, 248),
(6894926988453186817, '“omg” #danielricciardo #maxverstappen #redbull #f1 #formula1 #fy #foryou', 11600, 103600, 27, 289),
(6894955763098193154, '#motorsport #f1 #sports #formula1 #racing #redbull #redbullracing', 8691, 78100, 151, 268),
(6895042572994104581, 'New YouTube video is now live! Link in my bio!? #xyzbca #fyp #fory #workout #gymbro #training', 7281, 125200, 175, 373),
(6895048600355704070, 'She ran away with me during the process of filming but it’s fine ￼￼#fypシ #foryoupage #transition #hopelesslydevoted2u #horse #horseboy #equestrian', 27400, 75300, 475, 241),
(6895072166828576001, '#horadearrasar', 2940, 47700, 52, 191),
(6895082457968725249, 'Lifehack when u see a pretty girl | Лайфхак когда понравилась девушка??  #thekiryalife #prank #reaction #pickupline #пранк #реакции #foryou', 1200000, 24800000, 4454, 424),
(6895089837150440710, '2nd in NOVICE, 3rd in OPEN! I love you. #fyp #bodybuilding #fitness #motivation', 16400, 95000, 520, 496),
(6895156886409137410, 'Reply to @jamoo12345 don’t underestimate my hops ??‍♀️ #boxjump #strongwomen #athlete', 2083, 88900, 19, 126),
(6895303013867539713, 'Oh no', 227, 62200, 4, 489),
(6895317957522541825, 'What is the most embarrassing moment that ever happened to you? @chersmarijkebotts @rfmondo #fyp #viral #comedy', 22200, 420000, 1006, 26),
(6895318771666308354, 'Easy way??‍♂️ #minecraft#mc#minecrafter#minecraftbuilding#minecrafthacks#minecraftpe#minecraftmemes#gaming#fyp#fy#foryoupage#foryou#games#gamers#xyz', 1791, 44600, 36, 421),
(6895338661622123777, 'Follow the chain #bottle #viral #bottleflipchallenge #bottleflips #fyp #foryou #fy #cool', 3697, 92000, 37, 99),
(6895349449107754245, 'still got it ? #gym #fyp #deadlift #foryou', 9570, 71500, 83, 16),
(6895357815066529026, 'I need one of these ? @brandon_baum', 161500, 1500000, 1640, 232),
(6895388317680946433, 'please give me more advice.if you like my work,please Pay attention to me?', 208, 49000, 3, 391),
(6895420478932946177, 'Rise & shine ? @drew.simms', 67300, 430100, 1578, 136),
(6895453128989101313, '', 4029, 44000, 95, 196),
(6895488257920945414, 'Aprender inglés con Billie Eilish. You won’t regret it. ? #billieeilish #whatthehellareyoutalkingabout #kallyeskally #transition #ingles #maquillaje', 9007, 96100, 107, 387),
(6895491816532069637, 'Fav song right now ? #fyp #foryou #makeup #billieeilish #thereforeiambillieeilish #lipsync #kentucky #peircings #model #trend', 6239, 106200, 89, 308),
(6895497835681287426, 'Great rally ??❤️ show some love in the comments for them?❤️? #volleyball #volleyballlove #volleyballworld', 343000, 2800000, 2732, 249),
(6895703273773321474, '#cake #dripcake #vainilla #chantilly #happybirthday #dulce #chocolate #destacame #foryou #parati #tiktok #bombom', 13600, 207900, 94, 39),
(6895710777043455234, 'Meer kan ik er niet van maken.. ?#tegendraats @tieske99 @jins_derksen', 4045, 84100, 224, 331),
(6895741298297359617, '?? #valtteribottas #mercedes #f1 #formula1 #fy #foryou', 24300, 331900, 97, 92),
(6895756274844077314, 'leave some future suggestions yall?? #anime #animeedit #fyp #GrowUpWithMe', 8831, 103300, 238, 116),
(6895768030618438913, 'I will be in truble when she finds out ?? #paprazzi #fyp #viral', 2264, 81800, 60, 348),
(6895806487784869122, 'water loopt op de stroom#trending #fyp #foryoupage #gevrlijk', 6274, 1400000, 173, 48),
(6895808596605537537, 'Does anyone do this? ? @christineyuns', 38200, 317500, 525, 286),
(6895846066961337601, '#fight#anime#animeedit#animefight#vs#berry#viral#pibes#parati#fyp', 7161, 161600, 80, 378),
(6895851157751680258, '#fypシ #recomendados #enparati #fyp #recommendations #fypシ #recomendados #enparati #fyp #recommendations #fypシ #recomendados #enparati #fyp', 9030, 79200, 239, 468),
(6895890526185213186, 'රැවුල වැවෙන්න බෙහෙතක්????', 7508, 58500, 17, 153),
(6895916039683525890, '#duet with @matsoxnevad can’t build a house on a shaky foundation #GrowUpWithMe #tips #gym #health #workout #bodybuilder #fitness #FoodTikTok', 2036, 40800, 16, 257),
(6896035426092453122, '#foryou #voorjou', 8860, 113800, 25, 42),
(6896172646669552897, 'This was the best I could come up with ? #switchingpositions #HolidaysOurWay #tabletop #transition #foryou #fyp #lgbtq #lesbian #lesbiansoftiktok', 4024, 25200, 108, 313),
(6896176955624918274, 'Which way would you go!? #HolidaysOurWay #computerscience #girlsinstem #stemmajor #coding #codewithme #softwareengineer', 4208, 101800, 244, 492),
(6896237474381614338, '#horadearrasar', 2809, 37700, 20, 220),
(6896407441815260418, 'That\'s the only thing I\'d be able to write ? #programming #coding #developer #codinglife #codinggirl #tech #compsci #nerd #java #nerdjokes #python', 20800, 181200, 252, 63),
(6896449137420619009, 'Deze tips helpen echt?? #dutch #voorjou #fyp', 3542, 51800, 39, 480),
(6896469887732960513, 'Cijfer raadsel! #raadsel #raadselvandedag #cijfers #klok #daughter #queensover30 #queensonfyp #dochter #netherlands', 391, 40500, 10, 183),
(6896474585798053121, '', 102700, 7400000, 227, 174),
(6896488817528753409, '', 1933, 49400, 28, 299),
(6896497936558001410, 'Stiekem met je DS onder je kussen, dat waren nog is tijden #fyp #fa2gang #kaaskomkommer #diorsauvage #jp #hertje', 35600, 360800, 419, 263),
(6896520019082005761, '#grwm #transition #foryou', 6013, 27400, 102, 489),
(6896522195581897989, '#stitch with @dina This is crazy!!!! #candle #lighter', 488200, 6200000, 2009, 349),
(6896541657471241474, 'Передачи от первого лица?#bellaforteens #ставрополь #футбол #football #рек #рекомендации #rec #recommendations @step__12', 831, 6599, 37, 467),
(6896543335259933958, 'gotta have fun during batting practice #greenscreenvideo #fyp #foryou #viral #trending #memphissoftball #RecordsDay #NBADraft #', 28800, 337000, 181, 250),
(6896548159820926209, 'අනේ සෙනුරි නංගි ඇයි ඔහොම කියන්නෙ ??', 1861, 19800, 4, 228),
(6896550572653120770, 'The horses strike again￼. #horse #waterbowl #water #horses #stables #stable #horseriding #horselover #working #animals #farm #farmer #yard￼￼￼ #clumsy', 837, 49600, 13, 130),
(6896571117419416834, 'part 1!!! #fyp #cleaning #howto #trending #foryou #themaincharacter #beforechristmas #trend #cute #cleantok #fall', 2471, 157200, 10, 350),
(6896576430491143426, '#klein #foryou #fy #fyp #voorjou', 689, 14900, 36, 181),
(6896614154682125570, '#haikyu #anime #animeedit', 84500, 369700, 293, 9),
(6896759523105672449, 'Reply to @babyboy90kids Sid sriram voice ??❤️?#duet #funny #joke #tiktok #trending #royofficial #tiktoktamil #tiktoktamil', 1778, 28600, 55, 337),
(6896760414055435521, 'look nou #teamwatdenkenjij #fyp #fy #voorjoupagina #foryoupage #oneliners #selflove #container', 135700, 1100000, 4146, 469),
(6896784100976315650, '#horadearrasar', 7270, 26800, 221, 176),
(6896810007157935362, 'Odpowiedz użytk. @tedulrichsen  is this okay with you?? #behappy #positivevibesonly', 3836, 40100, 404, 109),
(6896885048063167745, 'if I had a verse on ‘therefore i am’ by @billieeilish ✨ #billieeilish #thereforeiambillieeilish #freestyle #rap #music #singing #billie', 6199, 50700, 288, 294),
(6896895803676200198, 'Love my shuffle fam ? @thefredster @vopflash #shuffle #shuffledance #fyp #foryoupage #makeitmini #OurType #VansCheckerboardDay', 3257, 65300, 13, 497),
(6896943341666127105, '#drag #dragqueen #draqmakeover #dragqueentransformation #dragtransformation #saturdaynight', 76600, 974900, 3254, 343),
(6896962911969758466, 'Hard work ?? #fyp #foryou #fy #freestylefootball #skills', 5480, 44700, 26, 256),
(6896965832933477638, 'I’m proud of you... #gym #workout #health #fitfam #gotothegym', 67400, 349800, 1687, 139),
(6896976403208604934, 'hi ?,  150k, thanks for your attention.diet plan on the way ?,see you in next video#sunset #workouts #fitness #muscle #training #foryoupage', 14400, 306300, 77, 495),
(6896980233421933829, 'Reply to @barryallen329 drum n bass levels! #level #beatbox #beatboxing #beatboxchallenge #drumandbass', 4310, 54500, 200, 349),
(6897005299798936834, 'MiG-31 #axaviacion #fyp #foryou #parati #transition #devilchallenge #foryoupage #russia #vladimirputin', 2409, 36000, 76, 442),
(6897011186349411586, 'Watch out tik tok. The leg day enforcement has arrived. #legday #enforcer #gym #law #dontletthisflop #injured', 2031, 56300, 84, 225),
(6897013361804938497, '??? #foryou #horse #fyp', 102300, 1300000, 329, 473),
(6897026408372096261, '#stitch with @blackbarbie098 #fyp #duet #video #explorepage #meme', 31900, 2800000, 518, 27),
(6897028685413633281, '“But all the bodybuilders did them for back” yes and they also drank their eggs #OurType #bodybuilder #fitness #workout #fyp #foryoupage #foryou', 5791, 111900, 511, 265),
(6897030279106530561, 'Hello imposter syndrome ? #phdlife #gradschool #phd #research', 12600, 99500, 133, 488),
(6897185128322174209, 'En spoor 3 & 6 trouwens ook niet? Wie wist dit? #fy #fyp #foryou #funny #amsterdam #train', 1620, 89200, 94, 32),
(6897200586106752258, 'Tag je 2e@ en 4e@ en zeg niks??‍♂️?insta:Sarkissakoo?#amongus #amongusfamily #game #dutch #tiktok #nederland #dutch #nederlands #voorjou #viraal', 30700, 161200, 827, 324),
(6897251091910528257, '#foryou #bf1 #mickeymouse', 1269, 226500, 29, 68),
(6897270609915661569, '❤️#foryou #foryoupage #voorjou #likeyourcutgee', 1882, 70800, 24, 248),
(6897328348192656641, 'Reply to @viljamit #crossfit #abs', 1493, 46100, 38, 92),
(6897348095844027649, 'Ответить пользователю @_chuya_28 @animkt #akatsuki #anime #naruto #akatsuki #recommendations #recommendationanime #animeed #kakashi #sasori #animeedit', 109700, 888300, 813, 286),
(6897397404421688578, '#animeedit #anime #аниме #edit #recommendations #luffy #ванпис #onepiece #bellaforteens', 1374, 6903, 29, 155),
(6897420741642390789, '#Programmers WHY ? ? #programming #hackaton #programmer #coder #codinglife #codingtiktok #javascript #techtok #techtokers #foryou #fyp', 2111, 97100, 37, 122),
(6897534534636604674, 'Cleaning day ❤️??‍♀️ #viral #cleaning #cleaningvideo #saturday #dutch', 247, 51900, 0, 360),
(6897535476454952194, 'PERPUSTAKAAN DI LUAR NEGERI GEDE DAN CANGGIH BANGET! ???? ig @jerhemynemo #belanda #indonesia #luarnegeri #fyp #fypindo #travel #perpustakaan #ldr', 6667, 60900, 35, 83),
(6897549344015371521, 'i hate my voice #fyp #JoyWithPret #billieeilish #lesbian #gaygirl #lgbt #foryoupage #viral #trend #xyzbca', 1222, 9282, 25, 339),
(6897593866283650306, 'Beide kanten krijg ik er niet in en dan lukt het opeens wel ? | Je 4e @ koopt een iPhone voor je! ? | #hetclubhuis #voorjou', 22400, 215500, 195, 435),
(6897625010668637441, '[ ALERTA DE TRANSICIONES ⚠️⚠️], etiqueta a tu 3er @ para que use el audio y muestre su talento ???? #transition #fyp #transitioner #peru #viral', 17800, 103000, 281, 61),
(6897643701426752770, '#anime #animeedit #naruto #narutoedit #sasuke #scqsquad #qssquad #recommendations #рекомендации', 20500, 100800, 527, 218),
(6897664007780568321, 'And then this happened (see previous vid) ? @debs_fl  #tiktokfriends #thirsttrap #missmarketing', 899, 35900, 88, 118),
(6897699752469695745, 'Standaard grappen? #appie #albertheijn #zelfscan #supermarkt #supermarkthumor', 7407, 78100, 41, 478),
(6897699853720161542, 'This has happened 6 times in the past 7 days ? #gamer #streamer #gaming #relatable', 19000, 194900, 801, 407),
(6897704483288124673, 'Watch till the end ? @snappersociety @kaliturbo', 70100, 582400, 490, 201),
(6897916296025885954, 'Old one ?✨ #draft #hairstyle #hairlook #hairtransformation #blondtobrown', 22400, 263400, 200, 239),
(6897931927257484545, 'Ben ik nu een echte TikTokker? #corvettecorvette #fyp #fy', 271500, 2800000, 8129, 429),
(6897940245858258177, 'Grosssss @walviswerner #moving #gross #clean #foryou #fy', 1176, 80600, 35, 126),
(6897961707491085569, 'ik wil nog niet weg... #ah #appiestrijders #fyyp', 4165, 70800, 134, 451),
(6898020845189434625, 'the transition took way too long lol ib: @azzakabazzas @jamescharles #thereforeiam #billieeilish #transition #makeup #trend #thereforeiambillieeilish', 81900, 632900, 2968, 371),
(6898022622110436609, 'Best Duo Of With McLaren ‘19 #f1 #formula1 #fy #fyp #fortoupage #foryou #redbull #redbullracing #maxverstappen #danielricciardo #mv33 #dr3', 3440, 47100, 7, 204),
(6898035916682710274, 'Un rival ?? #zerotwo #darlinginthefranxx #animeedit #waifu #zerotwoedits', 8606, 50900, 147, 114),
(6898056960432704770, '#horadearrasar', 12800, 95900, 289, 315),
(6898057246270328070, '#duet  #justcurious #single #over30 #dating #men #WhenWeWereYounger #NeedToKnow', 5207, 84100, 455, 193),
(6898062975186242817, 'Well here ya go folkes#beforeandafter #dbz #dbs #db #mui #goku#gaming #vegetoblue #animeedit #kamehameha #anime #t #yt #dragonballlegendssummons', 4736, 45200, 392, 484),
(6898107264805244162, 'Wait for the LOOP? #billieeilish #transition #makeuplook #easymakeup #positionsarianagrande #curlyhair #desi #indian @blushmarkofficial  #blushmark', 4435, 27800, 64, 214),
(6898178733824281861, '#duet with @tanisssssss bruh ? #transition #transitions #singing', 15400, 176500, 26, 382),
(6898194233778261250, '? #francisxvk #nederlands #foryou #mickeymouse #disney', 3919, 46700, 66, 78),
(6898295232723471617, 'Who needs a giraffe carwash? ??? #giraffe #carwash #beeksebergen #brabant #holland #netherlands #happy #nature #cute #animal #themepark #car #funny', 5398, 72500, 40, 496),
(6898328700476083457, 'Je gaat dit met je 1e@ en 3e@ delen?insta:Sarkissakoo?#tiktok #dutch #komedie #voorjou #viraal #voorjoupagina #grapje #ouders #nederland #lachen#nl', 31200, 223500, 170, 51),
(6898332186299337986, '#VeryBlackFriday #joywithpret #timewarpscan #justdancemoves #duet #asosdaytofright #equestrian #horse #4yp', 2231, 6703, 18, 237),
(6898350532415540482, '#soundwavestattoo #spotifytattoo #tattoo #amsterdam #tiktok #amsterdamtattoo #spotify #shocking #tattooartist #foryoupage #coupletattoo', 5483, 236000, 100, 261),
(6898363189080214786, 'Antwoorden aan @www.lisa.n1 Wat willen jullie de volgende x in blackwhite challenge zien? ??? #procreate #tekenen #blackwhitechallenge #draw #art', 17600, 99900, 454, 227),
(6898373135121321218, 'Weriduwo do hamayi zey baelna eina newryo#tiktoktraditions #????????????????eritreangirlsfrikangirl', 3307, 47200, 78, 41),
(6898394169249762562, 'MARQUE SUAS AMIGAS PARA FAZER TAMBÉM? #transition #criatividade #celular #flor #casamento #vestido #photography #wedding #viral #sabato #bota', 3402, 38100, 26, 450),
(6898415159249816833, 'Sanity during lockdown = priceless ??#homegym  Reply to @hotmickeychocolate', 937, 27200, 12, 406),
(6898451979207478533, '#greenscreen I had fun with this one lol #beatbox #beatboxing #swissbeatbox #spencerx #codfish #accentchallenge #meme #fyp #esh', 4854, 50000, 35, 357),
(6898452394418523398, 'Wild vibin @keepnaturewild  #keepnaturewild #ad', 37100, 723100, 533, 495),
(6898499724245093633, 'Horses deserve to be treated with respect, not forced to carry tourists through the streets  #vegan #horse #animalrights #horsecarriage', 498, 31700, 329, 366),
(6898523009406045445, 'Reply to @adamcalhoun1 This has been fun ?', 13300, 64400, 569, 213),
(6898598426590678273, 'Als je een certificaat ontvangt!?? #Leescoördinator #ChantalJanzen #TheVoiceOfHolland @chantaljanzen.official #Trend #Keigoed @teamcjanzen #Fy #Fyp', 3376, 52400, 13, 68),
(6898613799402753281, '#kane #VeryBlackFriday #wwe #viral #memories #video #undertaker #fyp #goviral ???', 2405, 96400, 48, 352),
(6898628429298568450, '#excavator#jurassicpark', 2488, 67800, 39, 345),
(6898642858484567297, 'Lewis was not amused by Max back then ? #hamilton #verstappen #bahraingp #f1 #formula1 #racing #ziggosport', 16400, 251500, 106, 379),
(6898699405898059010, 'Iphone bend test? #tiktok #viral #fyp #iphone #test #bend', 936200, 15300000, 27100, 30),
(6898706823541542146, 'Reply to @coolkid0183 #greenscreenvideo - it’s probably half decent. I’m more explosive than most expect. #vertical #jump #hops #athlete', 4625, 51500, 131, 202),
(6898721943978036481, 'regretss ? #fyp #foryou #curls', 10000, 72200, 274, 240),
(6898757137154051330, '#foryou #fyp #voorjou #wok #eten #koken #cooking #fypシ #haagschekeuken #foodtiktok #tiktokcooks #chefsontiktok #fireworks2020 #pumpupthejam #dutch', 1657, 40500, 143, 186),
(6898791307016146177, 'Hier geloven deze meiden in: geesten  #قران #nederland #koran #trending #arnhem #trends #foryou #tik #trending #foryoupage', 7070, 97900, 222, 214),
(6898859679217143046, 'this is my favorite tiktok dance #tiktok #dance #pumpupthejam', 71000, 675400, 256, 448),
(6899001802130197761, 'its a lifestyle. Who can relate? #morning #working #riseandshine #lifestyle #dailyroutine', 1763, 31300, 68, 470),
(6899086619228376321, 'Grim the butt shaking horse #waitforit #horse #barnanimals #farmlife #equestrian #fyp #foryoupage #twerking #funnyanimals', 1466, 102800, 23, 118),
(6899104646543969537, 'In LOVE with this VIEW ? IG: thefashionjogger #running #viral #fitgirl #view', 2164, 42300, 75, 131),
(6899108523091823874, '#fyp', 1269, 259400, 10, 82),
(6899109657395219717, '@realalliwilbourn1', 11300, 60700, 231, 245),
(6899113568092949761, 'Tell me about you? #petyyyyyy #puppy #cute', 214700, 1200000, 2694, 390),
(6899116261746281730, 'The collab you didn’t know you needed, myself and @this_esme ??? #horserider #horsegirl #equestrian #equestriangirl #riding #horse', 58900, 309000, 874, 161),
(6899128133430037765, '#fyp #foryou #gainz #broscience #bro #fitness #brosciencelife #gym #foryoupage', 6289, 61100, 318, 41),
(6899136673347685634, 'Thank you so much for all the support!!', 86000, 776800, 421, 149),
(6899141975178480898, 'wanneer we weer uit mogen gaan ??#fy', 4386, 114000, 68, 239),
(6899164169870773505, 'Oops ? @b.carr #OhNo', 68100, 1200000, 1342, 392),
(6899171884571626753, 'Kakashi mi fav?? { #kakashi #kakashihatake #naruto #anime #weeb #edit #animeedit #otaku #funny #xyzbca #fyp #fypage }', 103900, 351700, 758, 47),
(6899346784921849090, 'РЕАКЦИИ НА ТАНЦЫ В ТЦ ? Какой у вас город ? ? #tuzelity #shuffle', 219100, 2100000, 2352, 154),
(6899411373265063170, 'Dc- @enola.bedard #foryou #dance #viral', 2287, 28700, 63, 199),
(6899411430660001026, 'De qual gostas mais? Good guy ? or Bad guy? ? #linhacongelante #timewarpscan #mirror #transition #dlaciebie #reflection #kapinha #sike #spooky #fyp', 3997, 34700, 23, 327),
(6899418795987717377, '? #transition #chile #tatuaje #lesbians #loveislove #love #dúo #tattoo #fyp #?️‍? #lesbian #parati #lgbt #lgbtq #girl #trend', 3090, 36300, 89, 249),
(6899441890677116162, 'Dit filter laat zien op wie ik lijk.. #shapeshifter #shapeshifting @bramkriktok', 14600, 167500, 344, 7),
(6899443808321277185, '#الحق #مسيحين #الانحيل #يسوع #محبه #bijbel #religion #respect #اسلام #christelijk #middenoosten #سورايا_العراق #الكتاب المقدس', 561, 9843, 1090, 117),
(6899462833088531714, 'Which colours your favourite?? ❤️???  #beanie #VeryBlackFriday #gloryxv #fyp #xybca #blackfriday #4yp #supportsmallbusiness #transition #colourpop', 5209, 115600, 169, 125),
(6899477494659960066, '13 KM RUN with 10x1min fast + 1min slow? from 3’:40/km to 4’:35”/km ? IG: thefashionjogger #workout #fit #sporty #running', 3218, 52700, 172, 24),
(6899489414460837121, 'Based on a true story ?.                                  #fy #fyp #foryoupage #foryou', 2266, 41800, 25, 151),
(6899497158769200385, 'Bestaat dit ? ?? #fy #fyp #foryoupage #foryou #dutch #trouwen', 1051, 35200, 218, 284),
(6899499316600147201, 'Waarheid... #fy #foryou #voorjou #funny #netherlands #viraal', 29500, 190100, 841, 471),
(6899510560556158209, 'Wasn’t exactly the same dance but close enough ? dc: @notstoud_ @zacklugo @brandonmundine #dance', 3564, 28300, 71, 298),
(6899519135198383361, 'Moet ik dit nog een keer proberen? ?? #foryou #dutch #foryoupage #fy #nederlands #fyp', 11700, 175100, 77, 487),
(6899555224801791234, '#horadearrasar #fy #foryou #f #sentanofazedeiro', 3434, 33800, 82, 153),
(6899557108593773829, 'Reply to @frosty6892 Skål #gotothegym #viking #vikingtiktok #thor #mjolnir #fitfam #gymtime #workout', 46500, 270600, 902, 294),
(6899619652402449670, 'How To Look More Muscular In Your T-Shirt #tshirt #mensstyle', 47300, 1100000, 528, 372),
(6899676363188473093, '#fyp #dancechallenge #playstation #addisonrae #charlidamelio #billieeilish #tatemcrae #arianagrande #dualipa #dixiedamelio #madisonbeer', 114600, 478400, 5892, 413),
(6899706911059397893, '#fyp #foryou #dancing #tiktokteacher #learn', 82200, 1500000, 511, 179),
(6899727630472383746, 'අනුන් දාලා විසි කරපුවා...අනේ මන්දා...#foryoupage', 507, 7037, 23, 284),
(6899729878560656641, 'Testing vfx #demonslayeredit #kimetsunoyaiba #demonslayer #amv_anime #amv #kimetsunoyaibaedit #animeedit #tanjiro #fyp #foryoupage', 8243, 30500, 315, 468),
(6899736406495677697, 'blijf vechten voor onze vrijheid! #vuurwerkverbod #mondkapjesplicht #langefrans #paulelstak @tisjeboyjay', 1397, 44600, 297, 321),
(6899737900120935681, '', 1698, 44500, 5, 451),
(6899784988095499522, 'Dubai here I come ?.', 1829, 63200, 371, 51),
(6899791521470778625, 'Connected Equestrian girls Dancing into the weekend #equestrian #equestriangirls #horse #shelookssoperfectchallenge #americanapperal #reiner #horse', 4171, 28700, 31, 182),
(6899811757322194177, '??? #daniilkvyat #tororosso #f1 #formula1 #fy #foryou', 5161, 58300, 51, 166),
(6899842091749215489, '#exvriend #relatie #relatieproblemen #herkenbaar #grappig #voorjoupagina #grappigevideos #grappigefilmpjes #relatietest #exvriendjes #exen #humor #fyp', 2685, 67100, 48, 473),
(6899843622355750145, 'Me jogou no lixo e a amiguinha reciclou ?‍♂️??// insta : cleisinho029 ?// #horadearrasar #foryoupage #foryou #mejogounolixoeoamiguinhoreciclo', 21400, 128200, 180, 196),
(6899845326161595649, 'My Deadlift Journey??. #deadlift #deadlifts #deadliftchallenge #gym #gymlover #bodybuilding #powerlifting #motivation #workout #natural #fy #back', 4775, 69400, 265, 146),
(6899852150793358594, 'But who let the dogs out? #fyp #fy #f1 #f1tiktok #vettel #wholetthedogsout', 15000, 249400, 50, 327),
(6899861794760690945, '12 KM RUN ❤️ ARE YOU READY? IG: thefashionjogger #running #workout #fyp', 4774, 113400, 255, 92),
(6899867641570135302, 'Back day tips!', 3200, 71000, 36, 234),
(6899884198279073025, 'O mundo girou     #horadearrasar #fy #fyp #foryou #geraçãotiktok #trans #foryoupage #pravoce  #acre #homemtrans #lgbtqi #omundogirou  #viral', 218600, 1900000, 2397, 430),
(6899884609530612993, '#horadearrasar Éo REI né vida ?', 7436, 62900, 68, 299),
(6899964626478320902, 'People who workout, I know you can relate ? Please keep me in your prayers #fitness #gym #workout #leg day', 11800, 87400, 476, 10),
(6899978363759267073, '#fyp #foryoupage #xyzbca #funny #viral #girls #ontario', 6289, 86900, 66, 119),
(6900050539141270785, 'In a Club в Пятером ?? Пишите флаг вашей  страны в комментариях ?️ #tuzelity #shuffle', 148800, 1500000, 2044, 468),
(6900076260693724417, '#ASOSinthebag #trending #EXTRADateReady #roblox #wwe #asosintheba #gym #duisburg #duisburg #ronaldo #workout #tiktokindia #bodybuilder #ronaldo #worko', 1567, 107500, 44, 27),
(6900102046876208386, '? of ? ? #voorjou #modelfood #foryou #fyp #model', 4220, 38400, 44, 33),
(6900178346919857410, 'фанаты сакуры зайдите в комментарий ✨#sakura #sakuraharuno #shannaroo #edit #animeedit #fyp #fypシ #recommendations #foryou #shannaro #sakurabest', 7320, 29000, 424, 401),
(6900185373540961537, 'Naast levenslange straf zijn er ook landen die de doodstraf uitvoeren. En dat nog in 2020..? #world #facts #list #gaytiktok #loveislove', 3118, 31100, 406, 41),
(6900196713852701954, 'قال و زوجوه بيعقل شايف الوضع عكس جانن هاد  بكري #شلة_هولندا #kat #قط', 7187, 72100, 160, 230),
(6900197975818095873, 'comment what I should cover next! :) #fy #tiktokviral #viralsinger #alabamaarkansas #bekind #lifeathome', 6270, 52700, 226, 28),
(6900235731059494145, 'Give it a try ? #crossfit #cardio #training #crossfitworkout', 1086, 27900, 7, 172),
(6900256765527477506, 'Wat een top nummer ??? #francisxvk #foryou #geefjeover #geefjehelemaal #pink', 2384, 34300, 60, 111),
(6900302214896618757, 'Reply to @boiledleche like and comment if you want me make more videos about scummy things gnc does #gnc #fyp #gym #fitness #muscle #SmallBusiness', 5328, 53800, 106, 81),
(6900344945777872133, '#fancy #fancypants #fancyaudio', 988, 65200, 14, 390),
(6900396011722689793, 'Proyecto HR Otro video de 1 millón!!??????#architecture #construction #engineer #home #luxury #transition #interesting #foryoupage #foryou', 7064, 70600, 102, 495),
(6900478499933408513, 'Factory days #redbull #redbullracing #f1 #formula1 #fy #fyp #foryou #foryoupage #viral #tiktok #xyzbca', 21700, 292500, 78, 383),
(6900492821862599938, 'Wie herinnert zich dit nummer nog ? #jumpstyle #2007 #voorjou #jumpen #xyzbca #vooru #vroeger #foryou #jeugdsentiment #fypシ #fyp #jeckyllandhyde #fy #', 26400, 352200, 977, 111),
(6900563923892800769, 'I’ll just leave it here lol #quarantinemood #fyp #fy #foryoupage #songwriting', 20200, 87700, 333, 463),
(6900566632859585793, 'Tagg je tiktok maatje☺️ #fy #fyp #foryoupage #ruinourfriendship #loversinstead', 74300, 622700, 1440, 482),
(6900606242016840962, 'BLUB ?', 3500000, 64500000, 23100, 114),
(6900621838653869313, 'Heeft ooit iemand jou hard gebroken...?', 1723, 72300, 79, 336),
(6900632361621392642, '???#شلة_هولندا #سوريا #kat #foryou', 3077, 40900, 42, 395),
(6900701600440978694, 'The people’s champ runs the house #therock #wwe #fyp #fypシ', 2428, 65200, 33, 89),
(6900735754700459270, 'Reply to @jaredwiggins2832 #foryoupage #fyp #foryou #powerlifting #bodybuilding #deadlift #fitness #workout #fittok #powertok', 9504, 78300, 112, 393),
(6900916467936529666, 'Jij en je 2e @ mogen bij ons in het VibeHouse op bezoek komen... ga je??', 34900, 194600, 6423, 25),
(6900932062853893378, '?? #totowolff #mercedes #f1 #formula1 #fy #foryou', 3412, 41200, 36, 217),
(6900948690186407170, 'tag de gierigaard van je vriendengroep! #ruinourfriendship #loversinstead #friendship #friends #dutch #funny', 10700, 90700, 209, 12),
(6900949746962238721, 'Antwoorden aan @x.roosf.10 De 5e in je @ wil in een circus werken ? #blackwhite #clown #featureme #feature #famous #4up #fy #4u #drawing #procreate', 36300, 260800, 1099, 228),
(6900951421374516481, '#horadearrasar', 11000, 150100, 40, 261),
(6901020148426099969, '#fypシ #amv #anime #animation #edit #haikyuu #hinatashoyo #weeb #animeedit', 15200, 62300, 126, 332),
(6901026135119760642, '#drift #fyp', 21800, 267300, 80, 376),
(6901063021955681541, 'Reply to @thatskie84 Here you go. I do have tutorial for each ones. So there are 4 steps you’ll need to practice.', 5612, 139900, 148, 41),
(6901122865928670466, '#onepiece #luffy #edit #recommendations #animeedit #ванпис #аниме #БезОстатка', 34300, 346600, 183, 418),
(6901155395100806401, 'She can have all the horses she wants?? #horse #horses #animals #equestrian #girlfriend #fyp #foryou #horsegirl', 23900, 105700, 171, 7),
(6901195423273291009, 'That’s it. ? #horse#horsegirl#equestrian#equestrianlife#horsememes#horsesoftiktok', 42600, 132800, 742, 274),
(6901216725325384961, '#БезОстатка #football #rec #krotik26 #recommendations #рек #футбол #рекомендации', 1335, 12800, 32, 328),
(6901216792186785025, 'laat je gaaaannnn #voorjou #foryou #gioswikkers #alsjehandoverjekontglijd #laatjegaan #cringe', 116200, 1600000, 4367, 301),
(6901276149175815426, 'It happens sometimes...##fypシ #fy #fyp #areyoudumb', 2322, 94300, 45, 444),
(6901276629268581633, '✨Kunst✨ #sorry #teletubbies #help', 15500, 494800, 214, 32),
(6901321371113032962, 'Oeps, het bord stond nog aan! #areyoudumb #meester #foryou #school #fyp #docent #leerling', 11300, 155600, 127, 184),
(6901321675988651265, 'Deze video werd verwijderd door tiktok.... FOR WHAT?', 29000, 291100, 436, 425),
(6901322841849974017, 'You want this...try this ?? #wantthischallenge #fyp #foryou #fitness', 590400, 6700000, 2976, 2),
(6901344153343364354, '#ahmad_star_1 #vs شو خترتو ?', 4147, 18000, 1756, 336),
(6901356285833252098, 'Pure waarheid! Laat je nooit afleiden van je doelen & ga er met de volle 100% voor ? #motivation #goals #viralvideo #stop #positivity #fyp #trend', 2308, 31000, 97, 129),
(6901387960424484097, 'i got this from @thisusernameisrare #fyp #viral', 102800, 889700, 745, 36),
(6901420903322635525, 'Reply to @chancesonnier97 just a little knowledge for you ? #army #armyreserve #fyp #miltok #usarmy #lildanceydance', 5804, 65500, 721, 49),
(6901458108372077826, '?‍♀️ #horse #ohno #royalwinterfair #horseshow #equitation #fyp #disqualified', 7986, 58500, 165, 474),
(6901592880129805570, 'whoops it was too fizzy ?', 13100, 311800, 1191, 419),
(6901655785407909121, 'Очень сильный момент #naruto  #sasuke #sakura #anime #animeedit #recommendations #fyp', 112600, 540800, 1179, 506),
(6901670973137898753, 'heb nu ong 100+ draften maar tis gelukt hoor pfoe #foryou #fy #netherlands !!', 15900, 196900, 176, 458),
(6901681280128208130, '#jhope #junghoseok #ПорадуйМаму #검둥개 #bts_official_bighit #recommendations #방탄소년단 #глобальныерекомендации #р_е_к_о_м_и_н_д_а_ц_и_и #horse', 6025, 18100, 217, 117),
(6901719665584672005, 'Reply to @playboymango I’ve gotten some complaints #warrantofficer #army #miltok #chieftok #chief #usarmy #usmilitary #fyp #comment #like #follow', 13000, 248000, 865, 252),
(6901723835310116101, 'If you don’t know me guess what sport I play.. I’m trying to see something? #foryou', 5021, 62000, 549, 311),
(6901787858395286786, '#cartiktok #bmw', 21600, 224000, 376, 406),
(6901795238021696769, '#duet met @comet_fire', 179600, 1100000, 6389, 318),
(6901798489315921158, '', 4411, 72500, 35, 3),
(6901815472178646274, 'Novia de alquiler. ♥️ #kanojookarishimasu #rentagirlfriend #waifu #kawaii #otaku #anime #animeedit #girlfriend', 61600, 345000, 972, 37),
(6901832410091064582, '#duet with @qneqs I had to jump on this ? #CashAppInBio #miltok #army #navy #marines #airforce #fyp #foryoupage #trending #zyxcba #lmao #hi', 9048, 80500, 52, 260),
(6901833660224326914, 'Never satisfied... #fitness #fyp #gym #viral #fitnesschallenge', 700, 35800, 68, 400),
(6901972269636078850, 'Should this have been a fRed card? ?? #fred #paredes #manunited #psg #ucl #ziggosport', 3169, 37900, 42, 277),
(6901995461238934785, 'Did you expact that? ? #foryoupage #trending #fyp #Taekwondo #fitness #sport', 16400, 212500, 286, 473),
(6902010787800370433, '#drawing', 822200, 12900000, 1960, 506),
(6902015702576762113, '#fyp #dutch #nederland #voorjou #snapchat #filter #camera', 4710, 40200, 52, 32),
(6902038249573731586, '#horadearrasar #amizadeverdadeira', 7575, 67200, 93, 443),
(6902048025334615297, 'Find this fiesta at Mama Kelly in Amsterdam✨?? seriously though: Tacos or Burritos?? #foodie #foodlover  #tacos #mexicanfood #amsterdamlocal #nl', 7222, 76400, 287, 29),
(6902048470417378561, 'Hoor jij ze allemaal? ?⚡️', 36500, 312600, 994, 272),
(6902084818440408321, 'Облом века ? #anime #boruto #naruto #konohomaru #recommendations #anime #animeedit #ПорадуйМаму #безостатка #можноврек #рекомендации', 7001, 56700, 35, 20),
(6902096916776209665, '#hirugashi#sad#anime#animeedit#animes#viral#tendencia#fyp#parati#protec#love#amor#otaku', 39200, 230700, 250, 368),
(6902103334392450306, 'Reply to @brandondeee - I’m ready when you are sweetheart. #anytime #letsdance #squats #gym #workout #worldstar', 2232, 47900, 27, 504),
(6902115301094116610, '#nederland #vervelendd #nederlandsetiktokkers #funny #fyp #foryoupage #voorjoupagina #lgbt #lesbian', 16700, 94200, 504, 497),
(6902294648451075330, '#standwithkashmir #foryou #foryoupage #featureme #outfits #slowmo #transition', 168, 6046, 14, 292),
(6902396851106925825, 'Вот и туториал ✔️ #туториал #аниме #наруто #naruto #anime #animeedit #рек #limonka_pechenka #ПорадуйМаму #ДавайБросать #рекомендации', 712, 6458, 24, 431),
(6902406836176162049, 'Hey @netflix you gave us Emily in Paris, here’s a newer idea #europe #america #emilyinparis #americanstory #fyp #newyork #losangeles', 3139, 23400, 135, 89),
(6902412854188674306, 'I’m the combination #fyp #foryou #fy #voorjou #voorjoupagina #viral', 6454, 63200, 107, 79),
(6902420063882628357, '#duet w/ @janickthibault / #africa #toto #80s #fyp #foryoupage #foryou #theataris #quietdrive #popgoespunk #punkrock #poppunk #cover #zyxcba #drummer', 692300, 3500000, 10700, 40);
INSERT INTO `short_videos` (`id`, `text`, `tymCount`, `playCount`, `commentCount`, `user_id`) VALUES
(6902424258006273281, 'Waarom zijn gymdocenten zo? (Insta: larsspeters) || #foryou #voorjou #dutch #school #docent #fyp #gym #bruh #gymdocent', 86000, 590600, 2875, 386),
(6902436491536944386, 'WEL EENS PIJN GEHAD DAT PLOTSELING VERDWEEN? #pijn #ziekenhuis #voorjou #middelbare #sporten #blessure #jouwverhaal #verhalen', 5812, 43500, 86, 228),
(6902451462962547969, '#dilemma #vlees okee laat het allemaal even weten ik weet t namenlijk nie meer #fy #dutch', 678, 27700, 329, 426),
(6902459846260559106, 'Wait till the end?? IG: miafitness_sw #winterdiy #lernenmittiktok #gymnasticschallenge #backmuscle #strong #crush #mistake #fitgirl #forYou', 2029, 26900, 27, 281),
(6902476909045615877, 'any questions? #gotothegym #flexfroday #gymtime #workout #fitfam #swolefam #workout #homegym', 37200, 262600, 1280, 314),
(6902512873109605634, 'Allebei lekker geshopt bij de Hunkemöller, dit was het eindresultaat #gifts #hunkemöller', 8232, 212700, 35, 39),
(6902555378651794690, '#horadearrasar #aquinao #sexta #sextou #agrobaby #agroboy #caipira #roça #sertanejoraiz #bebestiktoks #agro #trator #fyp', 102000, 1100000, 644, 54),
(6902680579989359874, 'Wanneer kwam jij erachter? ?‍♂️ #rijst #lifehack #foodhack', 8990, 246400, 380, 86),
(6902724999757532418, '??#fyp#foryou', 161200, 3600000, 0, 387),
(6902725059429911809, 'بكري ماهمو الا مرتو. والاكل ??ياخسارة  الشكلاطات بس', 11200, 124000, 213, 341),
(6902725442260749570, 'werken is belangrijk #fyp #fy #KerstInHuis #viraal #foryou #tenbrinke #werk #voorjou #callanambulancebutnotforme', 4193, 127200, 13, 66),
(6902733196811635969, 'Antwoorden aan @eefje_kwz  even goed nadenken #fyp #foryou #fy #sandroscalia1999 #jokes', 4568, 82700, 91, 224),
(6902751117805899009, 'Iknow maagdenvlies bestaat niet? #foryou #fyp #foryoupage #fy', 2080, 39300, 19, 223),
(6902810912416189701, '245lbs ?? Tag your strongest friends! Duet this with your best attempts ?? @sumnerhaye where you at? #deads #deadlift @blackstonelabsofficial', 7367, 133900, 387, 507),
(6902819837345533186, '', 12900, 94900, 143, 188),
(6902823504383659266, 'Vandaag alle muren in ons huis geverfd! ?️?', 651, 81600, 42, 133),
(6902938842874121474, '#duet with @asleep.emma #greenscreen #foryoupage #foryou #fyp #wwe', 13500, 143700, 564, 449),
(6902941615376157954, '#giojade #voorjou', 30600, 360000, 248, 3),
(6903050763124215042, '#horadearrasar #ambev #tiktok #brahma #horadearrasar', 7446, 48800, 327, 207),
(6903061991225691394, '', 36400, 1700000, 370, 483),
(6903091992268459265, '#duet with @big_shiwa  අලුත් එක Follow කරන්ඩෝ @pawandissanayake7 #fyp', 833, 9373, 6, 285),
(6903134814715661570, 'Bourtange, the Netherlands ?? #travel #traveldiaries #fyp #foryou #dreamy #christmas', 11200, 139500, 370, 225),
(6903157559578987777, 'I’m in love with these pants??#upsidedownamsterdam #netherlands #KerstInHuis #foryou #fyp #dance #indonesia', 5320, 47400, 50, 433),
(6903178284012522754, 'He’s the cutest omg #equestrian #horse #dressage #horserider #horseriding #stallion #blackbeauty', 73300, 1200000, 583, 238),
(6903188918078852354, 'Miren a los señores de atrás JAJJAA #mallplaza #baile #siguemeytesigo #parati #viral #fyp', 5611, 63800, 184, 464),
(6903190549960920321, 'Cute Dutch sounds part 2 @rob.morrisw @ricmorrisw @dominiquewienk ??? #huphollandhup #livinginholland #dutch #languages #venezolanosenholanda', 7418, 80800, 108, 124),
(6903247940127640834, 'I feel so sorry for you George? #georgerussell #mercedes #f1 #formula1 #fy #foryou', 25700, 197200, 414, 451),
(6903317821770484994, 'Missing this weather? @katelyn_thompson_ #fyp #gymnastics #tumbling #cheer #flips', 48100, 511200, 460, 509),
(6903324940011916546, 'Reply to @.tendou_nugget5 train ride with #tendou #haikyuu#haikyuuedit#anime#animeedit#livewallpaper#animelivewallpaper#livewallpaperanime', 46500, 125400, 1035, 491),
(6903508885970193666, 'Reply to @lupsidash train ride with #kenma #haikyuu#haikyuuedit#anime#animeedit#livewallpaper#animelivewallpaper#livewallpaperanime', 129200, 340500, 2629, 272),
(6903527132979318018, 'شكراااااال كتييير بحبيبكم والله ???#جيش_بكري #اكسبلورر #هولندا #السعودية?? #سوريا?? #العراقي?? #فلسطين  وجميع المتابعين ربي  يسعدكم?', 3755, 33500, 55, 429),
(6903551807230872833, '#duet with @eorth78 Lena is not impressed ? #horse #equestrian #cheval #farmlife #fyp #foryoupage', 6144, 25000, 25, 279),
(6903552918159379713, 'Koe ? #koe #mindfuck #snelheid #jajajaja #ja #lachen #dochter #queensover30 #queensonfyp @marrrittt', 5626, 126400, 48, 288),
(6903574645899939074, 'For the ones who don’t know how to do this?? #foryou #fyp #outofbody #imaghost #boo dc: @.crapper', 14400, 208900, 77, 432),
(6903579807641095430, 'Reply to @mikeymousehouseboi', 5753, 89100, 568, 388),
(6903585019017645314, 'Vers uit mijn nieuwe video: 3 Beste Borst Oefeningen??', 5606, 81000, 30, 502),
(6903653180282817794, 'FR ! Lol#foryou #dunkin #charli #viral', 32000, 161400, 1600, 46),
(6903703219923340550, '@erin.66kg we’re tired lmao #foryoupage #fyp #foryou #powerlifting #bodybuilding #deadlift #fitness #workout #fittok #powertok', 14600, 114400, 92, 148),
(6903738407227297026, 'උස්සපු එකාව අහු උනා', 1525, 10400, 93, 102),
(6903809474268646658, 'Ответить пользователю @anwexte вот богиня темари) #naruto #temari #shikamaru #gaara #anime #animeedit #recommendations #fyp', 20700, 102400, 86, 505),
(6903854177072499969, 'Ruut doet mee aan de hype ? #foryou #fyp #voorjou #voorjoupagina #foryoupage', 2497, 45500, 28, 122),
(6903867852672077057, 'Based on a true story. #hijab #muslimtiktok #inclusion', 3080, 39900, 32, 32),
(6903898067490163969, 'So naar @royalistiq Sws! Uitbrengen?? #fy #fyp #voorjou #zingen #royalistiq', 23200, 194200, 2104, 50),
(6903908757386841346, 'Missen jullie de feesten ook zo? (Insta: larsspeters) || #foryou #voorjou #dutch #school #party #toets #tentamen #fyp #sad #single', 3725, 32000, 26, 204),
(6903923265945849089, '', 41500, 382100, 368, 355),
(6903924035164376321, 'What kind of fruit is this? ? @heidisdream', 36100, 762500, 1108, 467),
(6903934953705245954, 'Reply to @g3ck059 can also be done with bands #fitness #exercise #muscle #chest #workout #pecs', 3067, 26600, 78, 101),
(6903940573091187973, '#stitch with @midwestswingin #ThinkingAbout #UpTheBeat #fyp #fypシ #foryoupage', 15000, 79500, 276, 159),
(6903949620775324930, 'ig I\'m wrong then #spiderman #cosplay #ThinkingAbout #HouseTour', 4967, 47200, 46, 477),
(6903954146630569217, 'if you know you know #fyp #voorjou #dutch', 5047, 107600, 61, 314),
(6903969832719453445, 'Draft', 10600, 141500, 161, 144),
(6903974884154608897, 'Uuuuhhhh.... #foryou #fy', 1089, 32300, 6, 463),
(6903990740993477894, 'Finals are over and the only thing I wanna do is make tik toks but I lack the dancing/rhythm part :( #sad #UpTheBeat', 7940, 113300, 91, 113),
(6903994055907118338, 'It\'s always the most difficult workout ?', 1339, 28200, 26, 362),
(6904037272048389378, '#parati #foryou #dakaretaiotoko #videoedit #yaoiedit #bl #animeedit #fujoshi #fudanshi', 63600, 222000, 2702, 120),
(6904040351607147781, 'Special 1M followers video! “He’s a Pirate” ft. my roommate Jakob ?‍☠️?? #rimbatubes #piratesofthecaribbean', 84500, 694100, 988, 444),
(6904066579655396610, '#faloow #emyemeralda #foryou habar nu am ce mi-o venit aici ??????', 2698, 48600, 185, 108),
(6904096377152785665, 'Like and follow for part two | Discord link in bio #greenscreenvideo #ThinkingAbout #anime #fyp #animeedit', 132900, 611100, 2937, 371),
(6904148139716955394, 'Reply to @mai.san.tiktok___??#nezuko #amv #otaku_forever #animeedit #otaku_forever', 40900, 309300, 417, 290),
(6904174259589958913, 'Altijd t zelfde gezeik #fypage #foryou #fyp #trucks #tiktoktruckers #50tonarmy?', 4634, 92000, 1, 266),
(6904182931909004545, 'Deze video is voor een kleine groep mensen bedoeld #zopepijn #fyp #fa2gang #haat #feiten', 4221, 37500, 77, 63),
(6904227603067047170, 'Antwoorden aan @nitro_turbo #fy #xcbyza #house #1k #dollar #euro #google #googlemaps #maps #i #know #wherelive #hehe #come #andtry #fyp #fypシ #fya', 2008, 99700, 678, 255),
(6904236597529595138, 'Haring ver van t’ mes #hollandsroem #haring #holland #fypシ #guiltypleasure #lekkerneef', 262, 40300, 13, 494),
(6904238654751870209, 'Рукожопы#встилеRIO #рекомендации #рек #стройка #recommendations #рукожоп #стиральнаямашина #стиралка', 28000, 2500000, 668, 452),
(6904256013650758914, 'Storytime #vjp #voorjou #fyp #foryou #dutch #tiktoknl #vriendin #storytime #viral #xyzbca', 22100, 253000, 179, 357),
(6904264506998951169, '??| Elke school heeft zo’n docent.. #fy #fyp #foryoupage #KerstInHuis #school #teacher', 9280, 144100, 53, 422),
(6904271117783928065, 'Who say my Pokémon boxers at the end?! ??? #parkour #fail #ohno #spiderman #cosplay #ohnono', 6834, 32800, 76, 319),
(6904279792388984066, 'Our #Colombian ⭐️ is back! ? #Sinisterra #Feyenoord #Soccer #Training #FY #Celebrate #Football #ForYouPage', 9099, 103000, 124, 492),
(6904294597862755585, '#roadmarking #work #satisfying #roadmarker #signalisation #white #fyp', 4075, 358500, 22, 206),
(6904335595301080325, 'Any request? ? #wantthischallenge #gymshark #fitness #homeworkout', 28500, 346100, 363, 252),
(6904338682598264069, 'How did he do this? ? #how #transition #howdidhedothat #HolidayCrafts', 27700, 228100, 236, 174),
(6904344469747911942, '5 months later and I finally get to go home!!! #finals #airforce #college', 12400, 82300, 131, 431),
(6904359798809054470, 'sheath cleaning ain’t it #fyp #horse #gelding #barrelracer #rodelife', 21300, 135100, 603, 443),
(6904384164641000705, 'Dat laatste pakt me ??', 1112, 69700, 107, 186),
(6904391764824608005, '#gymlife', 13500, 76600, 168, 444),
(6904391934735944961, 'SÍGUENOS EN INSTA:DulcesGemelas? #gemelas #destacame #trend #fyp #challenge #dancechallenge #baile #twins #outfits #viral #dance #funny', 17200, 215600, 80, 27),
(6904396013923060994, 'Bekijk t altijd van de positieve kant hé !! #foryou #fyp #KerstInHuis', 20500, 190200, 256, 479),
(6904405263386758402, '', 428, 8916, 4, 193),
(6904422505843363077, 'one person asked for another one of these, don’t hate me ?  #fyp #foryoupage #hoodbaby #ThinkingAbout', 28100, 178400, 488, 458),
(6904429617021570306, 'Para los que querían el de BATMAN? #christianbale #michaelkeaton #benaffleck  #batman #edit #transition #paratupagina #viralll #aprendeentiktok', 14000, 75100, 159, 369),
(6904496575930731778, '', 16100, 154100, 318, 284),
(6904536120755768578, '#worldcup #laliga #football #premierleague', 321900, 11200000, 527, 209),
(6904610600870038786, '??????', 9303, 49600, 861, 22),
(6904612666099305729, 'Можно в рек пожалуйста) #naruto #sasuke #narutouzumaki #sasukeuchiha #anime #animeedit #recommendations #fyp', 33400, 143700, 173, 370),
(6904638377530772741, '#horadearrasar', 103000, 791000, 0, 401),
(6904645678018923777, '#الحق #مسيحين #يسوع #الانحيل #محبه #يوم الحساب #القيامة#bijbel #respect #christelijk', 732, 23200, 1206, 155),
(6904650067999821057, 'Thai Airways A380 plays Jingle Bells.  We wish you a wonderful christmas time. #jinglebells #a380 #thaiairways  #miniaturwunderland #christmasmusic', 759200, 7900000, 4100, 83),
(6904651986059218178, '#duet met @viraalniels dit was mijn reachtie op dit filmpje?????instagram-lisanaomix#foryoupage #fypage #viral #duet #fyp', 2163, 35100, 22, 287),
(6904653648349957377, 'Neymar #11 #встилеRIO #rec #recommendations #рек #футбол #рекомендации #неймар #neymar #barcelona', 250, 10600, 1, 338),
(6904657340679654661, '#horadearrasar', 5046, 45400, 59, 506),
(6904692946486971649, '', 1475, 142600, 0, 307),
(6904726306047446274, '♥️Who’s your favourite Hazbin character and why? Take a wild guess at mine XD #alastorcosplay #hazbinhotelcosplay #shouldvepickedmercy #transition', 12600, 42300, 252, 164),
(6904736629454359813, '#stitch with @annaxsitar yes, im napping in my car. #military #miltok #army #navy #marines #airforce #fyp #foryoupage #UpTheBeat', 12400, 62400, 702, 14),
(6904739327385799942, '#horadearrasar ???', 5057, 52300, 155, 55),
(6904743507693554950, '425 OHP PR from the other day ?? #fitness #gym #workout #fit #fitnessmotivation #motivation #bodybuilding #powerlifting', 35400, 224900, 1152, 56),
(6904778229526039813, 'brought em back ‼️?#fyp #foryou  #xyzbca #barber #transition', 5594, 83500, 183, 491),
(6904798749290286341, 'Pelirroja ??‍? o castaña ?‍♀️?? #transition #cosplay #mera #aquaman', 1504, 24800, 65, 23),
(6904823810994818310, 'How to work up to pistol squats #squats #pistolsquat #deadlift #gym #fitgirls', 13400, 123400, 70, 41),
(6904909762027195649, '#පොඩි බඩගින්නක් #ඇවිල්ලා ඒයාට #vedio #කරනවා_ දැකලා #දුවනවා ????#Mine @dula__girl98', 1188, 31300, 8, 491),
(6904966483730894082, '#pov Your mom wants you to be a successful model but your father sees you’re starving yourself.. #tw #awareness #model #starving #foryou #foryoupage', 2462, 65700, 18, 448),
(6904973629524692230, 'This is so good! #fyp #f1 #funny #racing', 46500, 427300, 124, 376),
(6904976916437044482, 'responding to @stressinabox’s video!! ❤️✨ thank you for the advice!!', 46200, 291200, 406, 311),
(6904978624085069057, 'Carlos was so confused? #formula1 #carlossainz #landonorris', 16000, 154200, 139, 11),
(6904986469501259014, '#duet with @jeffviolette Sometimes the wipe doesn’t work #abs #lifehack', 1754, 66400, 14, 321),
(6905010590108978437, 'Eu amo tudo isso ♥️ #horadearrasar #cordecabelo #fyp #cabelo', 4593, 40200, 93, 306),
(6905029441760578818, 'Maar er is écht veel mis aan deze video??Deze juf is toe aan weekend! #groep8a #juf #foutekersttruiendag #tegroot #badhair #stokstruggles #iloveit', 2766, 45700, 69, 10),
(6905031739127713026, '#f1 #f1crash #f1mercedes #mercedes #f1race #win #lose #ftb #fortheboys #rage #pit #pitstop #box #boxing #fy #fyp #painful', 3386, 60300, 36, 261),
(6905034791188434177, 'Mijn mening over fatburners #foryou #foryoupage #fatburner #gains #fitness #abs #gym #workout #training #satire #chestday #rotterdam #explore #fyp #fy', 6447, 81000, 147, 28),
(6905053286374706433, '??‍♂️? #fy #fyp #foryou #foryourpage', 2079, 64800, 101, 78),
(6905060523184901381, '#stitch with @kylekilpatrickfit #foryoupage #fyp #foryou #powerlifting #bodybuilding #deadlift #fitness #workout #fittok #powertok', 6319, 52600, 91, 511),
(6905063271129287938, 'Kan er niks aan doen #voorjoupagina #fyp #fitness', 13500, 189700, 115, 37),
(6905077243240877313, 'je 3e @ heeft een mooie lach ?? #voorjou #tiktoknl #dutch #drawing #tekenen #zotekenje #netherlands', 6403, 34500, 171, 467),
(6905109455466220805, '8 week cut #fyp #gymshark #fypシ #fatloss #progress #motivation #transformation #diet #natural #pain #body #how #viral #OOTD #Catchphrases #abs', 6063, 76500, 838, 447),
(6905110082913045762, 'cause my ass seems to be the only thing getting views #dailydicerollwalk #funny #transition #transitions #fyp #foryou #foru', 7207, 54800, 119, 175),
(6905139893425474818, 'طبعا بكري قرر يصلي واخيرا ?  ياجماعة انا واقع في حالة حب معكم كليلاتكووون دخيل قلبكم?#foryou #اكسبلورر', 3373, 38500, 121, 63),
(6905298511470890241, '', 1287, 33700, 55, 79),
(6905326071026109697, '#duet met @ryan.perdaan', 798, 35900, 16, 425),
(6905356954621824257, 'Zo de basics zijn ingeslagen ? grapje natuurlijk? #boodschappen #appie #weekend #voorjou #expectations #reality', 5887, 52700, 29, 271),
(6905378500392324354, 'ya girl is negative, no worries ??? ic: @emmakeuven #fyp #keigoed', 19600, 348600, 142, 163),
(6905378711986801922, '??‍♂️??‍♂️كم وزنكم ؟#foryou #اكسبلو', 3719, 45500, 80, 486),
(6905408660185320706, 'weekend chill ??‍♂️?', 11500, 75900, 709, 297),
(6905409625726766341, '??? #coastguard #navy #marines #airforce #army #military #womeninuniform #womeninthemilitary #spaceforce', 9403, 112100, 1049, 298),
(6905462755919269121, '@giolatiktok @meesdik #meesdix @tiktokkiedon #dondejong #dutchperformante #challange #giolatooy #knolpower #fy #viral #fyp #foryoupage #foryou #chick', 145200, 1500000, 1444, 390),
(6905464131097332997, 'Cakesicles??#blue#QualityTime #ComfortFood #ocean#cake#chocolate#candymelts#cakesicles#baketok #food#chocolate #fyp#fy#ontario#mississauga #cakedeco', 1443, 34500, 52, 149),
(6905490815309729025, 'Not exactly how I was planning it to be ?? #2020evolution #corona #lockdown', 11000, 94200, 117, 30),
(6905505804959452417, 'Ben even vergeten part 2? #qucee #viral #foryoupage #foryou #peterpiet', 13000, 198500, 52, 281),
(6905530005711768833, 'MY MUM HEARD ME also, please go donate in the donate link in my bio if you can ❤️ animals lives matter too!!', 165100, 1100000, 1969, 283),
(6905635666588192002, '小技です?✨#tiktok教室#tutorial', 8805, 115300, 52, 13),
(6905698143560633602, '#foryou #fyp #voorjou #chicken #eten #koken #cooking #nl #dutch #fpodie #food #snacks #haagschekeuken #nederland #onskerstmenu #picassobaby #vj', 4597, 64200, 207, 306),
(6905705430886944002, 'Heujjj gelukt! #hinkebeentje #hatseflats #KerstInHuis #fyp #fy #vjp #vj #daarbenikweer #athome', 1472, 49400, 39, 320),
(6905755896115236098, 'Antwoorden aan @fr.henkie88 armen train ik op een boot ?#foryoupage #voorjoupagina', 4739, 116600, 56, 176),
(6905761532039220482, '#stitch mit @guinnessworldrecords #sonnelebensfroh#fy#fyp#fun', 461700, 11100000, 11600, 422),
(6905763253192789253, '#morph top surgery transition  time line; 1 year? #fyp #topsurgery #montreal #lgbtq #transition #ftm #foryourpage #queer #selflove #nonbinary #trans', 2243, 396700, 36, 513),
(6905763366166367489, 'Nou ging nie helemaal goed', 7748, 146000, 215, 151),
(6905772202600189189, '#costurar com @takemotodesu #linhacongelante #viral #foryou #viralizoou #linhacongelante #viralizoupostou', 5473, 346100, 41, 134),
(6905790048197758210, '100% body positive. Bra simply makes my shoulders hurt. And yes, they bounce... #bodypositivity #plussize', 249800, 4600000, 11100, 196),
(6905816780938235138, 'Nederlander #nederlandsetiktokkers #dutchtiktok #hollands #geertwilders #rutte #geertwilders #zwartepietlivesmatter #kaaskop #voorjoupagina #fyp #fy', 12700, 297500, 980, 24),
(6905831259478461698, '#fyp #covid2020 #yolo', 1242, 62900, 104, 510),
(6905849998680820993, 'The Clifton Mill ? @oogsydney', 12700, 102100, 242, 262),
(6905961818062114054, 'Así fue ? #Anime #animeedit #waifu #himikotoga #fyp #parati', 20400, 70900, 256, 43),
(6906048081628859650, 'Do u like?#art #drawing #decoration #painting #fyp', 712, 31900, 4, 437),
(6906058362128010498, 'الرد على @a___s36   انا بقول انو هل فلتر نعمل بس مشان ماهركو???#pubg #اكسبلوررررررر #مضرطه #ماهركو_البيض #abn #ماهركو #اكسبلورر #ببجي', 3435, 71700, 30, 162),
(6906077607750618369, '✨ lockdown ✨ | #voorjou #markrutte #lockdown #corona #fyp', 1371, 44000, 89, 369),
(6906112097554271490, 'Lil Kleine lacht Nederland uit vanwege lockdown #fy #foryou #foryoupage #fyp #vj #voorjou', 2190, 35400, 74, 179),
(6906126061696863489, 'Als er dan tóch niemand op straat gaat zijn. Het F1-seizoen is afgelopen. Mogen wij een paar rondjes door de stad blazen??? #f1 #redbull #fastestlap', 6729, 68100, 29, 14),
(6906136469144964357, 'no hate, but duet me to prove me wrong lol #gymshark #rdl #guyswholift @gymshark', 7657, 183900, 515, 399),
(6906137577003175169, 'Ik snap deze Nederland echt niet??#lockdownvibe #foryoupage #xyzbca #fy #ahajla #foryou #cabaret #duetmetnajib', 2098, 36700, 70, 449),
(6906139639753559298, '#tiktoknl #fyp #fy #foryou #foryoupage #toiletpaper #voorjoupagina #christmas #rudolf #fyppage', 2883, 95400, 73, 209),
(6906170881626754309, 'One day Zoe is going to be REALLY over my shenanigans, but for now I can still subject her to this kind of breakfast entertainment #hoodiechallenge', 8204, 86200, 297, 31),
(6906224943332068610, 'vooral bij turkse bruiloften? #foryou #ryfc', 17100, 345200, 321, 65),
(6906243777036389637, '#stitch with @gavinthomaas yeet #fyp #foryoupage #foryou #xyzbca #powerlifting #fitness #yeet', 12600, 64300, 33, 254),
(6906244949176569093, 'Man I have changed #voguemagazine  #CancelTheNoise #fypシ #fyp #foryou #vir #xyzbca #femalesoldier #soldier #army #stillgotit #bi', 5415, 82200, 269, 449),
(6906249909863779585, 'Часть 1 «Нити судьбы» #recommendations #MEGADREAMS #popular #top #ff #haikyuu #haikyuuff #anime #animeedit', 12300, 40300, 249, 246),
(6906416223785864450, 'Weet jij wel wat Netflix&chill is???#jandinoasporaat #dino #jandino #voorjou #voorjoupagina #fyp', 7961, 109800, 77, 42),
(6906503615284808961, '???? #foryoupage #fyp #bekeerling #noticeme #xzybca #foryou #foryoupage #foryoupage #fyp #foryoupage #fyp #foryoupage #noticeme #fyp #fyp', 4262, 30100, 354, 323),
(6906504850712907009, '#attitude #jok #foryoupage #love #foryou', 2489, 11000, 29, 47),
(6906514521582570753, 'we all need seb in our lives #f1 #vettel #russell #foryou #formula1 #sakhirgp #fyp #mercedes #ferrari', 17000, 189100, 78, 333),
(6906514963569888513, 'Kendinizi yıpratmayın, DEĞMEZ ?? #keşfet #tiktok #turkey #kadın #erkek #aldatma #seniniçin #beniöneçıkart #ortamısalla #mizah #boys #girls #türkiye', 734, 8071, 54, 320),
(6906515542035746050, '#verkeersagressie #verkeershufter #verkeer #cbr #fy #foryou #foryoupage #for #foryourpage', 4012, 316800, 93, 218),
(6906519148025629953, 'Rispondi a @puppy_love291 #calisthenics #fitness #foryou #perte', 46900, 488800, 489, 317),
(6906559972839034117, 'ooooo? #transition #transitions #loop #fyp #foryou #CancelTheNoise #TheProm', 9902, 57000, 151, 341),
(6906565635371764993, 'Mondkapje op en je hoeft de helft maar te doen! ? #elknadeelheeftznvoordeel #bespaartip', 16700, 322100, 174, 161),
(6906571896683285761, 'Lets help the bacons #roblox #hacks #exploiting #bunbungirls', 6629, 61500, 1166, 68),
(6906604842081357057, 'Kookie cuz my movie doesn\'t have a name?? #jungkook #bts #armybts #bts_official_bighit @bts_official_bighit', 24000, 70100, 264, 475),
(6906640842543418630, '#stitch with @barbarianbody - this must be amateur hour. #noexcuses #alpha #legs #squat #deadlift', 3181, 33700, 16, 80),
(6906649897869659394, '', 16700, 218500, 724, 138),
(6906741890503183621, 'Wire twisting Tool drill attachment #toolstour #drillbit #electrician #tools#amazonfinds #homedep', 500800, 21500000, 1810, 338),
(6906757897628192005, 'I kept messing it up ? #fyp', 360100, 4200000, 1225, 271),
(6906776161221758210, 'Long awaited  ✨hair tutorial✨ by @si3nna0 #hairtutorial #hairstyle #hairtransformation', 113500, 1000000, 415, 114),
(6906797341341224193, '#ميرنا? #اللهم_صلي_على_نبينا_محمد #صلو_عليه_شفيع_الامة #deepthoughts #transition #horse #عاشق_الخيل❤️', 5246, 52800, 30, 437),
(6906814891034823938, '#mask #vindiesel #KFCMakeItLegendary #vibewithvin #funny', 2600000, 19100000, 0, 357),
(6906818204966915330, 'Ben ik de enigste die dit doet? #foryou#pizzametananas#noticeme#xyzbca#viral#like#comment', 2501, 71400, 44, 385),
(6906822328580181250, 'Wat gaan jullie doen in deze lockdown?? #foryou #fyp #voorjou #voorjoupagina', 4436, 50600, 98, 117),
(6906841661821717762, 'අප්‍රේල් 21 ප්‍රහාරය සම්බන්ධයෙන් විමර්ශනය කරන ජනාධිපති පරීක්ෂණ කොමිෂන් සභාවේ පොලිස් ඒකකය වෙත ප්‍රකාශයක් ලබා දිමට රජයේ අධිනීතිඥ නිරාෂා ජයරත්න පැමිණියා.', 779, 25800, 11, 168),
(6906845094473649410, 'MORE GLOBBLES #ASMR #GLOBBLEASMR', 299500, 1800000, 2637, 369),
(6906870391466216709, '#horadearrasar', 1688, 64300, 13, 123),
(6906880148352552193, 'Who still remembers that Lando Norris called F1 drivers during his stream for some tips ?? #landonorris #f1 #formula1 #formulaone #georgerussell', 4620, 52100, 14, 393),
(6906884442728516865, 'Wie dacht ook famous te kunnen worden met tiktok? #joeyvandenhoek #tiktoknl #famous #blijeeisquad #fy #3700 ❤️??', 4328, 34500, 49, 288),
(6906885936366259457, 'I GOT MORE FISH! ?', 141200, 1000000, 1432, 67),
(6906932916631129346, 'the end? #couple #couplegoals #buttslap', 657, 43600, 11, 330),
(6906933953777700097, '@theori6 ✨Challenge accepted ✨ #googlesheets #excel #spreadsheet', 20100, 254200, 53, 165),
(6906940104053476609, 'My heart follow ❤️?', 14900, 53500, 33, 223),
(6906969301446593793, '#amongus #corpse #corpsehusband @corpse_husband', 179100, 607700, 394, 428),
(6907101598074391810, 'Reply to @action_dvl', 4778, 41700, 209, 485),
(6907108578482457861, 'i have a negative amount of words at this point. #fyp #biden #trump #democrat #bi #foryou #maskup #covid19 #MakeItMagical #greenscreenvideo', 15000, 60700, 689, 5),
(6907187437986958593, '', 73000, 611900, 1715, 448),
(6907193077371309313, '', 3066, 47400, 171, 177),
(6907211930755271942, 'Reply to @daniel_blanchard_150 - I’m just the messenger. #opinion #coach #training #workouttips #gym', 5715, 66800, 73, 127),
(6907213826681261314, 'Bird #foryou #foryoupage #fürdich', 74700, 748900, 183, 8),
(6907228749016714497, 'Confidence went ?', 3710, 44800, 68, 132),
(6907233534893640965, '#horadearrasar #fy #foryou #tiktok', 16800, 139300, 150, 183),
(6907253227490725122, 'mijn jeugd in een notendop @the.g.moore #tiktoknl #nederlands #agv', 27900, 245100, 535, 350),
(6907268705248464129, 'උබලට බය නෑ ?????', 3414, 33700, 38, 60),
(6907292013293505794, '@jorgevanvliet', 63100, 525900, 352, 327),
(6907297390638714118, 'My Review On The RO—86 Alkonost #gta #gta5 #gtaonline #fyp #trending #popular #gta5online #recommendations #cayopericoheist #gtav #foryou #gta5update', 15700, 90000, 142, 91),
(6907309069904776454, 'Reply to @willelrod2 it gets better. #warrantofficer #DejaTuHuella #miltok #chieftok #fyp #foryoupage #HaventSeen #PlantTikTok #MakeItMagical', 8839, 74000, 436, 260),
(6907334602017344774, '#dance #garrafa #horadearrasar #girl #challenge #musically #music', 14500, 174400, 267, 443),
(6907344809195736326, 'Feeling my body get weaker #strength #cancer #hodgkinslymphoma #chemotherapy #gym', 15700, 64100, 465, 104),
(6907365817118166278, 'what do you want for Christmas??? #HaventSeen#foryou#fyp', 9021, 78000, 100, 249),
(6907464609116982529, '#kesfet #turkish #asianmakeup #foryou #viral ###voorjou #funny #komik #like #fypシ #virall', 25200, 439700, 984, 92),
(6907491921220947205, '#fyp #anime #animeedit #animegirl #opais #otaku #weeb', 5715, 54800, 114, 291),
(6907540932682321153, '#soldier #movdbuurt #foryou #fyp #fy hoor je dat a mattie??', 30000, 395100, 780, 346),
(6907570846215294210, '#Duett mit @carl_edit2 #animeedit #animeboy #weebtiktok #animeart #fürdichpage', 7216, 71600, 181, 428),
(6907614572048305409, '#skittles sorted by color ?! #allweneedisglam', 29900, 394000, 462, 192),
(6907635850985704709, 'FOOD.? #fyp #food #diet #bodybuilding', 6217, 123500, 228, 387),
(6907659902789897474, 'How fast can you get your stirrup ? #equestrian #horsegirl #horseriding #horse #dressage #equine #stallion', 57000, 236000, 490, 136),
(6907668397484559617, 'Who do you think is the most normal of the 2 of us??? @evitavdz #justdancemoves #foryoupage #mood #voorjou #keepsailing #bestfriend #duo #crazy ?', 2445, 32600, 183, 428),
(6907670356887211265, 'Bedankt hé Jumbo ? #food #foodporn #jumbo #foryou @dominiqueramona', 8042, 289800, 208, 377),
(6907692740469902593, 'I m s o r r y', 90600, 623000, 843, 225),
(6907792796111981829, 'Recreating my best video #fyp #viral #theboys #fitness #lift #weights #grind #gymrat #track #lifting #gymtime #gym #swole #bulk #fit', 10400, 54000, 126, 58),
(6907808236133469445, 'Hope this helps! #foryoupage #fyp #foryou #powerlifting #bodybuilding #creatine #fitness #workout #fittok #powertok', 14700, 69100, 221, 331),
(6907818554905726214, 'The sad truth about having a boyfriend who works out.. #jokes #StrikeAPosay #fyp #gym #productivity #challenge #hoe #funny #trend #gymshark', 2475, 92400, 11, 28),
(6907916640386813185, 'So I broke a piece of my teeth yesterday :) #fyp #fy #chachaslide', 1579, 55600, 13, 483),
(6907943881829059841, 'Pencil #amazing', 4000000, 37900000, 18600, 25),
(6907950986871000322, 'Leven: gered', 12700, 181200, 602, 264),
(6907966191059356929, 'Идеальные трюки: Угадайте самый сложный кадр | Real life trick shots: Guess the hardest shot ? #thekiryalife #trickshot', 153400, 795900, 509, 234),
(6907971568165604610, '#duo avec @x...jesus #fyp #animal #tombé #de #haut', 3900000, 29900000, 61200, 507),
(6907974329305156866, 'Deze is voor de mensen die geen rijst kunnen koken ✨? #fyp #fy #koken #voorjou #vj', 31100, 294700, 880, 179),
(6907990866284088578, 'Smooth enough??...Viral kyu nhi ho rha mein?? Foryou? #raplikechester #jontysquad #faheemsajjad07 #standwithkashmir #slowmo #transition', 14800, 132300, 125, 259),
(6907997809094495494, 'this thought lives in my head #armday #triceps #fittok', 7742, 68200, 92, 159),
(6908031436243225858, '#stitch mit @malkimeansking #foryou #viral #fy #fyp #foryoupage', 846100, 5400000, 7471, 35),
(6908069845825359109, 'Stop eating ? #gttfg #gotothegym #swolefam #nutrition #diet #workout #gymtime #pumpkinspice', 12200, 80700, 321, 361),
(6908110392422092033, 'Sainz and his golf?#F1 #Formula1 #F12020 #FormulaOne #GrandPrix #Racing #Motorsport #Hamilton #Vettel #Verstappen', 21600, 346900, 73, 433),
(6908111363365768453, '#vibe #drums #fun #duet #fyp #happy #music', 13400, 89500, 469, 266),
(6908113835845012742, 'mood ? / #fyp #foryou #melodictechno #housemusic #techno #eletronicmusic', 395200, 2900000, 1890, 41),
(6908143157616151813, 'Benching and angle progress #foryou #fyp #fitness #chestworkout', 5023, 79600, 75, 211),
(6908179105494174982, 'Tis the season ?? #bungoustraydogs #anime #animeedit #chuuyanakahara #dazaiosamu #bsd', 24700, 55300, 640, 314),
(6908266212787047686, 'The pupil to drench surface #LoveStory #cake', 11900, 219700, 91, 209),
(6908292605101051137, 'Rate the Video from 1-10 #yzfamily #fürdich #fyp #foryoupage', 619000, 4000000, 6991, 307),
(6908295874653342978, 'lijkt net echt gewoon??? #foryoupage #ikmisdit', 25200, 261000, 569, 191),
(6908298047470472450, 'I think he’ll win until he retires. #gym #fyp #mrolympia #parati', 22800, 153100, 297, 372),
(6908309278365404418, 'Viral kyu nhi ho rha mein???...Foryou? #raplikechester #jontysquad #faheemsajjad07 #standwithkashimr #slowmo #transition #viralvideo', 1546, 12800, 38, 113),
(6908311912941931777, 'Zo kan het ook jongens #coronaproof #balkonfeest #enschede', 32500, 198300, 730, 449),
(6908336148037274881, 'This took me a month', 88900, 598200, 338, 431),
(6908342087528254722, '???', 9588, 104400, 119, 349),
(6908353046783347969, 'Aangezien IEDEREEN wilde dat het een bioscoop werd, hier de verbouwing! ?#voorjou #verbouwing #bioscoop', 54200, 659700, 351, 128),
(6908391851418471682, 'Dusss ? Insta: @esmeejoanna #herkenbaar #herkenbaresituaties #voorjoupagina #grappig #lachen #jeugdvantegenwoordig #hysterisch #jeugd #tiktokdans #fy', 21200, 226000, 301, 35),
(6908401262065143045, '#horadearrasar', 646, 34500, 27, 84),
(6908408424610974977, 'Beep boop?? #tekenen #voorjou #netherlands #dutch', 7721, 89900, 143, 190),
(6908460695461891329, 'Antwoorden aan @wana_alewa_eritrea #extradateready #habeshatiktok #eritreanmusic #antwoord @grmayhawinaxu8 @gogogaga124  #Samsung ￼', 1106, 22500, 80, 482),
(6908543785303608581, 'Have you learned#kungfu #chinesekungfu', 305300, 3600000, 1777, 403);

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
  `username` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`balance`, `id`, `role_id`, `email`, `password`, `username`) VALUES
(2499975000, 1, 1, 'hiruez@gmail.com', '$2a$10$FLjwCRI0jtCPdFLdvRQPEOqp.68rmkCxVu8oFIbz29atjcfaEEp7.', 'sysadmin'),
(12500000, 2, 2, 'buncotuyet@gmail.com', '$2a$10$FU6f9jQKze1Hnri/acw7quRpQkIALFO/HRYY78MPqcu1NY3ybXC5m', 'buncoTuyet_admin'),
(2500000, 3, 3, 'daokimduong322@gmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'duongdk'),
(24975000, 4, 3, 'minh@gmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'minh'),
(12500000, 5, 2, 'cimnieusingapore@gmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'comNieuSingapore_admin'),
(1250000, 6, 3, 'dungnn@gmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'dungnn'),
(750000, 7, 3, 'trungtv@gmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'trungtv'),
(3075000, 8, 3, 'jbutt@gmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'James Butt'),
(2650000, 9, 3, 'josephine_darakjy@darakjy.org', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Josephine Darakjy'),
(7150000, 10, 3, 'art@venere.org', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Art Venere'),
(12475000, 11, 3, 'lpaprocki@hotmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Lenna Paprocki'),
(11100000, 12, 3, 'donette.foller@cox.net', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Donette Foller'),
(9625000, 13, 3, 'simona@morasca.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Simona Morasca'),
(8075000, 14, 3, 'mitsue_tollner@yahoo.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Mitsue Tollner'),
(6250000, 15, 3, 'leota@hotmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Leota Dilliard'),
(3900000, 16, 3, 'sage_wieser@cox.net', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Sage Wieser'),
(7950000, 17, 3, 'kris@gmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Kris Marrier'),
(3675000, 18, 3, 'minna_amigon@yahoo.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Minna Amigon'),
(2650000, 19, 3, 'amaclead@gmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Abel Maclead'),
(3975000, 20, 3, 'kiley.caldarera@aol.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Kiley Caldarera'),
(10400000, 21, 3, 'gruta@cox.net', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Graciela Ruta'),
(3100000, 22, 3, 'calbares@gmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Cammy Albares'),
(10200000, 23, 3, 'mattie@aol.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Mattie Poquette'),
(5675000, 24, 3, 'meaghan@hotmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Meaghan Garufi'),
(11800000, 25, 3, 'gladys.rim@rim.org', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Gladys Rim'),
(7900000, 26, 3, 'yuki_whobrey@aol.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Yuki Whobrey'),
(3175000, 27, 3, 'fletcher.flosi@yahoo.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Fletcher Flosi'),
(3100000, 28, 3, 'bette_nicka@cox.net', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Bette Nicka'),
(10975000, 29, 3, 'vinouye@aol.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Veronika Inouye'),
(4825000, 30, 3, 'willard@hotmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Willard Kolmetz'),
(4750000, 31, 3, 'mroyster@royster.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Maryann Royster'),
(12125000, 32, 3, 'alisha@slusarski.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Alisha Slusarski'),
(12475000, 33, 3, 'allene_iturbide@cox.net', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Allene Iturbide'),
(5425000, 34, 3, 'chanel.caudy@caudy.org', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Chanel Caudy'),
(2600000, 35, 3, 'ezekiel@chui.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Ezekiel Chui'),
(11100000, 36, 3, 'wkusko@yahoo.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Willow Kusko'),
(10900000, 37, 3, 'bfigeroa@aol.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Bernardo Figeroa'),
(8650000, 38, 3, 'ammie@corrio.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Ammie Corrio'),
(3100000, 39, 3, 'francine_vocelka@vocelka.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Francine Vocelka'),
(5375000, 40, 3, 'ernie_stenseth@aol.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Ernie Stenseth'),
(6775000, 41, 3, 'albina@glick.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Albina Glick'),
(9700000, 42, 3, 'asergi@gmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Alishia Sergi'),
(2525000, 43, 3, 'solange@shinko.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Solange Shinko'),
(9075000, 44, 3, 'jose@yahoo.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Jose Stockham'),
(7175000, 45, 3, 'rozella.ostrosky@ostrosky.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Rozella Ostrosky'),
(10000000, 46, 3, 'valentine_gillian@gmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Valentine Gillian'),
(6675000, 47, 3, 'kati.rulapaugh@hotmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Kati Rulapaugh'),
(11275000, 48, 3, 'youlanda@aol.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Youlanda Schemmer'),
(5600000, 49, 3, 'doldroyd@aol.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Dyan Oldroyd'),
(7875000, 50, 3, 'roxane@hotmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Roxane Campain'),
(8975000, 51, 3, 'lperin@perin.org', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Lavera Perin'),
(3925000, 52, 3, 'erick.ferencz@aol.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Erick Ferencz'),
(11550000, 53, 3, 'fsaylors@saylors.org', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Fatima Saylors'),
(4175000, 54, 3, 'jina_briddick@briddick.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Jina Briddick'),
(9675000, 55, 3, 'kanisha_waycott@yahoo.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Kanisha Waycott'),
(3200000, 56, 3, 'emerson.bowley@bowley.org', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Emerson Bowley'),
(5650000, 57, 3, 'bmalet@yahoo.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Blair Malet'),
(5225000, 58, 3, 'bbolognia@yahoo.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Brock Bolognia'),
(4300000, 59, 3, 'lnestle@hotmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Lorrie Nestle'),
(5125000, 60, 3, 'sabra@uyetake.org', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Sabra Uyetake'),
(7000000, 61, 3, 'mmastella@mastella.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Marjory Mastella'),
(6350000, 62, 3, 'karl_klonowski@yahoo.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Karl Klonowski'),
(8350000, 63, 3, 'twenner@aol.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Tonette Wenner'),
(9900000, 64, 3, 'amber_monarrez@monarrez.org', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Amber Monarrez'),
(10075000, 65, 3, 'shenika@gmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Shenika Seewald'),
(11700000, 66, 3, 'delmy.ahle@hotmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Delmy Ahle'),
(2700000, 67, 3, 'deeanna_juhas@gmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Deeanna Juhas'),
(9425000, 68, 3, 'bpugh@aol.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Blondell Pugh'),
(11650000, 69, 3, 'jamal@vanausdal.org', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Jamal Vanausdal'),
(8025000, 70, 3, 'cecily@hollack.org', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Cecily Hollack'),
(10625000, 71, 3, 'carmelina_lindall@lindall.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Carmelina Lindall'),
(11675000, 72, 3, 'maurine_yglesias@yglesias.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Maurine Yglesias'),
(8625000, 73, 3, 'tawna@gmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Tawna Buvens'),
(8975000, 74, 3, 'penney_weight@aol.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Penney Weight'),
(4750000, 75, 3, 'elly_morocco@gmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Elly Morocco'),
(5650000, 76, 3, 'ilene.eroman@hotmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Ilene Eroman'),
(11225000, 77, 3, 'vmondella@mondella.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Vallie Mondella'),
(10825000, 78, 3, 'kallie.blackwood@gmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Kallie Blackwood'),
(12225000, 79, 3, 'johnetta_abdallah@aol.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Johnetta Abdallah'),
(6450000, 80, 3, 'brhym@rhym.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Bobbye Rhym'),
(7925000, 81, 3, 'micaela_rhymes@gmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Micaela Rhymes'),
(7300000, 82, 3, 'tamar@hotmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Tamar Hoogland'),
(2750000, 83, 3, 'moon@yahoo.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Moon Parlato'),
(5725000, 84, 3, 'laurel_reitler@reitler.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Laurel Reitler'),
(7725000, 85, 3, 'delisa.crupi@crupi.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Delisa Crupi'),
(9450000, 86, 3, 'viva.toelkes@gmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Viva Toelkes'),
(8825000, 87, 3, 'elza@yahoo.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Elza Lipke'),
(3525000, 88, 3, 'devorah@hotmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Devorah Chickering'),
(10625000, 89, 3, 'timothy_mulqueen@mulqueen.org', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Timothy Mulqueen'),
(6325000, 90, 3, 'ahoneywell@honeywell.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Arlette Honeywell'),
(6175000, 91, 3, 'dominque.dickerson@dickerson.org', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Dominque Dickerson'),
(11400000, 92, 3, 'lettie_isenhower@yahoo.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Lettie Isenhower'),
(8475000, 93, 3, 'mmunns@cox.net', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Myra Munns'),
(6800000, 94, 3, 'stephaine@barfield.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Stephaine Barfield'),
(6850000, 95, 3, 'lai.gato@gato.org', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Lai Gato'),
(12375000, 96, 3, 'stephen_emigh@hotmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Stephen Emigh'),
(4150000, 97, 3, 'tshields@gmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Tyra Shields'),
(8975000, 98, 3, 'twardrip@cox.net', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Tammara Wardrip'),
(8225000, 99, 3, 'cory.gibes@gmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Cory Gibes'),
(4775000, 100, 3, 'danica_bruschke@gmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Danica Bruschke'),
(5825000, 101, 3, 'wilda@cox.net', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Wilda Giguere'),
(11600000, 102, 3, 'elvera.benimadho@cox.net', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Elvera Benimadho'),
(7025000, 103, 3, 'carma@cox.net', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Carma Vanheusen'),
(10600000, 104, 3, 'malinda.hochard@yahoo.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Malinda Hochard'),
(3550000, 105, 3, 'natalie.fern@hotmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Natalie Fern'),
(4100000, 106, 3, 'lisha@centini.org', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Lisha Centini'),
(11425000, 107, 3, 'arlene_klusman@gmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Arlene Klusman'),
(3150000, 108, 3, 'alease@buemi.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Alease Buemi'),
(9050000, 109, 3, 'louisa@cronauer.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Louisa Cronauer'),
(5850000, 110, 3, 'angella.cetta@hotmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Angella Cetta'),
(3550000, 111, 3, 'cgoldammer@cox.net', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Cyndy Goldammer'),
(6175000, 112, 3, 'rosio.cork@gmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Rosio Cork'),
(8300000, 113, 3, 'ckorando@hotmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Celeste Korando'),
(7675000, 114, 3, 'twana.felger@felger.org', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Twana Felger'),
(6075000, 115, 3, 'estrella@aol.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Estrella Samu'),
(6925000, 116, 3, 'dkines@hotmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Donte Kines'),
(6550000, 117, 3, 'tiffiny_steffensmeier@cox.net', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Tiffiny Steffensmeier'),
(7875000, 118, 3, 'emiceli@miceli.org', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Edna Miceli'),
(7725000, 119, 3, 'sue@aol.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Sue Kownacki'),
(10075000, 120, 3, 'jshin@shin.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Jesusa Shin'),
(8700000, 121, 3, 'rolland@cox.net', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Rolland Francescon'),
(8800000, 122, 3, 'pamella.schmierer@schmierer.org', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Pamella Schmierer'),
(5975000, 123, 3, 'gkulzer@kulzer.org', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Glory Kulzer'),
(10550000, 124, 3, 'shawna_palaspas@palaspas.org', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Shawna Palaspas'),
(2600000, 125, 3, 'brandon_callaro@hotmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Brandon Callaro'),
(9875000, 126, 3, 'scarlet.cartan@yahoo.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Scarlet Cartan'),
(11425000, 127, 3, 'oretha_menter@yahoo.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Oretha Menter'),
(3525000, 128, 3, 'tsmith@aol.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Ty Smith'),
(10850000, 129, 3, 'xuan@gmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Xuan Rochin'),
(5275000, 130, 3, 'lindsey.dilello@hotmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Lindsey Dilello'),
(10075000, 131, 3, 'devora_perez@perez.org', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Devora Perez'),
(6775000, 132, 3, 'hdemesa@cox.net', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Herman Demesa'),
(7175000, 133, 3, 'rpapasergi@cox.net', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Rory Papasergi'),
(11075000, 134, 3, 'talia_riopelle@aol.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Talia Riopelle'),
(8500000, 135, 3, 'van.shire@shire.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Van Shire'),
(4750000, 136, 3, 'lucina_lary@cox.net', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Lucina Lary'),
(10925000, 137, 3, 'bok.isaacs@aol.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Bok Isaacs'),
(5750000, 138, 3, 'rolande.spickerman@spickerman.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Rolande Spickerman'),
(7675000, 139, 3, 'hpaulas@gmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Howard Paulas'),
(3100000, 140, 3, 'kimbery_madarang@cox.net', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Kimbery Madarang'),
(2800000, 141, 3, 'thurman.manno@yahoo.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Thurman Manno'),
(9925000, 142, 3, 'becky.mirafuentes@mirafuentes.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Becky Mirafuentes'),
(5950000, 143, 3, 'beatriz@yahoo.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Beatriz Corrington'),
(4550000, 144, 3, 'marti.maybury@yahoo.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Marti Maybury'),
(2950000, 145, 3, 'nieves_gotter@gmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Nieves Gotter'),
(12050000, 146, 3, 'lhagele@cox.net', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Leatha Hagele'),
(9375000, 147, 3, 'vklimek@klimek.org', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Valentin Klimek'),
(6200000, 148, 3, 'melissa@cox.net', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Melissa Wiklund'),
(8750000, 149, 3, 'sheridan.zane@zane.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Sheridan Zane'),
(10625000, 150, 3, 'bulah_padilla@hotmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Bulah Padilla'),
(3675000, 151, 3, 'audra@kohnert.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Audra Kohnert'),
(3200000, 152, 3, 'dweirather@aol.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Daren Weirather'),
(11950000, 153, 3, 'fjillson@aol.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Fernanda Jillson'),
(3500000, 154, 3, 'gearldine_gellinger@gellinger.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Gearldine Gellinger'),
(10425000, 155, 3, 'chau@gmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Chau Kitzman'),
(5750000, 156, 3, 'theola_frey@frey.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Theola Frey'),
(11125000, 157, 3, 'cheryl@haroldson.org', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Cheryl Haroldson'),
(3500000, 158, 3, 'lmerced@gmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Laticia Merced'),
(5300000, 159, 3, 'carissa.batman@yahoo.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Carissa Batman'),
(3925000, 160, 3, 'lezlie.craghead@craghead.org', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Lezlie Craghead'),
(9175000, 161, 3, 'oshealy@hotmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Ozell Shealy'),
(4950000, 162, 3, 'arminda@parvis.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Arminda Parvis'),
(3950000, 163, 3, 'reita.leto@gmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Reita Leto'),
(6650000, 164, 3, 'yolando@cox.net', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Yolando Luczki'),
(2575000, 165, 3, 'lizette.stem@aol.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Lizette Stem'),
(3100000, 166, 3, 'gpawlowicz@yahoo.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Gregoria Pawlowicz'),
(6425000, 167, 3, 'cdeleo@deleo.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Carin Deleo'),
(3850000, 168, 3, 'chantell@yahoo.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Chantell Maynerich'),
(9675000, 169, 3, 'dyum@yahoo.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Dierdre Yum'),
(7250000, 170, 3, 'larae_gudroe@gmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Larae Gudroe'),
(8725000, 171, 3, 'latrice.tolfree@hotmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Latrice Tolfree'),
(9800000, 172, 3, 'kerry.theodorov@gmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Kerry Theodorov'),
(9125000, 173, 3, 'dhidvegi@yahoo.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Dorthy Hidvegi'),
(4225000, 174, 3, 'fannie.lungren@yahoo.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Fannie Lungren'),
(3175000, 175, 3, 'evangelina@aol.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Evangelina Radde'),
(9325000, 176, 3, 'novella_degroot@degroot.org', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Novella Degroot'),
(11175000, 177, 3, 'choa@hoa.org', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Clay Hoa'),
(7400000, 178, 3, 'jfallick@yahoo.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Jennifer Fallick'),
(11850000, 179, 3, 'irma.wolfgramm@hotmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Irma Wolfgramm'),
(3600000, 180, 3, 'eun@yahoo.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Eun Coody'),
(5050000, 181, 3, 'sylvia_cousey@cousey.org', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Sylvia Cousey'),
(4150000, 182, 3, 'nana@aol.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Nana Wrinkles'),
(6500000, 183, 3, 'layla.springe@cox.net', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Layla Springe'),
(4600000, 184, 3, 'joesph_degonia@degonia.org', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Joesph Degonia'),
(12425000, 185, 3, 'annabelle.boord@cox.net', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Annabelle Boord'),
(11225000, 186, 3, 'stephaine@cox.net', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Stephaine Vinning'),
(6675000, 187, 3, 'nelida@gmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Nelida Sawchuk'),
(2600000, 188, 3, 'marguerita.hiatt@gmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Marguerita Hiatt'),
(7825000, 189, 3, 'ccookey@cookey.org', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Carmela Cookey'),
(5625000, 190, 3, 'jbrideau@aol.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Junita Brideau'),
(3675000, 191, 3, 'claribel_varriano@cox.net', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Claribel Varriano'),
(12000000, 192, 3, 'benton.skursky@aol.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Benton Skursky'),
(3925000, 193, 3, 'hillary.skulski@aol.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Hillary Skulski'),
(2825000, 194, 3, 'merilyn_bayless@cox.net', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Merilyn Bayless'),
(4625000, 195, 3, 'tennaco@gmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Teri Ennaco'),
(8200000, 196, 3, 'merlyn_lawler@hotmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Merlyn Lawler'),
(2575000, 197, 3, 'gmontezuma@cox.net', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Georgene Montezuma'),
(12325000, 198, 3, 'jmconnell@hotmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Jettie Mconnell'),
(5400000, 199, 3, 'lemuel.latzke@gmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Lemuel Latzke'),
(5325000, 200, 3, 'mknipp@gmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Melodie Knipp'),
(2625000, 201, 3, 'candida_corbley@hotmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Candida Corbley'),
(12375000, 202, 3, 'karan_karpin@gmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Karan Karpin'),
(7075000, 203, 3, 'andra@gmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Andra Scheyer'),
(8450000, 204, 3, 'fpoullion@poullion.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Felicidad Poullion'),
(9325000, 205, 3, 'belen_strassner@aol.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Belen Strassner'),
(9325000, 206, 3, 'gracia@melnyk.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Gracia Melnyk'),
(7550000, 207, 3, 'jhanafan@gmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Jolanda Hanafan'),
(4500000, 208, 3, 'barrett.toyama@toyama.org', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Barrett Toyama'),
(2600000, 209, 3, 'helga_fredicks@yahoo.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Helga Fredicks'),
(12425000, 210, 3, 'apinilla@cox.net', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Ashlyn Pinilla'),
(5475000, 211, 3, 'fausto_agramonte@yahoo.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Fausto Agramonte'),
(5650000, 212, 3, 'ronny.caiafa@caiafa.org', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Ronny Caiafa'),
(11975000, 213, 3, 'marge@gmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Marge Limmel'),
(2700000, 214, 3, 'norah.waymire@gmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Norah Waymire'),
(9050000, 215, 3, 'aliza@aol.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Aliza Baltimore'),
(6450000, 216, 3, 'mpelkowski@pelkowski.org', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Mozell Pelkowski'),
(8575000, 217, 3, 'viola@gmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Viola Bitsuie'),
(8000000, 218, 3, 'femard@emard.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Franklyn Emard'),
(6000000, 219, 3, 'willodean_konopacki@konopacki.org', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Willodean Konopacki'),
(7775000, 220, 3, 'beckie.silvestrini@silvestrini.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Beckie Silvestrini'),
(4300000, 221, 3, 'rgesick@gesick.org', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Rebecka Gesick'),
(5275000, 222, 3, 'frederica_blunk@gmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Frederica Blunk'),
(2750000, 223, 3, 'glen_bartolet@hotmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Glen Bartolet'),
(11950000, 224, 3, 'freeman_gochal@aol.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Freeman Gochal'),
(10325000, 225, 3, 'vincent.meinerding@hotmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Vincent Meinerding'),
(4025000, 226, 3, 'rima@cox.net', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Rima Bevelacqua'),
(9950000, 227, 3, 'gsarbacher@gmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Glendora Sarbacher'),
(12500000, 228, 3, 'avery@cox.net', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Avery Steier'),
(5125000, 229, 3, 'cristy@lother.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Cristy Lother'),
(8025000, 230, 3, 'nicolette_brossart@brossart.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Nicolette Brossart'),
(5300000, 231, 3, 'tracey@hotmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Tracey Modzelewski'),
(2750000, 232, 3, 'virgina_tegarden@tegarden.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Virgina Tegarden'),
(8775000, 233, 3, 'tfrankel@aol.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Tiera Frankel'),
(12400000, 234, 3, 'alaine_bergesen@cox.net', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Alaine Bergesen'),
(9025000, 235, 3, 'earleen_mai@cox.net', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Earleen Mai'),
(10100000, 236, 3, 'leonida@gobern.org', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Leonida Gobern'),
(5275000, 237, 3, 'ressie.auffrey@yahoo.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Ressie Auffrey'),
(11000000, 238, 3, 'jmugnolo@yahoo.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Justine Mugnolo'),
(11525000, 239, 3, 'eladia@saulter.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Eladia Saulter'),
(7900000, 240, 3, 'chaya@malvin.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Chaya Malvin'),
(10025000, 241, 3, 'gwenn_suffield@suffield.org', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Gwenn Suffield'),
(6625000, 242, 3, 'skarpel@cox.net', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Salena Karpel'),
(8575000, 243, 3, 'yoko@fishburne.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Yoko Fishburne'),
(7450000, 244, 3, 'taryn.moyd@hotmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Taryn Moyd'),
(10675000, 245, 3, 'katina_polidori@aol.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Katina Polidori'),
(4100000, 246, 3, 'rickie.plumer@aol.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Rickie Plumer'),
(5800000, 247, 3, 'alex@loader.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Alex Loader'),
(6875000, 248, 3, 'lashon@aol.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Lashon Vizarro'),
(11975000, 249, 3, 'lburnard@burnard.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Lauran Burnard'),
(11475000, 250, 3, 'ceola.setter@setter.org', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Ceola Setter'),
(8825000, 251, 3, 'my@hotmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'My Rantanen'),
(7375000, 252, 3, 'lorrine.worlds@worlds.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Lorrine Worlds'),
(6125000, 253, 3, 'peggie@cox.net', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Peggie Sturiale'),
(5350000, 254, 3, 'mraymo@yahoo.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Marvel Raymo'),
(5400000, 255, 3, 'daron_dinos@cox.net', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Daron Dinos'),
(10350000, 256, 3, 'an_fritz@hotmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'An Fritz'),
(4800000, 257, 3, 'portia.stimmel@aol.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Portia Stimmel'),
(12350000, 258, 3, 'rhea_aredondo@cox.net', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Rhea Aredondo'),
(8825000, 259, 3, 'bsama@cox.net', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Benedict Sama'),
(7550000, 260, 3, 'alyce@arias.org', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Alyce Arias'),
(4800000, 261, 3, 'heike@gmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Heike Berganza'),
(2925000, 262, 3, 'carey_dopico@dopico.org', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Carey Dopico'),
(9350000, 263, 3, 'dottie@hellickson.org', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Dottie Hellickson'),
(9875000, 264, 3, 'deandrea@yahoo.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Deandrea Hughey'),
(6750000, 265, 3, 'kimberlie_duenas@yahoo.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Kimberlie Duenas'),
(3700000, 266, 3, 'martina_staback@staback.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Martina Staback'),
(8900000, 267, 3, 'skye_fillingim@yahoo.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Skye Fillingim'),
(10250000, 268, 3, 'jade.farrar@yahoo.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Jade Farrar'),
(4200000, 269, 3, 'charlene.hamilton@hotmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Charlene Hamilton'),
(5725000, 270, 3, 'geoffrey@gmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Geoffrey Acey'),
(9275000, 271, 3, 'stevie.westerbeck@yahoo.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Stevie Westerbeck'),
(6325000, 272, 3, 'pamella@fortino.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Pamella Fortino'),
(7750000, 273, 3, 'hhaufler@hotmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Harrison Haufler'),
(5600000, 274, 3, 'jengelberg@engelberg.org', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Johnna Engelberg'),
(3400000, 275, 3, 'buddy.cloney@yahoo.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Buddy Cloney'),
(4750000, 276, 3, 'dalene.riden@aol.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Dalene Riden'),
(12025000, 277, 3, 'jzurcher@zurcher.org', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Jerry Zurcher'),
(10600000, 278, 3, 'hdenooyer@denooyer.org', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Haydee Denooyer'),
(9550000, 279, 3, 'joseph_cryer@cox.net', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Joseph Cryer'),
(8850000, 280, 3, 'deonna_kippley@hotmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Deonna Kippley'),
(5475000, 281, 3, 'raymon.calvaresi@gmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Raymon Calvaresi'),
(7125000, 282, 3, 'alecia@aol.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Alecia Bubash'),
(8350000, 283, 3, 'mlayous@hotmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Ma Layous'),
(12225000, 284, 3, 'detra@aol.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Detra Coyier'),
(11950000, 285, 3, 'terrilyn.rodeigues@cox.net', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Terrilyn Rodeigues'),
(9275000, 286, 3, 'slacovara@gmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Salome Lacovara'),
(11650000, 287, 3, 'garry_keetch@hotmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Garry Keetch'),
(5125000, 288, 3, 'mneither@yahoo.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Matthew Neither'),
(11975000, 289, 3, 'theodora.restrepo@restrepo.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Theodora Restrepo'),
(3825000, 290, 3, 'noah.kalafatis@aol.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Noah Kalafatis'),
(2875000, 291, 3, 'csweigard@sweigard.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Carmen Sweigard'),
(7600000, 292, 3, 'lavonda@cox.net', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Lavonda Hengel'),
(5075000, 293, 3, 'junita@aol.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Junita Stoltzman'),
(10300000, 294, 3, 'herminia@nicolozakes.org', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Herminia Nicolozakes'),
(4575000, 295, 3, 'casie.good@aol.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Casie Good'),
(11200000, 296, 3, 'reena@hotmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Reena Maisto'),
(2875000, 297, 3, 'mirta_mallett@gmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Mirta Mallett'),
(10000000, 298, 3, 'cathrine.pontoriero@pontoriero.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Cathrine Pontoriero'),
(4100000, 299, 3, 'ftawil@hotmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Filiberto Tawil'),
(9400000, 300, 3, 'rupthegrove@yahoo.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Raul Upthegrove'),
(8225000, 301, 3, 'sarah.candlish@gmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Sarah Candlish'),
(10325000, 302, 3, 'lucy@cox.net', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Lucy Treston'),
(2650000, 303, 3, 'jaquas@aquas.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Judy Aquas'),
(5625000, 304, 3, 'yvonne.tjepkema@hotmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Yvonne Tjepkema'),
(7750000, 305, 3, 'kayleigh.lace@yahoo.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Kayleigh Lace'),
(8725000, 306, 3, 'felix_hirpara@cox.net', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Felix Hirpara'),
(5750000, 307, 3, 'tresa_sweely@hotmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Tresa Sweely'),
(12125000, 308, 3, 'kristeen@gmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Kristeen Turinetti'),
(4775000, 309, 3, 'jregusters@regusters.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Jenelle Regusters'),
(8950000, 310, 3, 'renea@hotmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Renea Monterrubio'),
(6975000, 311, 3, 'olive@aol.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Olive Matuszak'),
(7575000, 312, 3, 'lreiber@cox.net', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Ligia Reiber'),
(10275000, 313, 3, 'christiane.eschberger@yahoo.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Christiane Eschberger'),
(3825000, 314, 3, 'goldie.schirpke@yahoo.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Goldie Schirpke'),
(4175000, 315, 3, 'loreta.timenez@hotmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Loreta Timenez'),
(9925000, 316, 3, 'fabiola.hauenstein@hauenstein.org', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Fabiola Hauenstein'),
(10000000, 317, 3, 'amie.perigo@yahoo.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Amie Perigo'),
(9200000, 318, 3, 'raina.brachle@brachle.org', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Raina Brachle'),
(6325000, 319, 3, 'erinn.canlas@canlas.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Erinn Canlas'),
(8525000, 320, 3, 'cherry@lietz.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Cherry Lietz'),
(7475000, 321, 3, 'kattie@vonasek.org', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Kattie Vonasek'),
(2925000, 322, 3, 'lilli@aol.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Lilli Scriven'),
(8325000, 323, 3, 'whitley.tomasulo@aol.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Whitley Tomasulo'),
(3725000, 324, 3, 'badkin@hotmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Barbra Adkin'),
(7125000, 325, 3, 'hermila_thyberg@hotmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Hermila Thyberg'),
(4275000, 326, 3, 'jesusita.flister@hotmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Jesusita Flister'),
(10150000, 327, 3, 'caitlin.julia@julia.org', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Caitlin Julia'),
(8575000, 328, 3, 'roosevelt.hoffis@aol.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Roosevelt Hoffis'),
(7975000, 329, 3, 'hhalter@yahoo.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Helaine Halter'),
(7975000, 330, 3, 'lorean.martabano@hotmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Lorean Martabano'),
(4050000, 331, 3, 'france.buzick@yahoo.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'France Buzick'),
(8525000, 332, 3, 'jferrario@hotmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Justine Ferrario'),
(11700000, 333, 3, 'adelina_nabours@gmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Adelina Nabours'),
(11350000, 334, 3, 'ddhamer@cox.net', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Derick Dhamer'),
(10525000, 335, 3, 'jerry.dallen@yahoo.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Jerry Dallen'),
(6025000, 336, 3, 'leota.ragel@gmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Leota Ragel'),
(12250000, 337, 3, 'jamyot@hotmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Jutta Amyot'),
(3150000, 338, 3, 'aja_gehrett@hotmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Aja Gehrett'),
(3050000, 339, 3, 'kirk.herritt@aol.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Kirk Herritt'),
(10675000, 340, 3, 'leonora@yahoo.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Leonora Mauson'),
(9775000, 341, 3, 'winfred_brucato@hotmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Winfred Brucato'),
(9300000, 342, 3, 'tarra.nachor@cox.net', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Tarra Nachor'),
(12325000, 343, 3, 'corinne@loder.org', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Corinne Loder'),
(5950000, 344, 3, 'dulce_labreche@yahoo.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Dulce Labreche'),
(11775000, 345, 3, 'kate_keneipp@yahoo.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Kate Keneipp'),
(7175000, 346, 3, 'kaitlyn.ogg@gmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Kaitlyn Ogg'),
(3500000, 347, 3, 'sherita.saras@cox.net', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Sherita Saras'),
(9025000, 348, 3, 'lstuer@cox.net', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Lashawnda Stuer'),
(9100000, 349, 3, 'ernest@cox.net', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Ernest Syrop'),
(9175000, 350, 3, 'nobuko.halsey@yahoo.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Nobuko Halsey'),
(5950000, 351, 3, 'lavonna.wolny@hotmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Lavonna Wolny'),
(6050000, 352, 3, 'llizama@cox.net', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Lashaunda Lizama'),
(8275000, 353, 3, 'mariann.bilden@aol.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Mariann Bilden'),
(2750000, 354, 3, 'helene@aol.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Helene Rodenberger'),
(6325000, 355, 3, 'roselle.estell@hotmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Roselle Estell'),
(7400000, 356, 3, 'sheintzman@hotmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Samira Heintzman'),
(4275000, 357, 3, 'margart_meisel@yahoo.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Margart Meisel'),
(11975000, 358, 3, 'kristofer.bennick@yahoo.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Kristofer Bennick'),
(10675000, 359, 3, 'wacuff@gmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Weldon Acuff'),
(8700000, 360, 3, 'shalon@cox.net', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Shalon Shadrick'),
(6250000, 361, 3, 'denise@patak.org', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Denise Patak'),
(8450000, 362, 3, 'louvenia.beech@beech.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Louvenia Beech'),
(6200000, 363, 3, 'audry.yaw@yaw.org', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Audry Yaw'),
(8100000, 364, 3, 'kristel.ehmann@aol.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Kristel Ehmann'),
(11450000, 365, 3, 'vzepp@gmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Vincenza Zepp'),
(5450000, 366, 3, 'egwalthney@yahoo.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Elouise Gwalthney'),
(3550000, 367, 3, 'venita_maillard@gmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Venita Maillard'),
(8775000, 368, 3, 'kasandra_semidey@semidey.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Kasandra Semidey'),
(5750000, 369, 3, 'xdiscipio@gmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Xochitl Discipio'),
(12125000, 370, 3, 'mlinahan@yahoo.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Maile Linahan'),
(11350000, 371, 3, 'krauser@cox.net', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Krissy Rauser'),
(5025000, 372, 3, 'pdubaldi@hotmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Pete Dubaldi'),
(8775000, 373, 3, 'linn_paa@paa.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Linn Paa'),
(12025000, 374, 3, 'paris@hotmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Paris Wide'),
(8425000, 375, 3, 'wynell_dorshorst@dorshorst.org', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Wynell Dorshorst'),
(11925000, 376, 3, 'qbirkner@aol.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Quentin Birkner'),
(12225000, 377, 3, 'regenia.kannady@cox.net', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Regenia Kannady'),
(9125000, 378, 3, 'sheron@aol.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Sheron Louissant'),
(4300000, 379, 3, 'izetta.funnell@hotmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Izetta Funnell'),
(9050000, 380, 3, 'rodolfo@hotmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Rodolfo Butzen'),
(7450000, 381, 3, 'zona@hotmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Zona Colla'),
(3225000, 382, 3, 'szagen@aol.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Serina Zagen'),
(3075000, 383, 3, 'paz_sahagun@cox.net', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Paz Sahagun'),
(7400000, 384, 3, 'markus@yahoo.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Markus Lukasik'),
(3150000, 385, 3, 'jaclyn@aol.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Jaclyn Bachman'),
(3875000, 386, 3, 'cyril_daufeldt@daufeldt.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Cyril Daufeldt'),
(4400000, 387, 3, 'gschnitzler@gmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Gayla Schnitzler'),
(6450000, 388, 3, 'erick_nievas@aol.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Erick Nievas'),
(7925000, 389, 3, 'jennie@cox.net', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Jennie Drymon'),
(4550000, 390, 3, 'mscipione@scipione.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Mitsue Scipione'),
(8000000, 391, 3, 'cventura@yahoo.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Ciara Ventura'),
(10525000, 392, 3, 'galen@yahoo.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Galen Cantres'),
(11275000, 393, 3, 'tfeichtner@yahoo.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Truman Feichtner'),
(11850000, 394, 3, 'gail@kitty.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Gail Kitty'),
(12375000, 395, 3, 'dalene@schoeneck.org', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Dalene Schoeneck'),
(2875000, 396, 3, 'gertude.witten@gmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Gertude Witten'),
(5675000, 397, 3, 'lizbeth@yahoo.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Lizbeth Kohl'),
(4900000, 398, 3, 'gberray@gmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Glenn Berray'),
(7500000, 399, 3, 'lashandra@yahoo.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Lashandra Klang'),
(8350000, 400, 3, 'lnewville@newville.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Lenna Newville'),
(12100000, 401, 3, 'laurel@yahoo.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Laurel Pagliuca'),
(2575000, 402, 3, 'mireya.frerking@hotmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Mireya Frerking'),
(7900000, 403, 3, 'annelle@yahoo.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Annelle Tagala'),
(9925000, 404, 3, 'dean_ketelsen@gmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Dean Ketelsen'),
(11100000, 405, 3, 'levi.munis@gmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Levi Munis');
INSERT INTO `users` (`balance`, `id`, `role_id`, `email`, `password`, `username`) VALUES
(9325000, 406, 3, 'sylvie@aol.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Sylvie Ryser'),
(9275000, 407, 3, 'sharee_maile@aol.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Sharee Maile'),
(8325000, 408, 3, 'cordelia_storment@aol.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Cordelia Storment'),
(4550000, 409, 3, 'mollie_mcdoniel@yahoo.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Mollie Mcdoniel'),
(11000000, 410, 3, 'brett.mccullan@mccullan.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Brett Mccullan'),
(5500000, 411, 3, 'teddy_pedrozo@aol.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Teddy Pedrozo'),
(10875000, 412, 3, 'tasia_andreason@yahoo.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Tasia Andreason'),
(4775000, 413, 3, 'hubert@walthall.org', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Hubert Walthall'),
(9550000, 414, 3, 'arthur.farrow@yahoo.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Arthur Farrow'),
(6100000, 415, 3, 'vberlanga@berlanga.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Vilma Berlanga'),
(4425000, 416, 3, 'billye_miro@cox.net', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Billye Miro'),
(5850000, 417, 3, 'glenna_slayton@cox.net', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Glenna Slayton'),
(11600000, 418, 3, 'mitzie_hudnall@yahoo.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Mitzie Hudnall'),
(3175000, 419, 3, 'bernardine_rodefer@yahoo.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Bernardine Rodefer'),
(8900000, 420, 3, 'staci_schmaltz@aol.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Staci Schmaltz'),
(2575000, 421, 3, 'nichelle_meteer@meteer.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Nichelle Meteer'),
(5575000, 422, 3, 'jrhoden@yahoo.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Janine Rhoden'),
(3350000, 423, 3, 'ettie.hoopengardner@hotmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Ettie Hoopengardner'),
(3325000, 424, 3, 'eden_jayson@yahoo.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Eden Jayson'),
(4225000, 425, 3, 'lynelle_auber@gmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Lynelle Auber'),
(9975000, 426, 3, 'merissa.tomblin@gmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Merissa Tomblin'),
(9225000, 427, 3, 'golda_kaniecki@yahoo.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Golda Kaniecki'),
(8700000, 428, 3, 'catarina_gleich@hotmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Catarina Gleich'),
(9900000, 429, 3, 'vkiel@hotmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Virgie Kiel'),
(3225000, 430, 3, 'jolene@yahoo.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Jolene Ostolaza'),
(9350000, 431, 3, 'keneth@yahoo.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Keneth Borgman'),
(12375000, 432, 3, 'rikki@nayar.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Rikki Nayar'),
(10500000, 433, 3, 'elke_sengbusch@yahoo.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Elke Sengbusch'),
(5275000, 434, 3, 'hoa@sarao.org', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Hoa Sarao'),
(6875000, 435, 3, 'trinidad_mcrae@yahoo.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Trinidad Mcrae'),
(9350000, 436, 3, 'mari_lueckenbach@yahoo.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Mari Lueckenbach'),
(5550000, 437, 3, 'selma.husser@cox.net', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Selma Husser'),
(3800000, 438, 3, 'aonofrio@onofrio.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Antione Onofrio'),
(10750000, 439, 3, 'ljurney@hotmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Luisa Jurney'),
(11850000, 440, 3, 'clorinda.heimann@hotmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Clorinda Heimann'),
(6100000, 441, 3, 'dick@yahoo.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Dick Wenzinger'),
(9350000, 442, 3, 'ahmed.angalich@angalich.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Ahmed Angalich'),
(8550000, 443, 3, 'iluminada.ohms@yahoo.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Iluminada Ohms'),
(10350000, 444, 3, 'joanna_leinenbach@hotmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Joanna Leinenbach'),
(6775000, 445, 3, 'caprice@aol.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Caprice Suell'),
(2975000, 446, 3, 'stephane_myricks@cox.net', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Stephane Myricks'),
(11575000, 447, 3, 'quentin_swayze@yahoo.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Quentin Swayze'),
(10850000, 448, 3, 'annmarie_castros@gmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Annmarie Castros'),
(5750000, 449, 3, 'shonda_greenbush@cox.net', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Shonda Greenbush'),
(5000000, 450, 3, 'clapage@lapage.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Cecil Lapage'),
(5075000, 451, 3, 'jeanice.claucherty@yahoo.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Jeanice Claucherty'),
(6775000, 452, 3, 'josphine_villanueva@villanueva.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Josphine Villanueva'),
(7525000, 453, 3, 'dperruzza@perruzza.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Daniel Perruzza'),
(5150000, 454, 3, 'cassi.wildfong@aol.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Cassi Wildfong'),
(6425000, 455, 3, 'britt@galam.org', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Britt Galam'),
(8350000, 456, 3, 'adell.lipkin@lipkin.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Adell Lipkin'),
(12000000, 457, 3, 'jacqueline.rowling@yahoo.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Jacqueline Rowling'),
(3475000, 458, 3, 'lonny_weglarz@gmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Lonny Weglarz'),
(11425000, 459, 3, 'lonna_diestel@gmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Lonna Diestel'),
(3350000, 460, 3, 'cristal@cox.net', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Cristal Samara'),
(6550000, 461, 3, 'kenneth.grenet@grenet.org', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Kenneth Grenet'),
(7875000, 462, 3, 'emclaird@mclaird.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Elli Mclaird'),
(7975000, 463, 3, 'ajeanty@gmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Alline Jeanty'),
(9625000, 464, 3, 'sharika.eanes@aol.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Sharika Eanes'),
(9700000, 465, 3, 'nu@gmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Nu Mcnease'),
(3200000, 466, 3, 'dcomnick@cox.net', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Daniela Comnick'),
(10425000, 467, 3, 'cecilia_colaizzo@colaizzo.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Cecilia Colaizzo'),
(5900000, 468, 3, 'leslie@cox.net', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Leslie Threets'),
(9750000, 469, 3, 'nan@koppinger.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Nan Koppinger'),
(8450000, 470, 3, 'idewar@dewar.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Izetta Dewar'),
(3800000, 471, 3, 'tegan.arceo@arceo.org', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Tegan Arceo'),
(3575000, 472, 3, 'ruthann@hotmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Ruthann Keener'),
(3825000, 473, 3, 'joni_breland@cox.net', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Joni Breland'),
(11050000, 474, 3, 'vrentfro@cox.net', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Vi Rentfro'),
(3400000, 475, 3, 'colette.kardas@yahoo.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Colette Kardas'),
(7350000, 476, 3, 'malcolm_tromblay@cox.net', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Malcolm Tromblay'),
(8750000, 477, 3, 'ryan@cox.net', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Ryan Harnos'),
(7550000, 478, 3, 'jess.chaffins@chaffins.org', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Jess Chaffins'),
(3725000, 479, 3, 'sbourbon@yahoo.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Sharen Bourbon'),
(4700000, 480, 3, 'nickolas_juvera@cox.net', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Nickolas Juvera'),
(11650000, 481, 3, 'gary_nunlee@nunlee.org', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Gary Nunlee'),
(6875000, 482, 3, 'diane@cox.net', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Diane Devreese'),
(10850000, 483, 3, 'roslyn.chavous@chavous.org', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Roslyn Chavous'),
(6950000, 484, 3, 'glory@yahoo.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Glory Schieler'),
(5975000, 485, 3, 'rasheeda@aol.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Rasheeda Sayaphon'),
(9675000, 486, 3, 'alpha@yahoo.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Alpha Palaia'),
(3950000, 487, 3, 'refugia.jacobos@jacobos.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Refugia Jacobos'),
(4925000, 488, 3, 'shawnda.yori@yahoo.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Shawnda Yori'),
(3575000, 489, 3, 'mdelasancha@hotmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Mona Delasancha'),
(11050000, 490, 3, 'gilma_liukko@gmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Gilma Liukko'),
(3825000, 491, 3, 'jgabisi@hotmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Janey Gabisi'),
(6525000, 492, 3, 'lili.paskin@cox.net', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Lili Paskin'),
(3425000, 493, 3, 'loren.asar@aol.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Loren Asar'),
(6025000, 494, 3, 'dorothy@cox.net', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Dorothy Chesterfield'),
(8550000, 495, 3, 'gail_similton@similton.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Gail Similton'),
(11050000, 496, 3, 'catalina@hotmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Catalina Tillotson'),
(7325000, 497, 3, 'lawrence.lorens@hotmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Lawrence Lorens'),
(7200000, 498, 3, 'carlee.boulter@hotmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Carlee Boulter'),
(5000000, 499, 3, 'tankeny@ankeny.org', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Thaddeus Ankeny'),
(3050000, 500, 3, 'joles@gmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Jovita Oles'),
(4750000, 501, 3, 'alesia_hixenbaugh@hixenbaugh.org', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Alesia Hixenbaugh'),
(3475000, 502, 3, 'lai@gmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Lai Harabedian'),
(3750000, 503, 3, 'bgillaspie@gillaspie.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Brittni Gillaspie'),
(6300000, 504, 3, 'rkampa@kampa.org', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Raylene Kampa'),
(9175000, 505, 3, 'flo.bookamer@cox.net', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Flo Bookamer'),
(3100000, 506, 3, 'jbiddy@yahoo.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Jani Biddy'),
(5725000, 507, 3, 'chauncey_motley@aol.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'Chauncey Motley'),
(2500000, 508, 2, 'tiemanphanhphanh@gmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'tiemanphanhphanhadmin'),
(2650000, 509, 2, 'bundaumetbathanh@gmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'bundaumetbathanhadmin'),
(5000000, 510, 2, 'bunthuy@gmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'bunthuyadmin'),
(5025000, 511, 2, 'bumtro@gmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'bumtroadmin'),
(5250000, 512, 2, 'bonchonchicken@gmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'bonchonchickenadmin'),
(3750000, 513, 2, 'thepizzacompany@gmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'thepizzacompanyadmin'),
(2000000, 514, 2, 'dominopizza@gmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'dominopizzaadmin'),
(2475000, 515, 2, 'chaosuonsunvadoannhanh@gmail.com', '$2a$10$C3PVgbLNWbwyK8LV9xIqb.UypTGolP1oqM..hK7jlRK2xTKfQPYVu', 'chaosuonsunvadoannhanhadmin'),
(0, 552, 3, 'andreawilson@gmail.com', '$2a$10$rAEQ64b4x3ghXRK2csnFQODs50.BFTbX2k5XnHbtBobs6Kn04RVSa', 'Andrea Wilson'),
(0, 553, 3, 'anderson@gmail.com', '$2a$10$3ImDopWfKfXCbEtATXOO.egwyNHCgc2n0FmzIAoT0pm4TfwMapp0S', 'Anderson'),
(0, 554, 3, 'matthew_zabic@gmail.com', '$2a$10$wrljKMQSW/IdgDhGel7pLe2uCF2T1Le0e9yb9CtiwyPdsYUzJXQS.', 'Matthew Zabic'),
(0, 555, 3, 'dangrangto@gmail.com', '$2a$10$LvK7dmpYvV8k6ggfFzvU2eY.cxWipXU1p9hHSXCVzSG/YnRHEMD3m', 'Dangrangto'),
(0, 556, 3, 'mimotoka@gmail.com', '$2a$10$8KImS82fE0pqvTo5hJVDyeffwzDWuXznvACzFXWCZb.3cT4Xfpa5i', 'Mimotoka'),
(0, 557, 3, '2pillz@gmail.com', '$2a$10$8QsvUBnSb2QQqyug3HA/UeaeosKW.1UNPsRwUX7sHL409QUw3VoV2', '2pillz'),
(0, 558, 3, 'minhhuy@gmail.com', '$2a$10$l7oSYv4DFFfmba7WoMsNS.ROQvKmMJXnzR2xllKatOdXOqg3ZJsTu', 'Minh Huy'),
(0, 559, 3, 'umie@gmail.com', '$2a$10$SJoJj2WI7QOO5oXt1wHuretbSqFZB4ty.BfhIcsQ6b0xx/qLZ1QfO', 'Umie'),
(0, 560, 3, 'lyly@gmail.com', '$2a$10$rIUjyYepM6y50rXRVoVr5ughhgF0B6m7nIakRduvmtJezzwfYOAd6', 'LyLy'),
(0, 561, 3, 'mtp@gmail.com', '$2a$10$KqKq06rtnXkTsxLLzLB/0e4nf.VlSvpKZDIE8f2vQe4NcjCBJU.pK', 'Son Tung Mtp'),
(0, 562, 3, 'nguyenxuanminh@gmail.com', '$2a$10$.Fdoww1y2Gi9ZM1Pu1k5IOXwXGk8m6Zcbq9l6/mRO/G.7skY.JiPe', 'Nguyen Xuan Minh'),
(0, 563, 3, 'phucxp@gmail.com', '$2a$10$vVwWc7xZAKVY/Ni3FBjXwOjVEr4D66ixHvAMAThZf.NKygwbuQS8a', 'PhucXp'),
(0, 564, 3, 'freakD@gmail.com', '$2a$10$UdIR8bSSIuhQ69sh4YTuPOMgd5Q088a7SrjKMpLIz.9aSGBsT9zHS', 'freakD'),
(0, 565, 3, 'tuananh@gmail.com', '$2a$10$B7qCTljhlHbcTKDNjG4tXuEwEAF20cP0zschgz/PgKdQRym4b.MZS', 'Tuan Anh'),
(0, 566, 3, 'wean@gmail.com', '$2a$10$sLzyHVPP0zBnD0nRNNhJeuqWkXpTVeJdRnCUJF7AHKd8U5AKcxapK', 'WEAN'),
(0, 567, 3, 'wean1@gmail.com', '$2a$10$DV7srBA/mUaGRZ0k0fDoSOWQqTPQmfffifwwvLzxFyEPu8ruyxN4S', 'WEAN1'),
(80000, 568, 3, 'duong.dk205075@sis.hust.edu.vn', '$2a$10$Wlryb9IbDaVllF3Em.g8t./bABI1Su/uOrSIjwWE2GipBRd3ejty6', 'DuongDK2'),
(0, 569, 3, 'voibandon@gmail.com', '$2a$10$DTMTaxx8SJiR3i3DDtkb1uiPHyjdazlY0YpwOwJLfKZoApZDfjut6', 'Voi Ban Don'),
(165000, 570, 3, 'trang@gmail.com', '$2a$10$/0he2a7ifwb9Vcwgp66/yuYg5c.NPJnoP.b.KGY3ZDbmCHny5r9uu', 'Trang'),
(20000, 571, 3, 'warrentdt@gmail.com', '$2a$10$zT6cTGxiMSp6D21UQm8WiuMt6HQvP3rR/uomJK4XYPMQy1859sUEq', 'Warren DT');

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
(1, 'sysadmin'),
(2, 'admin'),
(3, 'customer');

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
  ADD KEY `FK81gagumt0r8y3rmudcgpbk42l` (`order_id`);

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
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `deposit_money_payment`
--
ALTER TABLE `deposit_money_payment`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

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
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `invoice_items`
--
ALTER TABLE `invoice_items`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `oder_items`
--
ALTER TABLE `oder_items`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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
  ADD CONSTRAINT `FK81gagumt0r8y3rmudcgpbk42l` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`);

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
