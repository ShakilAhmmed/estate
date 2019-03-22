-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 22, 2019 at 04:45 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.2.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `real`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add listing', 1, 'add_listing'),
(2, 'Can change listing', 1, 'change_listing'),
(3, 'Can delete listing', 1, 'delete_listing'),
(4, 'Can view listing', 1, 'view_listing'),
(5, 'Can add realtor', 2, 'add_realtor'),
(6, 'Can change realtor', 2, 'change_realtor'),
(7, 'Can delete realtor', 2, 'delete_realtor'),
(8, 'Can view realtor', 2, 'view_realtor'),
(9, 'Can add log entry', 3, 'add_logentry'),
(10, 'Can change log entry', 3, 'change_logentry'),
(11, 'Can delete log entry', 3, 'delete_logentry'),
(12, 'Can view log entry', 3, 'view_logentry'),
(13, 'Can add permission', 4, 'add_permission'),
(14, 'Can change permission', 4, 'change_permission'),
(15, 'Can delete permission', 4, 'delete_permission'),
(16, 'Can view permission', 4, 'view_permission'),
(17, 'Can add group', 5, 'add_group'),
(18, 'Can change group', 5, 'change_group'),
(19, 'Can delete group', 5, 'delete_group'),
(20, 'Can view group', 5, 'view_group'),
(21, 'Can add user', 6, 'add_user'),
(22, 'Can change user', 6, 'change_user'),
(23, 'Can delete user', 6, 'delete_user'),
(24, 'Can view user', 6, 'view_user'),
(25, 'Can add content type', 7, 'add_contenttype'),
(26, 'Can change content type', 7, 'change_contenttype'),
(27, 'Can delete content type', 7, 'delete_contenttype'),
(28, 'Can view content type', 7, 'view_contenttype'),
(29, 'Can add session', 8, 'add_session'),
(30, 'Can change session', 8, 'change_session'),
(31, 'Can delete session', 8, 'delete_session'),
(32, 'Can view session', 8, 'view_session');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$120000$y68aCRaaBAz4$NpAucXey6Iz8eCE/IQtJZfkMDudH7YolXGtBZo7VBlk=', '2019-03-21 18:57:40.490472', 1, 'Admin', '', '', 'admin@gmail.com', 1, 1, '2019-03-21 18:57:15.958066');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2019-03-21 19:01:44.026772', '1', 'Realtor object (1)', 1, '[{\"added\": {}}]', 2, 1),
(2, '2019-03-22 05:03:19.639057', '1', 'Shakil Ahmmed', 3, '', 2, 1),
(3, '2019-03-22 05:04:31.819244', '2', 'Jenny', 1, '[{\"added\": {}}]', 2, 1),
(4, '2019-03-22 05:05:10.253295', '3', 'Kyle', 1, '[{\"added\": {}}]', 2, 1),
(5, '2019-03-22 05:05:29.827442', '4', 'Mark', 1, '[{\"added\": {}}]', 2, 1),
(6, '2019-03-22 05:09:19.487101', '1', 'Listing object (1)', 1, '[{\"added\": {}}]', 1, 1),
(7, '2019-03-22 05:11:10.967896', '2', 'Listing object (2)', 1, '[{\"added\": {}}]', 1, 1),
(8, '2019-03-22 05:12:33.153343', '3', 'Listing object (3)', 1, '[{\"added\": {}}]', 1, 1),
(9, '2019-03-22 05:15:04.300858', '4', 'Listing object (4)', 1, '[{\"added\": {}}]', 1, 1),
(10, '2019-03-22 05:16:25.856652', '5', 'Listing object (5)', 1, '[{\"added\": {}}]', 1, 1),
(11, '2019-03-22 05:18:03.512131', '6', 'Listing object (6)', 1, '[{\"added\": {}}]', 1, 1),
(12, '2019-03-22 05:33:38.380613', '6', 'Listing object (6)', 2, '[{\"changed\": {\"fields\": [\"is_publised\"]}}]', 1, 1),
(13, '2019-03-22 05:33:46.082109', '6', 'Listing object (6)', 2, '[{\"changed\": {\"fields\": [\"is_publised\"]}}]', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(3, 'admin', 'logentry'),
(5, 'auth', 'group'),
(4, 'auth', 'permission'),
(6, 'auth', 'user'),
(7, 'contenttypes', 'contenttype'),
(1, 'pages', 'listing'),
(2, 'pages', 'realtor'),
(8, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2019-03-21 18:53:31.472146'),
(2, 'auth', '0001_initial', '2019-03-21 18:53:32.070084'),
(3, 'admin', '0001_initial', '2019-03-21 18:53:32.270334'),
(4, 'admin', '0002_logentry_remove_auto_add', '2019-03-21 18:53:32.283811'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2019-03-21 18:53:32.297965'),
(6, 'contenttypes', '0002_remove_content_type_name', '2019-03-21 18:53:32.386928'),
(7, 'auth', '0002_alter_permission_name_max_length', '2019-03-21 18:53:32.445625'),
(8, 'auth', '0003_alter_user_email_max_length', '2019-03-21 18:53:32.510831'),
(9, 'auth', '0004_alter_user_username_opts', '2019-03-21 18:53:32.526046'),
(10, 'auth', '0005_alter_user_last_login_null', '2019-03-21 18:53:32.564990'),
(11, 'auth', '0006_require_contenttypes_0002', '2019-03-21 18:53:32.569920'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2019-03-21 18:53:32.583712'),
(13, 'auth', '0008_alter_user_username_max_length', '2019-03-21 18:53:32.646178'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2019-03-21 18:53:32.700507'),
(15, 'pages', '0001_initial', '2019-03-21 18:53:32.841194'),
(16, 'sessions', '0001_initial', '2019-03-21 18:53:32.878385');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('amuanpt978ezc9d1k85q3knwb2gkf8x3', 'N2ZjNDE4NDY0NjQ1Nzc5ZmFiYzE5OGZjN2UzZjM1MTY5YzE2MmI3ODp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxNWU5NjFhZDY4NDI5YmQ5M2EwMDc1ZDhjNjU4MjQ0MTE2NDMyNGY2In0=', '2019-04-04 18:57:40.498188');

-- --------------------------------------------------------

--
-- Table structure for table `pages_listing`
--

CREATE TABLE `pages_listing` (
  `id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `address` longtext NOT NULL,
  `city` varchar(50) NOT NULL,
  `state` varchar(50) NOT NULL,
  `zip_code` varchar(50) NOT NULL,
  `description` longtext NOT NULL,
  `price` int(11) NOT NULL,
  `bedrooms` int(11) NOT NULL,
  `bathrooms` decimal(2,1) NOT NULL,
  `garage` int(11) NOT NULL,
  `sqft` int(11) NOT NULL,
  `lot_size` decimal(5,1) NOT NULL,
  `is_publised` tinyint(1) NOT NULL,
  `main_photo` varchar(100) NOT NULL,
  `photo_1` varchar(100) NOT NULL,
  `photo_2` varchar(100) NOT NULL,
  `photo_3` varchar(100) NOT NULL,
  `photo_4` varchar(100) NOT NULL,
  `photo_5` varchar(100) NOT NULL,
  `photo_6` varchar(100) NOT NULL,
  `published_date` datetime(6) NOT NULL,
  `realtor_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pages_listing`
--

INSERT INTO `pages_listing` (`id`, `title`, `address`, `city`, `state`, `zip_code`, `description`, `price`, `bedrooms`, `bathrooms`, `garage`, `sqft`, `lot_size`, `is_publised`, `main_photo`, `photo_1`, `photo_2`, `photo_3`, `photo_4`, `photo_5`, `photo_6`, `published_date`, `realtor_id`) VALUES
(1, '45 Drivewood Circle', 'Norwood', 'Norwood', 'MA', '02062', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rhoncus tincidunt sem vitae consequat. Integer placerat quis urna ut consequat. Proin fermentum sem sit amet magna tincidunt, quis semper risus faucibus. In tincidunt risus eget mi lobortis, quis mattis arcu finibus. Aliquam in eros turpis.', 490000, 2, '2.0', 3, 3200, '100.0', 1, 'photos/listings/home-1.jpg', 'photos/listings/home-inside-2.jpg', 'photos/listings/home-inside-3.jpg', 'photos/listings/home-inside-4.jpg', 'photos/listings/home-inside-5.jpg', 'photos/listings/home-inside-6.jpg', 'photos/listings/home-inside-1.jpg', '2019-03-22 05:05:46.000000', 2),
(2, '18 Jefferson Lane', 'Woburn MA, 01801', 'Woburn', 'MA', '01801', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rhoncus tincidunt sem vitae consequat. Integer placerat quis urna ut consequat. Proin fermentum sem sit amet magna tincidunt, quis semper risus faucibus. In tincidunt risus eget mi lobortis, quis mattis arcu finibus. Aliquam in eros turpis.', 550000, 2, '2.0', 2, 3100, '1000.0', 1, 'photos/listings/home-2.jpg', 'photos/listings/home-inside-1_LawfWBS.jpg', 'photos/listings/home-inside-2_LRCurit.jpg', 'photos/listings/home-inside-3_eCqvjB8.jpg', 'photos/listings/home-inside-4_Q7GLS5C.jpg', 'photos/listings/home-inside-5_SDCIe5D.jpg', 'photos/listings/home-inside-6_ZO9ainE.jpg', '2019-03-22 05:09:19.000000', 3),
(3, '187 Woodrow Street', 'Salem MA, 01915', 'Salem', 'MA', '01915', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rhoncus tincidunt sem vitae consequat. Integer placerat quis urna ut consequat. Proin fermentum sem sit amet magna tincidunt, quis semper risus faucibus. In tincidunt risus eget mi lobortis, quis mattis arcu finibus. Aliquam in eros turpis.', 580000, 5, '3.0', 3, 3600, '99.8', 1, 'photos/listings/home-3.jpg', 'photos/listings/home-inside-2_8DCAf9Q.jpg', '', '', '', '', '', '2019-03-22 05:11:11.000000', 4),
(4, '28 Gifford Street', 'Bedford NH, 03103', 'Bedford', 'NH', '03103', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rhoncus tincidunt sem vitae consequat. Integer placerat quis urna ut consequat. Proin fermentum sem sit amet magna tincidunt, quis semper risus faucibus. In tincidunt risus eget mi lobortis, quis mattis arcu finibus. Aliquam in eros turpis.', 380000, 2, '1.0', 0, 2000, '100.0', 1, 'photos/listings/home-4.jpg', '', '', '', '', '', '', '2019-03-22 05:13:49.000000', 4),
(5, '12 United Road', 'South Hampton NH, 03827', 'South Hampton', 'NH', '03827', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rhoncus tincidunt sem vitae consequat. Integer placerat quis urna ut consequat. Proin fermentum sem sit amet magna tincidunt, quis semper risus faucibus. In tincidunt risus eget mi lobortis, quis mattis arcu finibus. Aliquam in eros turpis.', 230000, 3, '2.0', 1, 25000, '100.0', 1, 'photos/listings/home-5.jpg', 'photos/listings/home-inside-1_RtAOpym.jpg', 'photos/listings/home-inside-2_dPhOnDs.jpg', '', '', '', '', '2019-03-22 05:15:04.000000', 3),
(6, '33 Essex Circle', 'Lexington MA, 01731', 'Lexington', 'MA', '01731', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rhoncus tincidunt sem vitae consequat. Integer placerat quis urna ut consequat. Proin fermentum sem sit amet magna tincidunt, quis semper risus faucibus. In tincidunt risus eget mi lobortis, quis mattis arcu finibus. Aliquam in eros turpis.', 780000, 5, '3.0', 2, 78000, '100.0', 1, 'photos/listings/home-6.jpg', 'photos/listings/home-inside-1_T5mZR27.jpg', 'photos/listings/home-inside-2_5E7yksR.jpg', 'photos/listings/home-inside-4_usrB38i.jpg', '', '', '', '2019-03-22 05:16:26.000000', 2);

-- --------------------------------------------------------

--
-- Table structure for table `pages_realtor`
--

CREATE TABLE `pages_realtor` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(254) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `description` longtext NOT NULL,
  `is_mvp` tinyint(1) NOT NULL,
  `hire_date` datetime(6) NOT NULL,
  `profile_image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pages_realtor`
--

INSERT INTO `pages_realtor` (`id`, `name`, `email`, `phone`, `description`, `is_mvp`, `hire_date`, `profile_image`) VALUES
(2, 'Jenny', 'jenny@gmail.com', '0185555555555', 'Jenny', 1, '2019-03-22 05:03:22.000000', 'photos/realtors/jenny.jpg'),
(3, 'Kyle', 'kyle@gmail.com', '018555555555', 'Kyle', 0, '2019-03-22 05:04:31.000000', 'photos/realtors/kyle.jpg'),
(4, 'Mark', 'mark@gmail.com', '018555555555', 'Mark', 0, '2019-03-22 05:05:10.000000', 'photos/realtors/mark.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `pages_listing`
--
ALTER TABLE `pages_listing`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pages_listing_realtor_id_8c3d8385_fk_pages_realtor_id` (`realtor_id`);

--
-- Indexes for table `pages_realtor`
--
ALTER TABLE `pages_realtor`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `pages_listing`
--
ALTER TABLE `pages_listing`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `pages_realtor`
--
ALTER TABLE `pages_realtor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

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
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `pages_listing`
--
ALTER TABLE `pages_listing`
  ADD CONSTRAINT `pages_listing_realtor_id_8c3d8385_fk_pages_realtor_id` FOREIGN KEY (`realtor_id`) REFERENCES `pages_realtor` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
