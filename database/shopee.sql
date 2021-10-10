

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";



--
-- Database: `shopee`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cart_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `item_id` int(11) NOT NULL,
  `item_brand` varchar(200) NOT NULL,
  `item_name` varchar(255) NOT NULL,
  `item_price` double(10,2) NOT NULL,
  `item_image` varchar(255) NOT NULL,
  `item_register` datetime DEFAULT NULL,
  `item_desc` varchar(255) NOT NULL,
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`item_id`, `item_brand`, `item_name`, `item_price`, `item_image`, `item_register`, `item_desc`) VALUES
(1, 'Oro', 'Aretes Sybillan', 152.00, './assets/products/1.png', '2021-09-25 11:08:57', 'Aretes Sybllan de oro con figura floral, dale un toque delicado a tus accesorios.'), -- NOW()
(2, 'Plata', 'Manilla Wonder', 122.00, './assets/products/2.png', '2021-09-25 11:08:57', 'Manilla Wonder de plata, con detalles violetas.'),
(3, 'Oro', 'Anillo Dahla', 122.00, './assets/products/3.png', '2021-09-25 11:08:57', 'Anillo Dahla. Tiene un diamante celeste.'),
(4, 'Bronce', 'Pulsera Beverlly', 122.00, './assets/products/4.png', '2021-09-25 11:08:57', 'Pulsera Beverlly cadena triple de bronce.'),
(5, 'Oro', 'Collar fill', 122.00, './assets/products/5.png', '2021-09-25 11:08:57', 'Collar fill set de aretes, gargantilla y collar.'),
(6, 'Oro', 'Anillo promise', 122.00, './assets/products/6.png', '2021-09-25 11:08:57', 'Anillo promise de oro.'),
(7, 'Plata', 'Anillos lovely', 122.00, './assets/products/7.png', '2021-09-25 11:08:57', 'Anillos lovely de plata - pareja de anillos ideal para parejas.'),
(8, 'Plata', 'Pulsera Haru', 122.00, './assets/products/8.png', '2021-09-25 11:08:57', 'Pulsera Haru con figura "S"'),
(9, 'Oro', 'Pulsera Corazón', 152.00, './assets/products/9.png', '2021-09-25 11:08:57'),
(10, 'Oro', 'Pulsera Galaxy Night', 152.00, './assets/products/10.png', '2021-09-25 11:08:57'),
(11, 'Oro', 'Pulsera Queendom', 152.00, './assets/products/11.png', '2021-09-25 11:08:57'),
(12, 'Plata', 'Pulsera Silver', 152.00, './assets/products/12.png', '2021-09-25 11:08:57'),
(13, 'Oro', 'Golden set', 152.00, './assets/products/13.png', '2021-09-25 11:08:57'),
(14, 'Oro', 'Aretes Silver', 152.00, './assets/products/14.png', '2021-09-25 11:08:57', 'Aretes Silver de oro, con detalle colgante.'),
(15, 'Oro', 'Pulsera Galaxy Night', 152.00, './assets/products/15.png', '2021-09-25 11:08:57', 'Pulsera Galaxy Night de eslabones de oro con detalles silver.'),
(16, 'Oro', 'Pulsera Queendom', 152.00, './assets/products/16.png', '2021-09-25 11:08:57'),
(17, 'Plata', 'Pulsera Blue Sky', 152.00, './assets/products/17.png', '2021-09-25 11:08:57'),
(18, 'Plata', 'Pulsera Golden Star', 152.00, './assets/products/18.png', '2021-10-09 11:08:57'),
(19, 'Plata', 'Pulsera Violet', 152.00, './assets/products/19.png', '2021-10-09 11:08:57'),
(20, 'Plata', 'Anillo Red Ocean', 152.00, './assets/products/20.png', '2021-10-09 11:08:57'),
(21, 'Plata', 'Anillo Cian Sky', 152.00, './assets/products/21.png', '2021-10-09 11:08:57'),
(22, 'Plata', 'Cadena oro', 152.00, './assets/products/22.png', '2021-10-09 11:08:57'),
(23, 'Plata', 'Cadena plata', 152.00, './assets/products/23.png', '2021-10-09 11:08:57'),
(24, 'Plata', 'Anillo Rio', 152.00, './assets/products/24.png', '2021-10-09 11:08:57');

;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `register_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `first_name`, `last_name`, `register_date`) VALUES
(1, 'Daily', 'Tuition', '2021-09-25 13:07:17'),
(2, 'Akshay', 'Kashyap', '2021-09-25 13:07:17');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `cart_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cart_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`item_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cart_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */