-- phpMyAdmin SQL Dump
-- version 5.1.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 12, 2024 at 12:52 PM
-- Server version: 5.7.24
-- PHP Version: 8.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bronx luggage`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `NAME` varchar(100) DEFAULT NULL,
  `thumbnail` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `NAME`, `thumbnail`) VALUES
(1, 'Luggage', 'https://images.pexels.com/photos/1058959/pexels-photo-1058959.jpeg'),
(2, 'Backpack', 'https://images.pexels.com/photos/868097/pexels-photo-868097.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
(3, 'Bag', 'https://images.pexels.com/photos/10919291/pexels-photo-10919291.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
(4, 'Men', 'https://images.pexels.com/photos/842947/pexels-photo-842947.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
(5, 'Women', 'https://images.pexels.com/photos/12663090/pexels-photo-12663090.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `grand_total` decimal(12,4) DEFAULT NULL,
  `paid` decimal(12,4) DEFAULT NULL,
  `payment_method` varchar(50) DEFAULT NULL,
  `shipping_address` varchar(100) DEFAULT NULL,
  `telephone` int(11) DEFAULT NULL,
  `customer_name` varchar(100) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `created_at`, `grand_total`, `paid`, `payment_method`, `shipping_address`, `telephone`, `customer_name`, `user_id`, `email`, `status`) VALUES
(8, '2024-10-11 02:28:54', '781.9700', '0.0000', 'COD', '185 Tran Dai Nghia', 825113336, 'Nguyen Khanh', NULL, 'quockhanh.nguyen2301@gmail.com', 0),
(9, '2024-10-11 02:29:03', '781.9700', '0.0000', 'PAYPAL', '185 Tran Dai Nghia', 825113336, 'Nguyen Khanh', NULL, 'quockhanh.nguyen2301@gmail.com', 0);

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `order_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `buy_qty` int(11) DEFAULT NULL,
  `price` decimal(12,4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`order_id`, `product_id`, `buy_qty`, `price`) VALUES
(1, 4, 10, '9.9900'),
(1, 5, 18, '19.9900'),
(1, 6, 1, '12.9900'),
(1, 7, 31, '49.9000'),
(1, 8, 8, '12.9900'),
(1, 9, 12, '9.9900'),
(2, 5, 1, '19.9900'),
(3, 5, 1, '19.9900'),
(4, 5, 1, '19.9900'),
(5, 5, 1, '19.9900'),
(5, 10, 1, '19.9900'),
(6, 5, 1, '19.9900'),
(6, 10, 1, '19.9900'),
(7, 4, 2, '9.9900'),
(7, 5, 1, '19.9900'),
(7, 10, 1, '19.9900'),
(8, 4, 2, '9.9900'),
(8, 5, 1, '19.9900'),
(8, 8, 1, '12.9900'),
(8, 10, 1, '19.9900'),
(9, 4, 2, '9.9900'),
(9, 5, 1, '19.9900'),
(9, 8, 1, '12.9900'),
(9, 10, 1, '19.9900'),
(10, 4, 2, '9.9900'),
(10, 5, 1, '19.9900'),
(10, 8, 1, '12.9900'),
(10, 10, 1, '19.9900'),
(1, 1, 4, '300.9900'),
(2, 1, 4, '300.9900'),
(3, 1, 1, '300.9900'),
(4, 1, 1, '300.9900'),
(5, 1, 1, '300.9900'),
(6, 1, 1, '300.9900'),
(7, 1, 1, '300.9900'),
(8, 1, 2, '300.9900'),
(8, 2, 1, '179.9900'),
(9, 1, 2, '300.9900'),
(9, 2, 1, '179.9900'),
(10, 1, 2, '300.9900'),
(10, 2, 1, '179.9900');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `NAME` varchar(100) DEFAULT NULL,
  `price` decimal(12,4) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `thumbnail` varchar(255) DEFAULT NULL,
  `description` text,
  `category_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `NAME`, `price`, `qty`, `thumbnail`, `description`, `category_id`) VALUES
(1, 'Travelpro Platinum Elite 21\" Expandable Carry-On Spinner', '300.9900', 80, 'https://www.luggagepros.com/cdn/shop/products/Travelpro-Platinum-Elite-21-Expandable-Carry-On-Spinner-2_1c20af77-8a6f-4b5d-8f44-9e2889115bc6_1200x.jpg?v=1681401914', 'Maximize your carry-on with sophisticated style. The Platinum Elite 21\" Expandable Carry-On Spinner delivers big on form and function with a tip-resistant expansion that offers up to 2\" more packing capacity, deluxe tie-down system, integrated accessory pockets and a removable quart-size wet pocket that is TSA compliant and perfect for toiletries. Plus, the drop-in, fold-out suiter is specifically designed to accommodate hanging clothes and prevent wrinkling.\nBuilt-in USB port lets you power up on the go, while a dedicated powerbank pocket for your back-up battery adheres to FAA regulations. Perfect for short to medium-length trips, this carry-on spinner is crafted in style with premium fabrics, genuine leather and chrome zippers. Backed by our Built for a Lifetime Limited Worry Free Warranty.', 1),
(2, 'Brics Ulisse 21\" Expandable Spinner', '179.9900', 41, 'https://www.luggagepros.com/cdn/shop/files/Brics-Ulisse-21-Expandable-Spinner_9dc850b5-8596-4456-9bd2-452e20b87813_1200x.jpg?v=1727379043', 'The 21\" carry-on trolley Ulisse collection from Bric\'s. This stylish yet urban looking carry-on is made out of Polypropylene. This is a very strong, durable and light weight material that guarantees resistance to shocks and scratches. A functional carry-on trolley that makes it the perfect companion for every trip.', 1),
(3, 'FPM Milano Bank Trunk on Wheels', '245.9900', 68, 'https://www.luggagepros.com/cdn/shop/products/FPM-Milano-Bank-Trunk-on-Wheels-2_1200x.jpg?v=1667823480', 'Trunk on Wheels – 100% Aluminum. 4-wheeled suitcase. The dual wheels guarantee great stability and smoothness. The suitcase has an incorporated TSA lock combined with two maxi butterfly locks that ensures safety. The two handles are fine Italian leather, embossed with the FPM logo. The interior of the suitcase includes handcrafted belts in fine Italian leather. The lining is padded and removable. The interior organizer allows for optimum arrangement of contents. Ideal for 13/14-day journeys.\r\n\r\n', 1),
(4, 'Chiara Ferragni\r\n', '300.9900', 50, 'https://cdn.vuahanghieu.com/unsafe/0x900/left/top/smart/filters:quality(90)/https://admin.vuahanghieu.com/upload/product/2022/12/vali-chiara-ferragni-logomania-hardshell-suitcase-mau-den-size-cabin-63abf6341d16a-28122022145428.jpg', 'Chiara Ferragni\r\nmedium Logomania travel case', 1),
(5, 'GLOBE TROTTER\r\nx GOLF Le FLEUR* 4-wheel suitcase', '600.9900', 44, 'https://hips.hearstapps.com/vader-prod.s3.amazonaws.com/1691520722-LARGE-CHECK-IN-CRM-01_2048x.jpg?crop=1xw:1.00xh;center,top&resize=980:*', 'GLOBE TROTTER\nx GOLF Le FLEUR* 4-wheel suitcase\n\nMade in United Kingdom', 1),
(6, 'Nike Utility Elite\r\nBackpack (37L)', '170.9900', 68, 'https://media.jdsports.com/i/jdsports/FN4173_010_P4?$default$&w=670&h=670&bg=rgb(237,237,237)', 'Hate putting your dirty shoes in the same compartment as the rest of your stuff? We\'ve got the bag for you. A partition in the main compartment helps keep your sneakers separate from the rest of your gear, while another zip pocket securely stores your laptop. An insulated hydration pocket on the side and a padded back with a luggage pass-through help make this the ultimate bag for commuting or travel.', 2),
(7, 'Nike Brasilia 9.5\nTraining Duffel Bag (Medium, 60L)', '60.9900', 17, 'https://www.nike.sa/dw/image/v2/BDVB_PRD/on/demandware.static/-/Sites-akeneo-master-catalog/default/dw746d4ea5/nk/178/9/a/d/9/b/1789ad9b_8965_4c60_bb1d_10d0031e0cf6.jpg?sw=700&sh=700&sm=fit&q=100&strip=false', 'The spacious and durable Nike Brasilia Duffel Bag keeps all your training gear at hand. A side compartment stores shoes separately, while inner and outer pockets help you stay organised. This product is made from at least 65% recycled polyester fibres.\r\n\r\n', 2),
(8, 'Nike Hike\r\nDuffel Bag (50L)', '150.9900', 68, 'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/c712ccd3-b037-4f7b-a101-1d97c61053ce/NK+BRSLA+L+DUFF+-+9.5+%2895L%29.png', 'Take your gear from car to campsite with the Nike Hike Duffel. Its water-resistant fabric works with a storm flap over the zip of the spacious main compartment to help keep your gear dry. A pass-through pocket on the outside holds an umbrella or walking stick, while internal pockets provide storage and organisation for smaller items. Plus, an adjustable shoulder strap and dual handles give you comfortable carrying options.', 2),
(9, 'Nike Utility Elite\r\nBackpack (37L)', '70.9900', 44, 'https://www.nike.ae/dw/image/v2/BDVB_PRD/on/demandware.static/-/Sites-akeneo-master-catalog/default/dwf3805463/nk/391/3/c/0/3/d/3913c03d_66c0_4ae0_9489_e03af4e769bf.jpg?sw=700&sh=700&sm=fit&q=100&strip=false', 'Hate putting your dirty shoes in the same compartment as the rest of your stuff? We\'ve got the bag for you. A partition in the main compartment helps keep your sneakers separate from the rest of your gear, while another zip pocket securely stores your laptop. An insulated hydration pocket on the side and a padded back with a luggage pass-through help make this the', 2),
(10, 'Low Battery Backpack', '49.9900', 16, 'https://ih1.redbubble.net/image.5435330505.3978/ur,backpack_front,square,600x600.jpg', 'A backback with a low battery printed on the back.', 2);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `full_name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD KEY `product_id` (`product_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
