-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 10, 2023 at 05:04 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `undira`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(1, 'Keuangan'),
(2, 'Ujian');

-- --------------------------------------------------------

--
-- Table structure for table `keys`
--

CREATE TABLE `keys` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `key` varchar(40) NOT NULL,
  `level` int(2) NOT NULL,
  `ignore_limits` tinyint(1) NOT NULL DEFAULT 0,
  `is_private_key` tinyint(1) NOT NULL DEFAULT 0,
  `ip_addresses` text DEFAULT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `keys`
--

INSERT INTO `keys` (`id`, `user_id`, `key`, `level`, `ignore_limits`, `is_private_key`, `ip_addresses`, `date_created`) VALUES
(1, 1, 'eky', 1, 0, 0, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `foto` varchar(100) NOT NULL,
  `category_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `publish_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `title`, `description`, `foto`, `category_id`, `user_id`, `publish_date`) VALUES
(1, 'Pembayaran', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Corrupti voluptatum quisquam pariatur ratione minus obcaecati ipsum labore quidem? Et, commodi. Est unde non quos repudiandae inventore excepturi nobis architecto sapiente. Lorem ipsum dolor sit amet consectetur adipisicing elit. Unde, recusandae saepe! Laborum atque temporibus ipsam ullam dolorem? Dignissimos accusamus aperiam veritatis aliquid quasi quisquam temporibus explicabo quis. Aliquid aliquam distinctio laboriosam quaerat earum totam, dignissimos nostrum consequuntur nihil? Tenetur illo perspiciatis itaque libero corporis commodi ea consequuntur ratione obcaecati harum quasi distinctio voluptate labore, exercitationem tempora, dolorem dolores quae vel iure! Voluptas ratione quia deserunt vero tenetur accusantium debitis, iusto consequuntur non a magni voluptatem nisi inventore aspernatur impedit ut. Harum recusandae dolor deleniti, nemo suscipit, sapiente vitae ipsum inventore magnam beatae eos earum mollitia nisi consectetur dolores eveniet nihil. ', 'tes2.webp', 1, 1, '2022-08-14 03:35:34'),
(2, 'UAS 2022', 'This is a wider card with supporting text below as a\r\n                                        natural lead-in to additional content. This content is a\r\n                                        little bit longer Lorem ipsum dolor, sit amet consectetur adipisicing elit. Sint nulla ipsam fugit eaque provident eum alias esse, repudiandae est labore et itaque sequi. Suscipit, eius hic voluptas fuga quisquam libero eligendi rem eos molestias ea nulla est reprehenderit ex dolores accusamus voluptatibus ab ad corporis, quae quidem ipsum unde! Repellendus ratione deleniti culpa fugit quia, assumenda nostrum perspiciatis velit libero dolorum voluptatem consectetur veniam. Neque adipisci iste repellendus labore animi autem quam nihil amet repudiandae delectus asperiores minima eum facilis porro dolorum enim accusantium quas totam, ut cumque ipsam! Earum ipsa accusamus, itaque quas voluptatum reiciendis voluptate consectetur quidem harum explicabo modi beatae, quaerat perferendis, ad commodi culpa? Iure deserunt beatae possimus laboriosam ratione sed animi quod molestias tempora ut, eligendi esse saepe doloribus cum earum voluptatibus voluptatem, dignissimos necessitatibus sit officiis. Minima, incidunt explicabo temporibus dolorem non, iusto optio obcaecati ratione aut doloribus ad. Expedita aperiam eveniet esse exercitationem consectetur corporis tempora ipsam necessitatibus, blanditiis placeat eius quam voluptas est ex delectus dolorem nobis accusantium laudantium. Maxime aliquam magni impedit mollitia! Ipsa tempora, iste, quia eum voluptatibus suscipit, eius ipsam totam odio necessitatibus voluptatem. Ex at autem, voluptatem necessitatibus illo quo dignissimos nulla! Obcaecati expedita alias error assumenda! Dolore.', 'tes1.webp', 2, 2, '2022-08-05 11:22:26'),
(3, 'UTS 2022', 'This is a wider card with supporting text below as a\r\n                                        natural lead-in to additional content. This content is a\r\n                                        little bit longer Lorem ipsum dolor, sit amet consectetur adipisicing elit. Sint nulla ipsam fugit eaque provident eum alias esse, repudiandae est labore et itaque sequi. Suscipit, eius hic voluptas fuga quisquam libero eligendi rem eos molestias ea nulla est reprehenderit ex dolores accusamus voluptatibus ab ad corporis, quae quidem ipsum unde! Repellendus ratione deleniti culpa fugit quia, assumenda nostrum perspiciatis velit libero dolorum voluptatem consectetur veniam. Neque adipisci iste repellendus labore animi autem quam nihil amet repudiandae delectus asperiores minima eum facilis porro dolorum enim accusantium quas totam, ut cumque ipsam! Earum ipsa accusamus, itaque quas voluptatum reiciendis voluptate consectetur quidem harum explicabo modi beatae, quaerat perferendis, ad commodi culpa? Iure deserunt beatae possimus laboriosam ratione sed animi quod molestias tempora ut, eligendi esse saepe doloribus cum earum voluptatibus voluptatem, dignissimos necessitatibus sit officiis. Minima, incidunt explicabo temporibus dolorem non, iusto optio obcaecati ratione aut doloribus ad. Expedita aperiam eveniet esse exercitationem consectetur corporis tempora ipsam necessitatibus, blanditiis placeat eius quam voluptas est ex delectus dolorem nobis accusantium laudantium. Maxime aliquam magni impedit mollitia! Ipsa tempora, iste, quia eum voluptatibus suscipit, eius ipsam totam odio necessitatibus voluptatem. Ex at autem, voluptatem necessitatibus illo quo dignissimos nulla! Obcaecati expedita alias error assumenda! Dolore.', 'tes.webp', 2, 1, '2022-08-06 11:22:26'),
(4, 'cara membayar', 'This is a wider card with supporting text below as a\r\n                                        natural lead-in to additional content. This content is a\r\n                                        little bit longer Lorem ipsum dolor, sit amet consectetur adipisicing elit. Sint nulla ipsam fugit eaque provident eum alias esse, repudiandae est labore et itaque sequi. Suscipit, eius hic voluptas fuga quisquam libero eligendi rem eos molestias ea nulla est reprehenderit ex dolores accusamus voluptatibus ab ad corporis, quae quidem ipsum unde! Repellendus ratione deleniti culpa fugit quia, assumenda nostrum perspiciatis velit libero dolorum voluptatem consectetur veniam. Neque adipisci iste repellendus labore animi autem quam nihil amet repudiandae delectus asperiores minima eum facilis porro dolorum enim accusantium quas totam, ut cumque ipsam! Earum ipsa accusamus, itaque quas voluptatum reiciendis voluptate consectetur quidem harum explicabo modi beatae, quaerat perferendis, ad commodi culpa? Iure deserunt beatae possimus laboriosam ratione sed animi quod molestias tempora ut, eligendi esse saepe doloribus cum earum voluptatibus voluptatem, dignissimos necessitatibus sit officiis. Minima, incidunt explicabo temporibus dolorem non, iusto optio obcaecati ratione aut doloribus ad. Expedita aperiam eveniet esse exercitationem consectetur corporis tempora ipsam necessitatibus, blanditiis placeat eius quam voluptas est ex delectus dolorem nobis accusantium laudantium. Maxime aliquam magni impedit mollitia! Ipsa tempora, iste, quia eum voluptatibus suscipit, eius ipsam totam odio necessitatibus voluptatem. Ex at autem, voluptatem necessitatibus illo quo dignissimos nulla! Obcaecati expedita alias error assumenda! Dolore.', 'tes1.webp', 1, 3, '2022-08-15 11:22:51');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`) VALUES
(1, 'Hengky', 'hengky@gmail.com', '123456'),
(2, 'Amin', 'amin@gmail.com', 'amin123'),
(3, 'Budi', 'budi@gmail.com', 'budi123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `keys`
--
ALTER TABLE `keys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `keys`
--
ALTER TABLE `keys`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
