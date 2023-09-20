-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 07-09-2023 a las 23:03:17
-- Versión del servidor: 8.0.31
-- Versión de PHP: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `catalogo`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `actors`
--

DROP TABLE IF EXISTS `actors`;
CREATE TABLE IF NOT EXISTS `actors` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_09_07_191726_create_movies_table', 1),
(6, '2023_09_07_193629_create_actors_table', 1),
(7, '2023_09_07_195813_last_migration', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `movies`
--

DROP TABLE IF EXISTS `movies`;
CREATE TABLE IF NOT EXISTS `movies` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `synopsis` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `year` int NOT NULL,
  `cover` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `movies`
--

INSERT INTO `movies` (`id`, `title`, `synopsis`, `year`, `cover`, `created_at`, `updated_at`) VALUES
(1, 'Quo est et odit dolorem.', 'Deleniti eos dolores debitis. Qui porro repellat omnis molestias. Vitae et voluptatem sit.', 4, 'Repudiandae voluptates et delectus doloribus amet consequuntur.', '2023-09-08 04:29:37', '2023-09-08 04:29:37'),
(2, 'Nam sunt illum nostrum fugiat optio earum.', 'Quia culpa pariatur sunt consectetur labore odit. Id excepturi quia occaecati numquam magni. Praesentium suscipit vel quos voluptatum atque qui qui non.', 1, 'Illum assumenda voluptatem iure est quia hic.', '2023-09-08 04:29:37', '2023-09-08 04:29:37'),
(3, 'Assumenda iusto minus neque eligendi perferendis.', 'Quis quam quasi et nesciunt est possimus. Consequuntur aut quia magnam quidem est. Neque totam facere unde praesentium dignissimos reprehenderit omnis.', 7, 'Aut soluta dignissimos eum ut nostrum.', '2023-09-08 04:29:37', '2023-09-08 04:29:37'),
(4, 'Sint explicabo expedita cupiditate voluptates hic dolores omnis.', 'Consequatur fugiat quo unde nihil corrupti et. Ipsum facilis cupiditate qui nobis molestias. Officia error in magnam consequuntur eos voluptatem. Voluptas voluptas amet quas sed ut voluptatem.', 5, 'Corrupti porro id vero praesentium repellendus nisi.', '2023-09-08 04:29:37', '2023-09-08 04:29:37'),
(5, 'Omnis porro illo qui possimus et aut in.', 'Veniam ut sint vitae aut est. Repudiandae dolorum non eius voluptas ex omnis sed. Sunt minus porro cupiditate ea in. Qui error maxime ratione velit atque. Libero ducimus nisi ea quidem eius nihil.', 3, 'Rem magni explicabo iusto omnis est cupiditate.', '2023-09-08 04:29:37', '2023-09-08 04:29:37'),
(6, 'Officia pariatur cumque molestiae non atque non qui.', 'Unde iusto praesentium ut molestiae laborum facilis. Enim doloribus dolorem reiciendis consectetur et officiis. Incidunt ipsam fuga placeat neque omnis ab. Nulla voluptas laudantium et laudantium exercitationem.', 2, 'Voluptatum fugit magni alias itaque.', '2023-09-08 04:29:37', '2023-09-08 04:29:37'),
(7, 'Velit ducimus velit mollitia sint cumque voluptatibus tempore.', 'Dolor odio facilis et est. Porro sint quibusdam expedita mollitia. Autem doloremque maiores dolor rerum vel saepe accusamus dolor. Inventore itaque at reprehenderit exercitationem ipsum et.', 4, 'Soluta omnis consequatur molestiae ut.', '2023-09-08 04:29:37', '2023-09-08 04:29:37'),
(8, 'Veniam provident molestiae ut numquam expedita dolor et.', 'Ad nihil ratione quia officiis quidem sint unde quibusdam. Deleniti excepturi iste hic ducimus quia. Ut mollitia neque tenetur omnis consequatur. Nisi reprehenderit est deleniti necessitatibus enim.', 7, 'Iure officiis voluptatem quis maiores ut.', '2023-09-08 04:29:37', '2023-09-08 04:29:37'),
(9, 'Magnam maxime quidem occaecati velit vel esse.', 'Ut rem error ipsam. Iusto natus natus laborum nemo et blanditiis corporis distinctio. Quasi veritatis sapiente et et et maiores. Voluptatem natus fugit dolor et vitae dignissimos. Cum molestias voluptas atque dicta.', 4, 'Voluptate aut accusantium voluptas corrupti dicta inventore.', '2023-09-08 04:29:37', '2023-09-08 04:29:37'),
(10, 'Id perferendis impedit et adipisci.', 'Eos ab sunt molestiae ab alias est commodi. Molestias distinctio ipsam in voluptatem dolor rerum est. Iure quidem temporibus velit amet voluptate deleniti deserunt. Laboriosam accusamus facere enim ut expedita sit expedita.', 4, 'Quis perferendis quaerat consequatur facere qui.', '2023-09-08 04:29:37', '2023-09-08 04:29:37');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
CREATE TABLE IF NOT EXISTS `password_reset_tokens` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
