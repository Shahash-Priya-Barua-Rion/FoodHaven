-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 22, 2024 at 04:34 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `foodhaven`
--

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `feedbackText` varchar(500) NOT NULL,
  `feedbackID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

CREATE TABLE `locations` (
  `locationID` int(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `restaurantID` int(255) NOT NULL,
  `address` varchar(500) NOT NULL,
  `map` varchar(400) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `locations`
--

INSERT INTO `locations` (`locationID`, `location`, `restaurantID`, `address`, `map`) VALUES
(1, 'Bashundhara', 1, 'Level 5, Jamuna Future Park, 9 Progati Sarani Rd, Dhaka', 'https://maps.app.goo.gl/39wVZ1JMQcTeSRWy9'),
(2, 'Ramna', 1, 'Police Women Welfare Society Complex, 2nd Floor, Moghbazar Rd, Dhaka 1217', 'https://maps.app.goo.gl/qHFASV3VYwWMLNhdA'),
(3, 'Dhandmondi', 1, '736, Level - 3 No, Rang,s KB Square, 9/A Satmasjid Road, Dhaka 1209', 'https://maps.app.goo.gl/WrMmSVaWGMJd9WEh6'),
(4, 'Uttara', 1, '17 Sonargaon Janapath, Dhaka 1230', 'https://g.co/kgs/GX5XWi4'),
(5, 'Tejgaon', 1, '222, Bir Uttam Mir Shawkat Sarak, Dhaka 1208', 'https://g.co/kgs/btCuA52'),
(6, 'Mirpur 11', 1, 'Sagufta RM Center Plot #16&17(L-G) Main road, Mirpur 11, Dhaka 1216\r\n', 'https://g.co/kgs/G1gheP3'),
(7, 'Pallabi', 1, 'R998+54W, Dhaka 1216', 'https://g.co/kgs/RPyvCgc'),
(8, 'Dhanmondi', 3, ' \r\n 	\r\n146/G (Old), 59, Green Akshay Plaza, 1st Floor, New Satmasjid Road, Dhaka 1209', 'https://g.co/kgs/S3UVRH9'),
(9, 'Gulshan', 3, '1st floor, Samsuddin Mansion, House: 41 Road: 52, Dhaka 1212', 'https://g.co/kgs/fUcLmZS'),
(10, 'Uttara', 3, ' \r\n 	\r\nH-1/B(1st floor, Quantum Emerald Point, Gareeb-e-Nawaz Ave, Dhaka 1230', 'https://g.co/kgs/8MJKS8t'),
(11, 'Mirpur', 3, 'S. Ali Tower, plot no-22, Section-6/A, Main road-1, Mirpur-6 Dhaka, 1217', 'https://g.co/kgs/yLd82p6'),
(12, 'Banani', 4, ' \r\n 	\r\nAwal center, 34 Kemal Ataturk Ave, Dhaka 1213', 'https://g.co/kgs/VZWBQK2'),
(13, 'Dhanmondi', 4, ' \r\n 	\r\n754/B Satmasjid Road, Dhaka 1205', 'https://g.co/kgs/Av3z9XK'),
(14, 'Uttara', 5, '24 Rd No 10B, Dhaka 1230', 'https://g.co/kgs/61Ew55E'),
(15, 'Uttara Flagship', 5, 'Shahjadi Palace, H-39, R-18, Dhaka', 'https://g.co/kgs/GGJnh21'),
(16, ' \r\n 	\r\nBashundhara', 5, '442 New Apollo Rd, Dhaka 1229', 'https://g.co/kgs/ZQQwjqh'),
(17, 'Mirpur\r\n', 5, 'Block C, Avenue 5, Dhaka 1216', 'https://g.co/kgs/NQt4keH'),
(18, 'Banani', 5, 'Block-E, 2nd Floor, House-116 Rd No. 11, Dhaka 1212\r\n', 'https://g.co/kgs/xrqBcmb'),
(19, 'Rampura', 5, 'Century Center, DIT Road, Merul Badda Beside Brac University (under construction Dhaka North, 1212', 'https://g.co/kgs/dcDm19q'),
(20, 'Khilgaon', 5, '397/B Malibagh Chowdhury Para Road, Shahid Baki Rd, Dhaka 1219', 'https://g.co/kgs/5LxVttV'),
(21, 'Mirpur 12', 5, '2nd Floor, 12/A, 6/57, Near Gold wing Niharika Mirpur -1216, Dhaka 1216', 'https://g.co/kgs/VHRE1w6'),
(22, 'Baily Road', 5, 'Green Cozy Cottage, Level-3, 02 New Bailey Rd, Dhaka 1217', 'https://g.co/kgs/ZWv17QQ'),
(23, 'Dhanmondi', 5, 'House: 146/D(Old), 42(New), Road, 2 Satmasjid Road, Dhaka 1207', 'https://g.co/kgs/1J5Ccz6'),
(24, 'Mohammadpur', 5, 'House No. Y, 8 Nurjahan Rd, Dhaka 1207', 'https://g.co/kgs/xeXHAj8'),
(25, 'Shyamoli', 5, '18/3 Hazi Chinu Mia Road, Ring Road, Tikka Para Rd, Dhaka 1207', 'https://g.co/kgs/7RCmGtq'),
(26, 'Uttara', 2, 'House No, 4th Floor, Jewel Tower, 34 Gareeb-e-Nawaz Ave, Dhaka 1230', 'https://g.co/kgs/HGkd3nH'),
(27, 'Mirpur', 2, '2nd Floor, Senpara Porbota, Plot 13 Rd No 1, Dhaka 1216', 'https://g.co/kgs/ExCr9zo'),
(28, 'Banani', 2, ' \r\n 	\r\n5th Floor, Plot 47, Block H Road No. 11, Dhaka 1213', 'https://g.co/kgs/1qfchV7'),
(29, 'Dhanmondi', 2, 'House 49/A, Rangs KB Square, 4th Floor, Satmasjid Road, Dhaka 1209', 'https://g.co/kgs/ZLkdxET'),
(30, 'Gulshan', 2, 'QCG9+627, Rd 137, Dhaka 1212', 'https://g.co/kgs/Rg7Dowz'),
(31, 'Wari', 2, '24/A Tipu Sultan Road, Valencia Building, (near Wari Thana), Dhaka 1203', 'https://g.co/kgs/nPY5wjR'),
(32, 'Bailey Road', 2, 'Near mohila shomiti, 4 Bailey Rd, Dhaka 1000', 'https://g.co/kgs/MTjprkC'),
(33, 'Uttara', 6, 'House 24 (Level 3), Road 10/B, Gareeb-e-Nawaz Ave, Dhaka 1230', 'https://g.co/kgs/Bbw4BHM'),
(34, 'Dhanmondi', 6, 'Level 5, Ahmad & Kazi Tower, House 35 Dhanmondi 2, Dhaka 1209', 'https://g.co/kgs/eK3c4vi');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `menuID` int(100) NOT NULL,
  `restaurantID` int(100) NOT NULL,
  `menuName` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`menuID`, `restaurantID`, `menuName`) VALUES
(1, 1, 'Takeout Menu'),
(2, 2, 'Madchef Menu'),
(3, 3, 'Sultan\'s Dine Menu'),
(4, 4, 'The Manhattan Fish Market Menu'),
(5, 5, 'Khana\'s Menu'),
(6, 6, 'Dimsum Town\'s Menu');

-- --------------------------------------------------------

--
-- Table structure for table `menuitem`
--

CREATE TABLE `menuitem` (
  `itemID` int(100) NOT NULL,
  `menuID` int(100) NOT NULL,
  `itemName` varchar(200) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `price` int(100) NOT NULL,
  `imagePath` varchar(400) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `menuitem`
--

INSERT INTO `menuitem` (`itemID`, `menuID`, `itemName`, `description`, `price`, `imagePath`) VALUES
(1, 1, 'Chick in Hot Salsa', 'A base of Salsa blended with onions, chilies & capsicum to complement our chicken patties, topped with jalapenos to make a zesty & hot burger experience.', 195, '/webapp/images/Chick in Hot Salsa.jpg'),
(2, 1, 'Eggeroni', 'Not just your run of the mill egg Burger. It comes with Cheese & Chicken Pepperoni all stuffed in together in an Egg Patty!', 125, '/webapp/images/Eggeroni.jpg'),
(3, 1, 'Chicken Supreme', 'Massive double chicken patties with stuffed cheese cooked with our special BBQ sauce and topped with chicken bacon and slice of cheddar cheese. It is served with our secret sauce in flavour of your choice, fresh onions, lettuce and a cushion of perfectly baked buns.', 515, '/webapp/images/Chicken Supreme.jpg'),
(4, 1, 'Beef Cheese Delight', 'The most cheeselicious buger in offer with juicy double beef patties combined together with stuffed melted cheese that compliments your taste. It is served with our secret sauce in flavour of your choice, fresh onions, lettuce and a cushion of perfectly baked buns.', 385, '/webapp/images/Beef Cheese Delight.jpg'),
(5, 1, 'Panda Katsu', 'Inspired by Japanese katsu Chicken, you will find a unique taste of Tonkatsu sauce and Zesty Coleslaw! Panda katsu Burger has a crispy chicken patty which is being served with Tonkatsu sauce and Zesty Colslaw made by our own Sceret Recipe.', 315, '/webapp/images/Panda Katsu.jpg'),
(6, 1, 'BBQ Beef Burger', 'Enjoy a complex but unique taste of a beef patty cooked to perfection with bbq sauce on top & placed on our secret sauce of your flavor with fresh slices of lettuce, tomatoes, onions & a cushion of comfortable buns', 275, '/webapp/images/BBQ Beef Burger.jpg'),
(7, 1, 'Twister', 'This is our most unique burger as it is mixed with minced beef & shredded halal beef bacon to form a beef patty. It is served with secret sauce of your flavor, fresh onions, lettuce and a cushion of comfortable buns. For an amazing experince, add cheese', 295, '/webapp/images/Twister.jpg'),
(8, 1, 'Velvet Strawberry', 'For lovers of strawberry shakes this is the ultimate go to shake! Creamy strawberry shake blended with slightly cheesy taste & salty biscuit crumbs & more strawberry jam to go with!', 355, '/webapp/images/Velvet Strawberry.jpg'),
(9, 2, 'Achari Rice', 'Achari flavored fried rice served with katsu chicken. Comes with a choice of garlic or naga flavor', 285, '/webapp/images/Achari Rice.jpg'),
(10, 2, 'Gyro Chicken Over Cajun Fries', 'Cajun flavored potato fries topped with melted cheddar cheese, gyro chicken & mint yogurt sauce', 361, '/webapp/images/Gyro Chicken Over Cajun Fries.jpg'),
(11, 2, 'Madame Lucy', 'Beef cheeseburger topped with chicken sausage gravy & beef bacon', 428, '/webapp/images/Madame Lucy.jpg'),
(12, 2, 'Mushroom Melt', 'Beef cheese burger topped with mushroom & chicken gravy', 361, '/webapp/images/Mushroom Melt.jpg'),
(13, 2, 'Fried Chicken Wings', 'Deep-fried chicken wings dipped in selected of sauce', 380, '/webapp/images/Fried Chicken Wings.jpg'),
(14, 2, 'Spicy Cajun Fries', 'Classic french fries sprinkled with cajun spice', 151, '/webapp/images/Spicy Cajun Fries.jpg'),
(15, 2, 'Deep Fried Paneer Sticks', 'Deshi cottage cheese sticks fried with breadcrumbs; Served with deshi mint chutney', 380, '/webapp/images/Deep Fried Paneer Sticks.jpg'),
(16, 2, 'Wings Feast', 'Consists of 8 pcs original wings, 8 pcs buffalo wings, 8 pcs naga wings, onion rings & large french fries', 1220, '/webapp/images/Wings Feast.jpg'),
(17, 3, 'Basmati Kachi - Half', 'A delightful preparation of slow cooked aromatic basmati rice layered with potato', 299, '/webapp/images/Basmati Kachi - Half.jpg'),
(18, 3, 'Basmati Kachi Half with Borhani', 'A delightful preparation of slow cooked aromatic basmati rice layered with potato served with Choice of Jorda or Firni', 420, '/webapp/images/Basmati Kachi Half with Borhani.jpg'),
(19, 3, 'Basmati Kachi half with Chicken Roast, Borhani and Jali Kebab', 'A delightful preparation of slow cooked aromatic basmati rice layered with potato served with chicken Roast, Borhani and Jali Kebab', 549, '/webapp/images/Basmati Kachi half with Chicken Roast, Borhani and Jali Kebab.jpg'),
(20, 3, 'Borhani ', '1 glass of refreshing borhani as a perfect accompaniment to a meal', 70, '/webapp/images/Borhani.jpg'),
(21, 3, 'Zafrani Sharbat', 'A delectanble Sweet drink with natural essence', 90, '/webapp/images/Zafrani Sharbat.jpg'),
(22, 3, 'Chicken Jali Kebab', 'Meaty Jali Perfectly goes with your dishes', 60, '/webapp/images/Chicken Jali Kebab.jpg'),
(23, 3, 'Plain Polao', 'Plainly cooked flavourful polao rice', 120, '/webapp/images/Plain Polao.jpg'),
(24, 3, 'Chicken Roast', 'Traditional chicken roast coocked with herb and spices', 150, '/webapp/images/Chicken Roast.jpg'),
(25, 4, 'Fried Country Mushrooms', 'Mushrooms are the new superfood! Enjoy juicy button mushrooms served with a homemade Cajun Honey Mustard sauce.', 599, '/webapp/images/Fried Country Mushrooms.jpg'),
(26, 4, 'Fried Calamari', 'Lightly battered calamari and veggie sticks, fried to a crunchy golden brown and served with a Smoky Chipotle sauce for an extra kick.', 599, '/webapp/images/Fried Calamari.avif'),
(27, 4, 'Spicy Baked Fish', 'Get ready to jumpstart your senses! Savor a baked dory fillet in an extra-spicy marinade, complemented with Garlic Herb rice and hot veggies.', 1099, '/webapp/images/Spicy Baked Fish.jpg'),
(28, 4, 'Mediterranean Baked Fish', 'A hot favorite with the ladies. You\'ll love this dory fillet baked in an aromatic blend of herbs and spices, served with Garlic Herb rice and hot veggies.', 1099, '/webapp/images/Mediterranean Baked Fish.jpg'),
(29, 4, 'Grilled Salmon', 'Full-Flavored Salmon Served With a Black Pepper Sauce.', 1899, '/webapp/images/Grilled Salmon.jpg'),
(30, 4, 'Sizzling Brownie with ice-cream', 'Warm delicious brownie topped with smooth vanilla ice-cream and nuts and drizzled with sizzling caramel sauce. A rich sensation in every bite!', 549, '/webapp/images/Sizzling Brownie with ice-cream.jpg'),
(31, 4, 'Vanilla milkshake', 'Creamy and rich, it is the good old-fashioned milkshake at its best! ', 399, '/webapp/images/vmTest1.webp'),
(32, 4, 'Sweet ALABAMA', 'An indulging treat of chocolate, peanut butter and vanilla ice-cream-delightful for your sweet tooth.', 399, '/webapp/images/vmTest3.jpg'),
(33, 5, 'Hunter Beef Sub', 'Sliced hunter beef, cheddar, tangy BBQ sauce, freshly chopped vegetables, and Khana\'s secret sauce.', 304, '/webapp/images/Hunter Beef Sub.jpg'),
(34, 5, 'Chicken Sandwich Sub', 'Grilled chicken patty, freshly chopped vegetables, tangy BBQ sauce, and Khana\'s secret sauce.', 209, '/webapp/images/Chicken Sandwich Sub.jpg'),
(35, 5, 'Chicken Pastrami Sandwich', 'Sliced pastrami chicken, cheddar, tangy BBQ sauce, and butter toasted bread.', 344, '/webapp/images/Chicken Pastrami Sandwich.jpg'),
(36, 5, 'Smoked Chicken Sandwich', 'Smoked chicken, cheddar, garlic sauce, and toasted bread.', 229, '/webapp/images/Smoked Chicken Sandwich.jpg'),
(37, 5, 'Beef Bacon', 'Flame grilled beef patty, beef bacon, sliced cheddar, smoked bbq, caramelized onions, and Khana\'s secret sauce', 329, '/webapp/images/Beef Bacon.jpg'),
(38, 5, 'Chicken PREMIUM', 'Giant chicken patty, sliced cheddar, chicken chilli bologna, fresh veg, and Khana\'s secret sauce.', 229, '/webapp/images/Chicken PREMIUM.jpg'),
(39, 5, 'FAT MAMBA', 'Flame grilled beef patty, chicken patty, bacon, chicken chilli bologna, egg, fresh veg, smoked bbq, and Khana\'s secret sauce.', 549, '/webapp/images/FAT MAMBA.jpg'),
(40, 5, 'Khana\'s TRYFELE FRIES', 'Hand crafted potatoes with tangy sauce and shredded parmesan.', 159, '/webapp/images/Khana\'s TRYFELE FRIES.jpg'),
(41, 6, 'Chicken& Lemongrass Siu Mai', 'Indulge in our Chicken Lemongrass Sui Mai, a tantalizing fusion of succulent chicken, fragrant lemongrass, and delicate dumpling perfection. Bursting with zesty flavors and irresistible aromas, it\'s the perfect appetizer to kickstart your culinary journey at Dimsum Town', 335, '/webapp/images/Chicken& Lemongrass Siu Mai.jpg'),
(42, 6, 'Prawn Tempura', 'Succulent prawns, lightly coated and fried to golden perfection, offering a crispy outer layer with a tender, flavorful core. Indulge in our Prawn Tempura for a delightful blend of crunch and succulence in every bite.', 638, '/webapp/images/Prawn Tempura.jpg'),
(43, 6, 'Nori-Wrap Prawn Siu Mai', 'Discover the perfect fusion of flavors with our Nori-Wrap Prawn Siu Mai, where succulent prawns are delicately wrapped in seaweed, creating a harmonious blend of oceanic freshness and savory delight. Each bite offers a tantalizing burst of flavor, elevating your dim sum experience to new heights', 398, '/webapp/images/Nori-Wrap Prawn Siu Mai.jpg'),
(44, 6, 'Crab Cream & Cheese Rangoon', 'Experience a delectable fusion of flavors with our Crab Cream & Cheese Rangoon, where creamy crab filling meets rich cheese in a crispy golden shell. Each bite offers a delightful burst of indulgence, perfect for satisfying your cravings.', 375, '/webapp/images/Crab Cream & Cheese Rangoon.jpg'),
(45, 6, 'White Snapper with Sze-Chuan Chilli Sauce', 'White snapper severed with chilli fish cooked in sze-chuan style', 1099, '/webapp/images/White Snapper with Sze-Chuan Chilli Sauce.jpg'),
(46, 6, 'General Tso\'s Chicken', 'Perfect combination of sweet, savoury, spicy and tangy with crispy Chinese chicken bites', 375, '/webapp/images/General Tso\'s Chicken.jpg'),
(47, 6, 'Hong Kong Chicken Rice Bowl', 'Hong Kong Chicken and Kung Pao vegetables served with egg fried rice', 480, '/webapp/images/Hong Kong Chicken Rice Bowl.jpg'),
(48, 6, 'Coconut Mango with Ice Cream', 'Combination of coconut and mango with vanilla ice-cream', 355, '/webapp/images/Coconut Mango with Ice Cream.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `restaurant`
--

CREATE TABLE `restaurant` (
  `restaurantID` int(20) NOT NULL,
  `restaurantName` varchar(20) NOT NULL,
  `description` text NOT NULL,
  `openingHours` varchar(40) NOT NULL,
  `email` varchar(100) NOT NULL,
  `contactNumber` varchar(20) NOT NULL,
  `rating` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `restaurant`
--

INSERT INTO `restaurant` (`restaurantID`, `restaurantName`, `description`, `openingHours`, `email`, `contactNumber`, `rating`) VALUES
(1, 'Takeout', 'Crazing Americana in Dhaka? Takeout delivers, with juicy burgers and zesty Tex-Mex in a sleek, modern haven for casual culinary adventures.', '11AM-11PM', 'info@bdtakeout.com', '01847-290010', '4.3/5'),
(2, 'Madchef', 'From A Small Food Cart In Dhanmondi To A Popular Hangout Spot For Thousands With 6 Branches In Dhaka And Sylhet, We Sure Have Come A Long A Way! We Are Grateful To All Our Loyal Fans For The Love And Support Throughout The Years.', '10AM-10PM', 'hello@madchef.com.bd', '0 1749 9603 63‬', '4.0/5.0'),
(3, 'Sultan\'s Dine', 'Sultan’s Dine serves as an oasis of culinary history in the bustling heart of Dhaka, famed for offering the authentic and halal flavors of Kacchi to every Table.', '12PM – 11PM', 'info@sultansdinebd.com', '01775-003218', '4.2/5.0'),
(4, 'The Manhattan Fish M', 'Our guests are served with lip-smacking American-style seafood such as the famous Manhattan Fish ‘N Chips, the all-time favourite Garlic Herb Mussels and the legendary Manhattan Flaming Seafood Platter.', '11AM-11PM', 'info@MFMbd.com', '01775-015618', '4.4/5.0'),
(5, 'Khana\'s', 'Khana\'s, a dream that came out of a street food cart concept \"Ande Khana\" to popular fast-food chain. Inspired from the business model of a street side egg seller, Ande Khana was brought into existence in 2012.\r\nSoon \"Ande Khana\" the street food cart is transformed into a QSR. Thus, a new brand is born, \"Khana\'s\". The love and passion for delivering affordable quality food to the foodaholics is the prime driver of Khana\'s adoration and evolution.', '11AM - 10PM', 'info@khanas.net', '01726 805 954', '4.7/5.0'),
(6, 'Dimsum Town', 'A Pan-Asian Culinary Extravaganza: Where tradition meets innovation on the plate', '11AM-12AM', 'dimsumtown.bd@gmail.com', '01721-078111', '4.8/5.0');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `userName` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `userID` int(100) NOT NULL,
  `admin` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userName`, `email`, `password`, `userID`, `admin`) VALUES
('batman', 'batmanisgay@gmail.com', '12345', 5, 0),
('spoiderman', 'spoiderman@gmail.com', '123', 6, 1),
('asmita', 'asmita@gmail.com', '13579', 7, 0),
('asfe', 'asfe@gmail.com', '1122', 8, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`feedbackID`);

--
-- Indexes for table `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`locationID`),
  ADD KEY `restaurantID` (`restaurantID`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`menuID`),
  ADD KEY `menu_ibfk_1` (`restaurantID`);

--
-- Indexes for table `menuitem`
--
ALTER TABLE `menuitem`
  ADD PRIMARY KEY (`itemID`),
  ADD KEY `menuID` (`menuID`);

--
-- Indexes for table `restaurant`
--
ALTER TABLE `restaurant`
  ADD PRIMARY KEY (`restaurantID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `feedbackID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `locations`
--
ALTER TABLE `locations`
  MODIFY `locationID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `menuID` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `menuitem`
--
ALTER TABLE `menuitem`
  MODIFY `itemID` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `restaurant`
--
ALTER TABLE `restaurant`
  MODIFY `restaurantID` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `userID` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `locations`
--
ALTER TABLE `locations`
  ADD CONSTRAINT `locations_ibfk_1` FOREIGN KEY (`restaurantID`) REFERENCES `restaurant` (`restaurantID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `menu`
--
ALTER TABLE `menu`
  ADD CONSTRAINT `menu_ibfk_1` FOREIGN KEY (`restaurantID`) REFERENCES `restaurant` (`restaurantID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `menuitem`
--
ALTER TABLE `menuitem`
  ADD CONSTRAINT `menuitem_ibfk_1` FOREIGN KEY (`menuID`) REFERENCES `menu` (`menuID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
