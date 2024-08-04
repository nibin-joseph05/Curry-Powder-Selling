-- phpMyAdmin SQL Dump
-- version 4.1.6
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 31, 2023 at 10:51 AM
-- Server version: 5.6.16
-- PHP Version: 5.5.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `curry_powderr`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=57 ;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add customerreg', 7, 'add_customerreg'),
(26, 'Can change customerreg', 7, 'change_customerreg'),
(27, 'Can delete customerreg', 7, 'delete_customerreg'),
(28, 'Can view customerreg', 7, 'view_customerreg'),
(29, 'Can add vendorreg', 8, 'add_vendorreg'),
(30, 'Can change vendorreg', 8, 'change_vendorreg'),
(31, 'Can delete vendorreg', 8, 'delete_vendorreg'),
(32, 'Can view vendorreg', 8, 'view_vendorreg'),
(33, 'Can add products', 9, 'add_products'),
(34, 'Can change products', 9, 'change_products'),
(35, 'Can delete products', 9, 'delete_products'),
(36, 'Can view products', 9, 'view_products'),
(37, 'Can add cartitems', 10, 'add_cartitems'),
(38, 'Can change cartitems', 10, 'change_cartitems'),
(39, 'Can delete cartitems', 10, 'delete_cartitems'),
(40, 'Can view cartitems', 10, 'view_cartitems'),
(41, 'Can add purchases', 11, 'add_purchases'),
(42, 'Can change purchases', 11, 'change_purchases'),
(43, 'Can delete purchases', 11, 'delete_purchases'),
(44, 'Can view purchases', 11, 'view_purchases'),
(45, 'Can add ratings', 12, 'add_ratings'),
(46, 'Can change ratings', 12, 'change_ratings'),
(47, 'Can delete ratings', 12, 'delete_ratings'),
(48, 'Can view ratings', 12, 'view_ratings'),
(49, 'Can add feedbacks', 13, 'add_feedbacks'),
(50, 'Can change feedbacks', 13, 'change_feedbacks'),
(51, 'Can delete feedbacks', 13, 'delete_feedbacks'),
(52, 'Can view feedbacks', 13, 'view_feedbacks'),
(53, 'Can add recipes', 14, 'add_recipes'),
(54, 'Can change recipes', 14, 'change_recipes'),
(55, 'Can delete recipes', 14, 'delete_recipes'),
(56, 'Can view recipes', 14, 'view_recipes');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `curry_powder_cartitems`
--

CREATE TABLE IF NOT EXISTS `curry_powder_cartitems` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user` varchar(150) NOT NULL,
  `product_id` varchar(150) NOT NULL,
  `quantity` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

-- --------------------------------------------------------

--
-- Table structure for table `curry_powder_customerreg`
--

CREATE TABLE IF NOT EXISTS `curry_powder_customerreg` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  `email` varchar(150) NOT NULL,
  `place` varchar(150) NOT NULL,
  `phone` varchar(150) NOT NULL,
  `password` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `curry_powder_customerreg`
--

INSERT INTO `curry_powder_customerreg` (`id`, `name`, `email`, `place`, `phone`, `password`) VALUES
(1, 'jerin', 'j@gmail.com', 'Kollam', '9654273492', '123'),
(2, 'sam sabu', 's@gmail.com', 'Idukki', '9654273492', '123');

-- --------------------------------------------------------

--
-- Table structure for table `curry_powder_feedbacks`
--

CREATE TABLE IF NOT EXISTS `curry_powder_feedbacks` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `cus_name` varchar(150) NOT NULL,
  `feedback` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `curry_powder_feedbacks`
--

INSERT INTO `curry_powder_feedbacks` (`id`, `cus_name`, `feedback`) VALUES
(1, 'jerin', 'Good');

-- --------------------------------------------------------

--
-- Table structure for table `curry_powder_products`
--

CREATE TABLE IF NOT EXISTS `curry_powder_products` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  `typee` varchar(150) NOT NULL,
  `flavor` varchar(150) NOT NULL,
  `quantity` varchar(150) NOT NULL,
  `price` double NOT NULL,
  `description` varchar(500) NOT NULL,
  `image` varchar(150) NOT NULL,
  `vid` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `curry_powder_products`
--

INSERT INTO `curry_powder_products` (`id`, `name`, `typee`, `flavor`, `quantity`, `price`, `description`, `image`, `vid`) VALUES
(1, 'Curry Powder', 'Curry Powder', 'Spicy', '30', 60, 'The perfect Indian Curry Powder for that unique Indian taste. Buy the best Ramdev Curry Powder online with discounted price from Ramdevstore.', '1.jpg', '1'),
(2, 'Saras Combo Masala', 'Curry Powders', 'Spicy', '40', 200, 'Saras Combo(Fish Masala, Kashmiri Chilly, Garam Masala ) 100g Each', '2.jpg', '1'),
(3, 'Pickle Powder 100 g', 'powder', 'Chilly', '40', 70, 'Marinate 1 kg of sliced mango with 5 teaspoon Saras Pickle Powder along with salt and keep aside in a pan.', 'pickle_final_100gm_ceeca_2019_01_1.jpg', '2'),
(4, 'Rasam Powder 100 g', ' powder', 'Chilly', '30', 50, '3 Nos of ripe tomatoes and 3 tablespoons of rasam powder are added to one litre of water and boiled. Add salt to taste. Garnish with coriander leaves and fried red chilly. Oil fried mustard may be added.', 'rasam_powder_100_gm_final_1_hDE0Xnv.jpg', '2');

-- --------------------------------------------------------

--
-- Table structure for table `curry_powder_purchases`
--

CREATE TABLE IF NOT EXISTS `curry_powder_purchases` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `userr` varchar(150) NOT NULL,
  `product` varchar(150) NOT NULL,
  `total_item` varchar(150) NOT NULL,
  `total_price` varchar(150) NOT NULL,
  `card_name` varchar(150) NOT NULL,
  `card_number` double NOT NULL,
  `cvv` varchar(150) NOT NULL,
  `status` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `curry_powder_purchases`
--

INSERT INTO `curry_powder_purchases` (`id`, `userr`, `product`, `total_item`, `total_price`, `card_name`, `card_number`, `cvv`, `status`) VALUES
(1, '1', 'Curry Powder, Rasam Powder 100 g', '3', '170.0', 'Jerin', 2.354687746434435e15, '234', 'Confirmed'),
(2, '2', 'Saras Combo Masala', '3', '600.0', 'sam', 4.353434534141244e15, '344', 'Confirmed');

-- --------------------------------------------------------

--
-- Table structure for table `curry_powder_ratings`
--

CREATE TABLE IF NOT EXISTS `curry_powder_ratings` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `p_id` varchar(100) NOT NULL,
  `star` varchar(100) NOT NULL,
  `c_id` varchar(100) NOT NULL,
  `date` date NOT NULL,
  `v_id` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `curry_powder_ratings`
--

INSERT INTO `curry_powder_ratings` (`id`, `p_id`, `star`, `c_id`, `date`, `v_id`) VALUES
(1, '2', '4', '1', '2023-12-31', '1'),
(2, '4', '3', '1', '2023-12-31', '2'),
(3, '2', '3', '2', '2023-12-31', '1'),
(4, '3', '4', '1', '2023-12-31', '2');

-- --------------------------------------------------------

--
-- Table structure for table `curry_powder_recipes`
--

CREATE TABLE IF NOT EXISTS `curry_powder_recipes` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  `description` varchar(500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `curry_powder_recipes`
--

INSERT INTO `curry_powder_recipes` (`id`, `name`, `description`) VALUES
(1, ' Juicy Roasted Chicken', 'This roasted chicken is perfectly seasoned and just like the way my grandmother used to make it. The method used in this recipe results in the juiciest chicken! We loved to nibble on the celery after it was cooked.');

-- --------------------------------------------------------

--
-- Table structure for table `curry_powder_vendorreg`
--

CREATE TABLE IF NOT EXISTS `curry_powder_vendorreg` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  `email` varchar(150) NOT NULL,
  `place` varchar(150) NOT NULL,
  `phone` varchar(150) NOT NULL,
  `password` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `curry_powder_vendorreg`
--

INSERT INTO `curry_powder_vendorreg` (`id`, `name`, `email`, `place`, `phone`, `password`) VALUES
(1, 'Davood', 'd@gmail.com', 'Idukki', '9654273492', '123'),
(2, 'babu', 'b@gmail.com', 'Kerala', '2734922112', '123');

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(10, 'curry_powder', 'cartitems'),
(7, 'curry_powder', 'customerreg'),
(13, 'curry_powder', 'feedbacks'),
(9, 'curry_powder', 'products'),
(11, 'curry_powder', 'purchases'),
(12, 'curry_powder', 'ratings'),
(14, 'curry_powder', 'recipes'),
(8, 'curry_powder', 'vendorreg'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=35 ;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-12-22 10:33:14.551337'),
(2, 'auth', '0001_initial', '2023-12-22 10:33:15.942560'),
(3, 'admin', '0001_initial', '2023-12-22 10:33:16.227755'),
(4, 'admin', '0002_logentry_remove_auto_add', '2023-12-22 10:33:16.237265'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2023-12-22 10:33:16.253690'),
(6, 'contenttypes', '0002_remove_content_type_name', '2023-12-22 10:33:16.333330'),
(7, 'auth', '0002_alter_permission_name_max_length', '2023-12-22 10:33:16.362356'),
(8, 'auth', '0003_alter_user_email_max_length', '2023-12-22 10:33:16.414249'),
(9, 'auth', '0004_alter_user_username_opts', '2023-12-22 10:33:16.427157'),
(10, 'auth', '0005_alter_user_last_login_null', '2023-12-22 10:33:16.480297'),
(11, 'auth', '0006_require_contenttypes_0002', '2023-12-22 10:33:16.480297'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2023-12-22 10:33:16.493735'),
(13, 'auth', '0008_alter_user_username_max_length', '2023-12-22 10:33:16.529120'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2023-12-22 10:33:16.547635'),
(15, 'auth', '0010_alter_group_name_max_length', '2023-12-22 10:33:16.588732'),
(16, 'auth', '0011_update_proxy_permissions', '2023-12-22 10:33:16.598895'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2023-12-22 10:33:16.628634'),
(18, 'curry_powder', '0001_initial', '2023-12-22 10:33:16.759751'),
(19, 'sessions', '0001_initial', '2023-12-22 10:33:16.909210'),
(20, 'curry_powder', '0002_vendorreg', '2023-12-22 10:46:26.919149'),
(21, 'curry_powder', '0003_products', '2023-12-23 05:11:37.496780'),
(22, 'curry_powder', '0004_products_vid', '2023-12-23 05:34:32.179765'),
(23, 'curry_powder', '0005_cartitems', '2023-12-29 07:41:18.486175'),
(24, 'curry_powder', '0006_alter_cartitems_quantity', '2023-12-30 05:17:00.273207'),
(25, 'curry_powder', '0007_alter_products_price', '2023-12-30 05:17:00.327088'),
(26, 'curry_powder', '0008_purchases', '2023-12-30 10:11:59.575096'),
(27, 'curry_powder', '0009_auto_20231231_1222', '2023-12-31 06:52:49.022806'),
(28, 'curry_powder', '0010_ratings', '2023-12-31 07:13:01.451418'),
(29, 'curry_powder', '0011_alter_ratings_date', '2023-12-31 07:16:11.808743'),
(30, 'curry_powder', '0012_ratings_v_id', '2023-12-31 07:17:26.332387'),
(31, 'curry_powder', '0013_feedbacks', '2023-12-31 08:57:26.284127'),
(32, 'curry_powder', '0014_recipes', '2023-12-31 09:14:27.998338'),
(33, 'curry_powder', '0015_alter_recipes_description', '2023-12-31 09:17:13.197547'),
(34, 'curry_powder', '0016_alter_products_description', '2023-12-31 09:37:45.174954');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('1vv0esmgelszgybjj4obe37lu05oblko', 'e30:1rJsTD:qw1MEhIUoiaG_p_pqKM875W22m85TSSkBXChYnXqD6I', '2024-01-14 09:50:59.900839'),
('2qf9kmxwcsnaxosqtvo1qz5729wcpye5', 'eyJjdWlkIjoxLCJjdW5hbWUiOiJqZXJpbiIsImN1ZW1haWwiOiJqQGdtYWlsLmNvbSJ9:1rJ4AX:7UGQkLjuWNB-F6NFr2JdmnJ2Ls3OcV0RvlXu3aNXRxA', '2024-01-12 04:08:21.709378'),
('4insmgzbkip8cypk9nlmto7yp55heff0', 'eyJjdWlkIjoxLCJjdW5hbWUiOiJqZXJpbiIsImN1ZW1haWwiOiJqQGdtYWlsLmNvbSJ9:1rJ7Ek:00HSoeuC6d851zhiw7vOJs34MJco83DtDNZinHC-tgE', '2024-01-12 07:24:54.553770'),
('9p3sngfn7glbnvfobt3m9dg40k9x0qiy', 'eyJjdWlkIjoxLCJjdW5hbWUiOiJqZXJpbiIsImN1ZW1haWwiOiJqQGdtYWlsLmNvbSJ9:1rJ5aj:Z1YjK8DQOdymfDOBgfymk_wHRBhCTob9Y2rDbjimcy0', '2024-01-12 05:39:29.849067'),
('tcexchqkgqji0i4catzb3lf8abwxn6et', 'eyJjdWlkIjoxLCJjdW5hbWUiOiJqZXJpbiIsImN1ZW1haWwiOiJqQGdtYWlsLmNvbSJ9:1rJVEr:YabaaRpFS19x3boqIW1SN1h9__1ngiwr6G__sY-CikM', '2024-01-13 09:02:37.853174');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
