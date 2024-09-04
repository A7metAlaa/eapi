-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 04, 2024 at 11:12 PM
-- Server version: 8.0.30
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `eapi`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_09_04_181707_create_products_table', 1),
(6, '2024_09_04_181707_create_reviews_table', 1),
(7, '2024_09_04_230522_add_customers_to_exist_table_name', 2),
(8, '2024_09_04_230756_drop_customers_column_from_customers', 3),
(9, '2024_09_04_230843_add_customer_to_exist_table_name', 4);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int NOT NULL,
  `stock` int NOT NULL,
  `discount` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `detail`, `price`, `stock`, `discount`, `created_at`, `updated_at`) VALUES
(1, 'Emerson Romaguera', 'Molestiae omnis similique et occaecati quisquam qui. Distinctio magnam nihil explicabo quaerat odio molestiae omnis. Dolores cum ea expedita ut non consequuntur ipsa. Aliquam et repellat est ut.', 500, 6, 26, '2024-09-04 20:01:48', '2024-09-04 20:01:48'),
(2, 'Jose Donnelly', 'Sunt aut dolorum dolor eligendi. Ratione doloribus ea rerum reprehenderit ut aut. Quos occaecati ut quasi est dicta. Possimus nihil est a et corrupti atque nihil. Esse officia et ut voluptas temporibus.', 217, 8, 21, '2024-09-04 20:01:49', '2024-09-04 20:01:49'),
(3, 'Arjun Sawayn', 'Expedita nemo ab error quia architecto culpa. Iusto dolor rerum quia quae dolores. Facilis aliquam quam nihil molestias.', 607, 2, 14, '2024-09-04 20:01:49', '2024-09-04 20:01:49'),
(4, 'Mrs. Juanita Lockman', 'Aliquid suscipit asperiores aut. Natus officia numquam facere aliquid. Et rerum voluptatum velit omnis deleniti minus sequi est. Nam quae dolorem ad nostrum.', 196, 9, 9, '2024-09-04 20:01:49', '2024-09-04 20:01:49'),
(5, 'Nat Pfannerstill', 'Voluptatem natus neque nostrum pariatur. Qui rerum velit nulla in ut. Reprehenderit voluptatibus necessitatibus cupiditate ex.', 231, 0, 26, '2024-09-04 20:01:49', '2024-09-04 20:01:49'),
(6, 'Dr. Sofia Gottlieb DDS', 'Dolore distinctio ut maxime et maiores ut. Laborum eum autem et ut est fugiat. Ut consequuntur qui quis dolorem ut recusandae nostrum neque. Possimus et vel veritatis est aliquid totam quo autem.', 209, 6, 9, '2024-09-04 20:01:49', '2024-09-04 20:01:49'),
(7, 'Vernie Abbott', 'Odio et molestiae tenetur quo voluptas. Non iusto omnis blanditiis dolorem repellat aut. Inventore voluptatem sunt impedit dolores exercitationem id consectetur autem. Maiores dolorem ab necessitatibus nihil.', 652, 9, 16, '2024-09-04 20:01:49', '2024-09-04 20:01:49'),
(8, 'Florencio McClure Jr.', 'Qui nam est quia architecto. Facere soluta nobis accusantium eos. Quidem nisi voluptas repudiandae et velit reprehenderit. Hic nihil totam aspernatur earum repellendus rem nihil.', 946, 4, 14, '2024-09-04 20:01:49', '2024-09-04 20:01:49'),
(9, 'Rosalia Daugherty', 'Fugit aut vero perferendis velit quae aut culpa. Rerum tenetur sint corporis rerum accusantium. Tempore facilis totam est aliquam repellat fuga minima. Molestiae et itaque quas libero ratione odio aliquid officia.', 787, 8, 11, '2024-09-04 20:01:49', '2024-09-04 20:01:49'),
(10, 'Chet Purdy', 'Aut incidunt quaerat et sunt corrupti totam. Impedit aut consequuntur officiis ut.', 138, 0, 10, '2024-09-04 20:01:49', '2024-09-04 20:01:49'),
(11, 'Dasia Boehm DDS', 'Nisi eos dolorem sit quia eum voluptas natus. Est nesciunt dolorem perspiciatis provident expedita eos sed repellat. Officia aut enim voluptas.', 233, 2, 27, '2024-09-04 20:02:52', '2024-09-04 20:02:52'),
(12, 'Prof. Casimer Grady', 'Reiciendis recusandae qui accusamus culpa. Et et nostrum eum id aut eveniet. Repellat est facere praesentium dolores. Maxime beatae non vel sapiente.', 462, 7, 25, '2024-09-04 20:02:52', '2024-09-04 20:02:52'),
(13, 'Prof. Pearline Bruen', 'Ex aut ducimus saepe fuga quis temporibus. Nobis ut quo sed ad sit quae modi.', 445, 1, 11, '2024-09-04 20:02:52', '2024-09-04 20:02:52'),
(14, 'Montana Dicki', 'Est consequatur temporibus nostrum iste repellendus minus optio. Dolorem labore fuga molestias illum quos veniam.', 794, 8, 29, '2024-09-04 20:02:52', '2024-09-04 20:02:52'),
(15, 'Demetris Pouros DVM', 'Aut alias dolores molestiae laudantium asperiores. Veritatis animi voluptatem laudantium eius rerum aut ipsam maxime. Voluptatem saepe voluptas nobis magnam nisi aut. Ab nihil odit delectus veniam nulla distinctio ut.', 140, 9, 13, '2024-09-04 20:02:52', '2024-09-04 20:02:52'),
(16, 'Irwin Heaney', 'Sed quae sit est eius a. Nihil pariatur aliquid voluptates natus omnis. Et numquam eum voluptatem qui voluptas aut. Debitis dolorum itaque facere ut neque in voluptatum aut. Adipisci doloremque et minus fugiat deserunt.', 695, 3, 4, '2024-09-04 20:02:52', '2024-09-04 20:02:52'),
(17, 'Olaf Schiller Jr.', 'Placeat ut eos perspiciatis voluptates omnis quia eius molestiae. A cupiditate ab sequi temporibus. Error unde minima facere. Repellendus odit temporibus eligendi.', 364, 7, 24, '2024-09-04 20:02:52', '2024-09-04 20:02:52'),
(18, 'Dr. Okey Hane DVM', 'Quos ipsum error in. Omnis id ut doloremque consequatur unde sint. Aliquam accusantium error atque provident.', 984, 7, 30, '2024-09-04 20:02:52', '2024-09-04 20:02:52'),
(19, 'Manuela Cummings', 'Eos tempore in animi consequatur. Asperiores et aliquam unde non voluptates. Aut ut velit quam minus quo. Laudantium adipisci quidem dolores debitis ea.', 728, 8, 17, '2024-09-04 20:02:52', '2024-09-04 20:02:52'),
(20, 'Eldon Hessel', 'Aut dolorem nostrum quibusdam et deleniti. Deleniti qui repudiandae eaque incidunt aliquid consequatur tempora. Hic non sapiente magni debitis.', 955, 4, 9, '2024-09-04 20:02:52', '2024-09-04 20:02:52'),
(21, 'Pearline Keeling', 'Voluptas qui corrupti culpa. Ea similique aspernatur saepe. Tempore culpa eum odio exercitationem deserunt dolorum. In deleniti ea et voluptas magnam rerum. Est vel molestias unde voluptas.', 586, 2, 29, '2024-09-04 20:03:11', '2024-09-04 20:03:11'),
(22, 'Miss Brittany Schroeder PhD', 'Aut id non beatae eligendi voluptatem itaque expedita. Delectus amet est occaecati velit. Nihil voluptatem dolorum at.', 323, 5, 8, '2024-09-04 20:03:11', '2024-09-04 20:03:11'),
(23, 'Dr. Keira O\'Reilly Sr.', 'Porro ut velit iste deleniti fugiat. Quia officiis molestiae consequuntur. Omnis quisquam qui ut cupiditate eos. Incidunt enim voluptatum voluptate.', 100, 7, 7, '2024-09-04 20:03:11', '2024-09-04 20:03:11'),
(24, 'Columbus Zboncak', 'Quo praesentium dolor recusandae nisi adipisci aut. Omnis quam dolorem ut ipsa illum. Perferendis suscipit ipsam unde aut ut quia assumenda ut. Explicabo est doloremque maiores commodi.', 512, 2, 24, '2024-09-04 20:03:11', '2024-09-04 20:03:11'),
(25, 'Granville Jerde', 'Eum non qui ducimus aliquam voluptatibus. Facilis sed voluptates consequatur molestiae fuga voluptatem maiores ducimus. Expedita quod quaerat delectus eum aut voluptas consequatur. Quo commodi sed quo quia impedit velit. Esse odio consequatur eum atque incidunt.', 356, 6, 7, '2024-09-04 20:03:11', '2024-09-04 20:03:11'),
(26, 'Kade Ziemann', 'Ex velit non esse repellendus est eos. Corporis ut qui est beatae quos. Doloribus omnis harum enim beatae totam. Dolorum ab laboriosam omnis fuga asperiores fugiat tenetur.', 353, 3, 19, '2024-09-04 20:03:11', '2024-09-04 20:03:11'),
(27, 'Ettie Weimann DDS', 'Quod animi explicabo eaque perferendis id rerum eum. Nisi non et vero. Rerum consequuntur unde aut aut.', 810, 0, 4, '2024-09-04 20:03:11', '2024-09-04 20:03:11'),
(28, 'Dr. Raphaelle Brekke', 'Consectetur eos molestias et. Est dolorem provident vel ea consequatur. Ratione fuga et ut. Dolorem ut id eum id esse quod quibusdam.', 347, 8, 13, '2024-09-04 20:03:12', '2024-09-04 20:03:12'),
(29, 'Evie Mohr', 'Quod aliquid rerum voluptatem amet perferendis. Iusto sit est perspiciatis deleniti molestias debitis cupiditate. Aut reiciendis quo sed sed. Quibusdam minus ut eum doloremque et in.', 453, 7, 10, '2024-09-04 20:03:12', '2024-09-04 20:03:12'),
(30, 'Tate Schaefer V', 'Soluta harum explicabo voluptatem aliquid et et molestias qui. Repellendus voluptas voluptatem exercitationem vitae reprehenderit. Ullam illo voluptatem aut neque assumenda ab dolores. Nisi ratione dolores voluptatem consequatur ut.', 216, 3, 12, '2024-09-04 20:03:12', '2024-09-04 20:03:12'),
(31, 'Prof. Xander Brekke', 'Architecto rem officia non a. Reprehenderit eveniet ut modi blanditiis. Impedit mollitia quo dolor. Exercitationem autem animi mollitia.', 141, 3, 3, '2024-09-04 20:03:24', '2024-09-04 20:03:24'),
(32, 'Kim Langworth', 'Dignissimos tenetur velit consequatur et. Voluptatem et neque hic amet praesentium ut amet libero. Pariatur accusantium rerum iste aliquam ipsum itaque.', 401, 1, 21, '2024-09-04 20:03:24', '2024-09-04 20:03:24'),
(33, 'Prof. Lesley Pacocha V', 'Corporis laudantium dolorem omnis sequi saepe beatae quis dolorem. Vel et sint ipsam qui. Rerum deleniti debitis consequatur ab nesciunt et eaque sint. Quis excepturi ut nulla ex ipsam nulla quia cupiditate.', 598, 2, 20, '2024-09-04 20:03:24', '2024-09-04 20:03:24'),
(34, 'Iliana Lemke I', 'Cupiditate ut magnam sequi laboriosam saepe. Ipsum nostrum rerum adipisci modi illo. Suscipit cumque placeat alias sequi aliquam veniam ipsum.', 207, 0, 10, '2024-09-04 20:03:24', '2024-09-04 20:03:24'),
(35, 'Concepcion McDermott', 'Doloribus deserunt quia consectetur fugiat est. Odio dolorem enim aut soluta eaque officiis. Quia debitis delectus amet blanditiis.', 696, 6, 17, '2024-09-04 20:03:24', '2024-09-04 20:03:24'),
(36, 'Lesly Gleason Jr.', 'Eum consectetur aut iusto voluptatem cum quae. Voluptatem numquam accusamus eum iste et. Sint ipsam dolorem quo atque eaque id numquam aut. Consectetur voluptas quam vitae.', 377, 8, 11, '2024-09-04 20:03:24', '2024-09-04 20:03:24'),
(37, 'Dr. Ashton Ferry', 'Minus ut autem id ipsum. Qui voluptatem debitis necessitatibus quisquam unde. Facere dolor odit minima velit. Iste sed vel mollitia voluptatem quibusdam aperiam ut quo. Harum aut culpa voluptate vero.', 913, 2, 3, '2024-09-04 20:03:24', '2024-09-04 20:03:24'),
(38, 'Vernie Pollich', 'Vel minima commodi aliquid aut. Mollitia aspernatur labore voluptate saepe laboriosam velit ut veritatis. Et omnis non quia a. Deserunt et labore maxime autem et enim repudiandae animi.', 918, 0, 15, '2024-09-04 20:03:24', '2024-09-04 20:03:24'),
(39, 'Alaina Reinger', 'Cupiditate esse eligendi sed provident. Atque a ut sapiente eius architecto vero temporibus provident. Quaerat maxime sit veniam laboriosam labore.', 902, 6, 22, '2024-09-04 20:03:24', '2024-09-04 20:03:24'),
(40, 'Scarlett Stoltenberg Sr.', 'Veniam at qui eligendi eos et. Ipsam et cupiditate voluptatibus sint rem. Similique ipsa incidunt amet. Nulla et repellat non est suscipit nihil totam ut.', 239, 7, 21, '2024-09-04 20:03:24', '2024-09-04 20:03:24'),
(41, 'Grayson Feeney', 'Sunt unde consequatur qui veritatis corporis. Esse est sed exercitationem in. Id eius repellendus qui nobis. Ab enim pariatur aliquid accusamus hic deserunt veniam.', 681, 5, 20, '2024-09-04 20:06:09', '2024-09-04 20:06:09'),
(42, 'Shania Gislason', 'Perferendis voluptas placeat aperiam. A quisquam sunt porro et voluptas. Odit dolore sunt expedita necessitatibus.', 456, 3, 6, '2024-09-04 20:06:09', '2024-09-04 20:06:09'),
(43, 'Dr. Demarcus Hane', 'Quia qui deserunt maxime mollitia. Illum numquam debitis porro aut aut dolor. Voluptas error id aperiam omnis sequi. Corrupti enim quia veniam quo.', 880, 5, 3, '2024-09-04 20:06:09', '2024-09-04 20:06:09'),
(44, 'George Welch', 'Voluptatem consequuntur sint accusamus. Est dolorem eum magnam quia et quas. Fugiat alias et quas perferendis ad voluptatem. Qui nostrum odio amet dolores.', 163, 3, 4, '2024-09-04 20:06:09', '2024-09-04 20:06:09'),
(45, 'Randal Bernier', 'Sed voluptatibus culpa hic quia et qui repellendus. Non dolore voluptatem neque. Corporis deleniti aliquid voluptatem sit possimus quae quia quisquam.', 234, 5, 12, '2024-09-04 20:06:09', '2024-09-04 20:06:09'),
(46, 'Nannie Schmeler', 'Qui voluptatem quis atque sit. Eligendi dolores aut recusandae. Et harum perferendis perferendis dolores est. Recusandae repudiandae consequatur quia velit harum.', 712, 1, 9, '2024-09-04 20:06:09', '2024-09-04 20:06:09'),
(47, 'Kenneth Cruickshank', 'Quasi vero ipsum atque itaque et laborum libero. Magnam consequatur illum porro eaque odit sint. Sed sequi aut atque maxime. Ad cumque autem consequatur neque ab.', 994, 2, 22, '2024-09-04 20:06:09', '2024-09-04 20:06:09'),
(48, 'Lucas Mann PhD', 'Ducimus officiis nemo itaque corporis qui temporibus. Dolores laboriosam esse et consequatur ut minima voluptatibus. Perferendis ex nisi rerum reprehenderit voluptatem commodi voluptas et. Error qui vero placeat amet ut. Rerum modi voluptas ea molestiae est rem.', 944, 4, 25, '2024-09-04 20:06:09', '2024-09-04 20:06:09'),
(49, 'Wyman Nienow', 'Enim nulla aperiam ut voluptatem suscipit ut. Autem nihil sed ut quidem non quidem dolores. Dolor nisi temporibus aliquid aut vitae in. Nulla maxime aliquam eaque dolorem vitae ea.', 492, 8, 26, '2024-09-04 20:06:09', '2024-09-04 20:06:09'),
(50, 'Berneice Roob', 'Impedit ipsam hic vero distinctio minima recusandae non rerum. Officiis sit id consequuntur et officia rem et. Rerum qui voluptas quos fugiat odit.', 304, 7, 6, '2024-09-04 20:06:09', '2024-09-04 20:06:09'),
(51, 'Helena Feest Jr.', 'Commodi officiis nesciunt voluptas non dolorem reprehenderit. Possimus autem laboriosam suscipit. Sed ratione dolorem voluptatum et alias voluptas consequatur.', 551, 2, 29, '2024-09-04 20:09:03', '2024-09-04 20:09:03'),
(52, 'Erika Dicki', 'Voluptatem perferendis consectetur aut voluptas. Totam aut quam omnis accusamus quia voluptatem laboriosam maiores. Repellendus nihil pariatur vel expedita sint sunt similique.', 153, 9, 30, '2024-09-04 20:09:03', '2024-09-04 20:09:03'),
(53, 'Kylee Stracke PhD', 'Quia esse consequuntur tenetur omnis. Nihil dolores vitae qui amet. Eos praesentium voluptatem soluta recusandae quia. Ut officiis sit et reprehenderit veniam a tempora. Magnam quibusdam cumque repellendus.', 936, 2, 10, '2024-09-04 20:09:03', '2024-09-04 20:09:03'),
(54, 'Alessandro Gutmann', 'Temporibus amet consequatur rem corporis aut dolorem. Illum in expedita aut omnis. Accusantium inventore hic soluta fuga. Voluptate molestiae aut amet eveniet.', 445, 0, 15, '2024-09-04 20:09:03', '2024-09-04 20:09:03'),
(55, 'Adrienne Welch', 'Cupiditate sunt veniam et vel harum rem. Architecto autem cumque amet a. Quis consequatur voluptates et dolores sed repudiandae. Eum odit recusandae iste corporis qui rerum totam. Illo ex aspernatur vero odio voluptatum.', 175, 1, 15, '2024-09-04 20:09:03', '2024-09-04 20:09:03'),
(56, 'Ignatius Frami', 'Expedita et et voluptate beatae. Officiis consequatur nihil sed sunt inventore alias. Nemo quasi velit deserunt quaerat ut.', 683, 2, 3, '2024-09-04 20:09:03', '2024-09-04 20:09:03'),
(57, 'Judson Raynor PhD', 'Dolor nisi amet dolorem dolor ea. Perspiciatis officia dolorem exercitationem et repellat. Quia nihil sit ullam eum omnis.', 625, 6, 25, '2024-09-04 20:09:03', '2024-09-04 20:09:03'),
(58, 'Gregorio Koelpin', 'Enim dolores corrupti et praesentium debitis. Dolorum cum adipisci facilis officiis molestias est a. Et dolor quo molestiae recusandae incidunt velit. Aspernatur consequuntur accusamus modi deserunt nesciunt nemo ipsum. Recusandae minus quaerat sunt ut est.', 620, 2, 15, '2024-09-04 20:09:03', '2024-09-04 20:09:03'),
(59, 'Arlie Heller', 'Ad possimus eaque repellat quis perferendis dolores soluta. Ut omnis nihil aut unde. Excepturi nostrum veritatis aliquid similique labore sint. Sit qui et ratione.', 546, 5, 17, '2024-09-04 20:09:03', '2024-09-04 20:09:03'),
(60, 'Dr. Jaunita Koch IV', 'Et velit vitae sapiente autem dicta omnis. Voluptatem repellendus enim rerum dolorem. Perferendis sed aut fugit voluptatem occaecati qui accusamus.', 339, 9, 10, '2024-09-04 20:09:03', '2024-09-04 20:09:03');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int UNSIGNED NOT NULL,
  `product_id` int UNSIGNED NOT NULL,
  `review` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `star` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `customer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `product_id`, `review`, `star`, `created_at`, `updated_at`, `customer`) VALUES
(1, 12, 'Ut numquam quam vel error optio. Illum corrupti fugiat est sunt rerum perspiciatis. Facilis voluptatem tenetur omnis voluptatem eveniet ea quod. Sit aut nihil id.', 4, '2024-09-04 20:09:03', '2024-09-04 20:09:03', 'Thalia Kassulke'),
(2, 19, 'Tenetur adipisci ullam cupiditate. Dignissimos et ut temporibus enim repellat. Voluptas quae ut vero magni facilis magnam. Voluptas consequuntur ea consequatur omnis.', 5, '2024-09-04 20:09:03', '2024-09-04 20:09:03', 'Virginie Mitchell'),
(3, 32, 'Officiis similique reprehenderit at magnam magni ducimus molestiae. Excepturi vel harum blanditiis nihil magni dolorem.', 4, '2024-09-04 20:09:03', '2024-09-04 20:09:03', 'Mckenzie Trantow'),
(4, 49, 'Nostrum vel alias eum ipsum est quis. Dolorem exercitationem quis reprehenderit officiis quasi ut. Ratione praesentium tempore dolore commodi ea at distinctio doloremque. Repellendus qui asperiores inventore illum.', 2, '2024-09-04 20:09:03', '2024-09-04 20:09:03', 'Vena Wolff'),
(5, 37, 'Itaque molestiae iure quis quae rem. Iste magni ullam nobis labore. Porro voluptates animi alias optio quod. Dolores quis sunt iste minus qui nobis distinctio. Necessitatibus ratione alias sed laboriosam sequi nihil.', 5, '2024-09-04 20:09:04', '2024-09-04 20:09:04', 'Xzavier Lemke'),
(6, 39, 'Sit et quae voluptas officiis aut dolores. Id aut iusto ut odio. Quos qui iure consequatur consequatur.', 0, '2024-09-04 20:09:04', '2024-09-04 20:09:04', 'Murray Schuppe'),
(7, 29, 'Voluptas aspernatur omnis ipsum quas quibusdam et et. Et consectetur et ab aut cum id reiciendis. Quia voluptatibus incidunt sit nobis error odio ut. Ut dolor veritatis perspiciatis voluptate. Iure et doloremque et voluptas voluptas esse tempora assumenda.', 3, '2024-09-04 20:09:04', '2024-09-04 20:09:04', 'Peter Kohler'),
(8, 53, 'Vel molestias molestiae sed. Aut aliquam praesentium nam. Quis unde illo voluptatem veritatis qui expedita qui. Nemo earum veritatis et nobis ut.', 4, '2024-09-04 20:09:04', '2024-09-04 20:09:04', 'Brionna Bode PhD'),
(9, 9, 'Dolores quidem aut nulla nulla officiis eaque asperiores. Voluptatem blanditiis aliquam deleniti cum maiores voluptas. Cupiditate molestiae ut harum ratione ea ea.', 5, '2024-09-04 20:09:04', '2024-09-04 20:09:04', 'Jamal Gulgowski'),
(10, 27, 'Dolorum debitis quod illum dolores nisi. Earum deserunt rerum qui ipsam minima et nostrum. Debitis nihil qui vel eos officiis iure.', 1, '2024-09-04 20:09:04', '2024-09-04 20:09:04', 'Eva McDermott');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reviews_product_id_index` (`product_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
