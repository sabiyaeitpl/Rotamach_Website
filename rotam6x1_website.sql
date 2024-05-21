-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 21, 2024 at 01:33 PM
-- Server version: 5.7.23-23
-- PHP Version: 8.1.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rotam6x1_website`
--

-- --------------------------------------------------------

--
-- Table structure for table `about`
--

CREATE TABLE `about` (
  `id` int(11) NOT NULL,
  `heading1` varchar(555) DEFAULT NULL,
  `heading2` text,
  `heading3` text,
  `heading4` text,
  `image` text,
  `status` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `about`
--

INSERT INTO `about` (`id`, `heading1`, `heading2`, `heading3`, `heading4`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Your End To End Solution Provider', 'Provides Best Solution For Metal<br>\r\nProduction', 'From Liquid Metal Production from the Furnace to the Casting and Discharge of Pigs.', 'Rotamech is an Indian manufacturer of metallurgical industry equipment such as Cast House equipment (Tap hole Drill Machine, Clay/Mud Gun, Linear Casting Machine, Auto Stock Level Monitoring System and other Special Purpose Engineering products. Rotamech Consultants & Engineers Pvt. Ltd is committed to its customers’ needs for more than three decades. In all these years Rotamech has been providing the highest level of design, engineering and workmanship in each of the products at very competitive pricing forming a rich legacy of its own. The company also provides Design Engineering and manufacturing consultancy services for up-gradation / revamping of existing facilities. Side by side it also caters in areas such as Wagon Haulage System, Hot metal Handling System, Waste Heat Recovery system and a variety of other systems necessary in the metallurgical industries.', '455732707_101_0134.JPG', 1, '2024-01-02 15:51:45', '2024-01-02 15:51:45'),
(2, 'We Set Our Standards', 'We in Rotamech have truly set high standards on quality and our products undergo strict Quality Assurance tests before release to our clients. Be it Firm Price, Fixed Timeline and payment terms and conditions as per Contractual Documentation, Rotamech has been a hallmark in all these areas.', 'Providing Full Range Of High Services & Soultions Worldwide.', 'Rotamech Hydraulic Mud / Clay guns, Tap Hole Drill Machine incorporate one of the latest technologies to create the most effective equipment available considering the low cost and operational friendliness. We rely on our advanced technology and resources and do not depend on third party holders while supplying components. We stress on manufacturing and assembling our equipment in-house. However in certain cases and conditions we do import / procure critical components from most reputed manufacturers in the world.', '126193351_Tilter_1.jpg', 1, '2024-01-02 15:51:45', '2024-01-02 15:51:45'),
(3, 'Fast Growing Industrial & Manufacturing Estates.', 'Provides High Performance Services For Multiple Industries And Technologies!', 'Some services here', 'is an effort to enlighten the customer through a process of continuous improvement in manufacturing cost effective blast / Electric Arc furnace and cast house machinery and other engineering equipment.', '800377699_PCM_4.jpg', 1, '2024-01-02 15:51:45', '2024-01-02 15:51:45');

-- --------------------------------------------------------

--
-- Table structure for table `about_why_choose_us`
--

CREATE TABLE `about_why_choose_us` (
  `id` int(11) NOT NULL,
  `heading` varchar(255) DEFAULT NULL,
  `content` text,
  `image` text,
  `status` int(11) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `about_why_choose_us`
--

INSERT INTO `about_why_choose_us` (`id`, `heading`, `content`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Welcome To Creative Slumndog', '<p>There are many variations of passages of Lorem Ipsum available, buthe majority have suffered alteration in some form, by injeed randomised words which don&#39;t look even sliglieable.All the Lorem Ipsum generators on the Internet tend to repe defined chunks as necessary, making this the first true generator on the Internet. It uses</p>', '451395551_image1.jpg', 0, '2023-06-22 11:33:23', '2023-06-23 11:33:23'),
(2, 'What To Creative Slumndog 2', '<p>There are many variations of passages of Lorem Ipsum available, buthe majority have suffered alteration in some form, by injeed randomised words which don&#39;t look even sliglieable.All the Lorem Ipsum generators on the Internet tend to repe defined chunks as necessary, making this the first true generator on the Internet. It uses</p>', '737562554_gallery9.jpg', 1, '2023-06-22 11:35:18', '2023-06-22 11:35:18'),
(3, 'Apply Online', '<p>Contrary to popular belief, Lorem Ipsum isnotimply random text. It has roots in a pi classiLatin litture from 45 BC,</p>', '470422741_choos-01.png', 1, '2023-07-27 11:29:31', '2023-07-27 11:29:31'),
(4, 'Superfast Support', '<p>Contrary to popular belief, Lorem Ipsum isnotimply random text. It has roots in a pi classiLatin litture from 45 BC,</p>', '530851155_choos-02.png', 1, '2023-07-27 11:29:57', '2023-07-27 11:29:57'),
(5, 'Certification', '<p>Contrary to popular belief, Lorem Ipsum isnotimply random text. It has roots in a pi classiLatin litture from 45 BC,</p>', '382332392_choos-03.png', 1, '2023-07-27 11:30:20', '2023-07-27 11:30:20'),
(6, 'Certification1', '<p>Contrary to popular belief, Lorem Ipsum isnotimply random text. It has roots in a pi classiLatin litture from 45 BC,</p>', '578953327_choos-03.png', 1, '2023-07-27 11:30:49', '2023-07-27 11:30:49');

-- --------------------------------------------------------

--
-- Table structure for table `admin_users`
--

CREATE TABLE `admin_users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `full_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `comp_email` varchar(555) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `message` text,
  `email_verifed` int(11) DEFAULT '0',
  `email_otp` int(11) DEFAULT NULL,
  `image` text,
  `type` int(11) NOT NULL COMMENT '1=Web Admin,3=subadmin,2=publisher',
  `address` text,
  `facebook_link` text,
  `google_link` text,
  `twitter_link` text,
  `instagram_link` text,
  `youtube_link` text,
  `meta_title` text,
  `meta_keywords` text,
  `meta_description` text,
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_users`
--

INSERT INTO `admin_users` (`id`, `username`, `password`, `full_name`, `email`, `comp_email`, `phone`, `message`, `email_verifed`, `email_otp`, `image`, `type`, `address`, `facebook_link`, `google_link`, `twitter_link`, `instagram_link`, `youtube_link`, `meta_title`, `meta_keywords`, `meta_description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'admin1', 'admin1', 'Rotamach', 'admin@gmail.com', 'info@rotamech.com', '+91 (033) 2416 2891', '', 0, NULL, '973872380_favicon.png', 1, 'Rotamech Consultants & Engineers Pvt. Ltd', 'https://www.facebook.com/bengalbuslovers/photos/a.112020204030796/197768068789342/?type=3', 'https://www.linkedin.com/company/rotamech-consultants-&-engineers-p-ltd-/mycompany/', 'https://twitt.com', 'https://instagram.com', 'https://www.youtube.com/@rotamechconsultantsenginee1271', 'Rotamech', 'Rotamech,Taphole Drill Machine,Mud Gun,Pig Casting Machine', 'Rotamech', 1, '2023-07-04 11:28:12', '2023-07-04 11:28:12');

-- --------------------------------------------------------

--
-- Table structure for table `articales`
--

CREATE TABLE `articales` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL,
  `journal_name` varchar(255) NOT NULL,
  `authors_name` varchar(255) NOT NULL,
  `doi_or_hsn` varchar(255) NOT NULL,
  `year` int(11) NOT NULL,
  `keywords` varchar(255) NOT NULL,
  `organization_name` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `url_link` varchar(255) NOT NULL,
  `short_description` text NOT NULL,
  `long_description` longtext NOT NULL,
  `image` text,
  `added_by` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '0',
  `recomended_status` int(11) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `articales`
--

INSERT INTO `articales` (`id`, `title`, `category_id`, `journal_name`, `authors_name`, `doi_or_hsn`, `year`, `keywords`, `organization_name`, `country`, `url_link`, `short_description`, `long_description`, `image`, `added_by`, `status`, `recomended_status`, `created_at`, `updated_at`) VALUES
(2, 'Article title 1', 2, 'Test Journal Name 1', 'Authors Name 1', 'DOI/HSN 1', 2023, 'Keywords/Meta Tag 1', 'Organization Name 1', 'Country 1', 'https://www.youtube.com/embed/a3ICNMQW7Ok', '<p>Lorem ipsum</p>', '<p>In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available. Wikipedia11</p>', '759521405_png-transparent-notes-office-pages-papers-print-report-documents-article-news-journalism.png', 0, 1, 1, '2023-07-11 14:26:59', '2023-07-11 14:26:59'),
(3, 'Article 3', 4, 'Test Journal Name 3', 'Authors Name 1 123', 'DOI/HSN 3', 2024, 'Keywords/Meta Tag 1 12', 'Organization Name 4', 'INDIA', 'https://www.youtube.com/embed/K4TOrB7at0Y', '<p><em>Test&nbsp; hjhjad</em></p>', '<p><strong>asdwadas</strong></p>', '', 0, 1, 1, '2023-07-11 11:07:41', '2023-07-11 11:07:41'),
(4, 'Article 2', 2, 'Test Journal Name 1', 'Jhon', 'weqwe', 2024, 'Keywords/Meta Tag 1', 'Organization Name 1', 'INDIA', 'https://www.youtube.com/embed/a3ICNMQW7Ok', '<p>Test des</p>', '<p>Test long</p>', '', 0, 1, 1, '2023-07-20 14:08:39', '2023-07-20 14:08:39'),
(5, 'Demo Article', 2, 'Test Journal Name 2', 'Test Author', 'DOI/HSN 3', 2024, 'Keywords/Meta Tag 1 12', 'Organization Name 4', 'INDIA', 'https://www.youtube.com/embed/K4TOrB7at0Y', '<p>Test&nbsp;</p>', '<p>Test</p>', '', 0, 1, 1, '2023-07-20 14:12:24', '2023-07-20 14:12:24');

-- --------------------------------------------------------

--
-- Table structure for table `article_categories`
--

CREATE TABLE `article_categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `image` text,
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `article_categories`
--

INSERT INTO `article_categories` (`id`, `name`, `color`, `image`, `status`, `created_at`, `updated_at`) VALUES
(2, 'Demo Article Category 1', '#db1a1a', '967176663_png-transparent-hypermedia-others-miscellaneous-text-logo.png', 1, '2023-07-11 13:02:12', '2023-07-11 13:02:12'),
(3, 'Demo BlogCategory 2', '#3624bc', '436250831_pngtree-free-demo-tag-clipart-vector-png-image_6648845.png', 1, '2023-07-11 13:02:27', '2023-07-11 13:02:27'),
(4, 'Demo Article Category 3', '#f2e231', '709117443_download.png', 1, '2023-07-11 11:06:22', '2023-07-11 11:06:22');

-- --------------------------------------------------------

--
-- Table structure for table `article_comments`
--

CREATE TABLE `article_comments` (
  `id` int(11) NOT NULL,
  `article_id` int(11) DEFAULT NULL,
  `commenter_name` varchar(100) DEFAULT NULL,
  `commenter_email` varchar(100) DEFAULT NULL,
  `comment_content` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `article_views`
--

CREATE TABLE `article_views` (
  `id` int(11) NOT NULL,
  `article_id` int(11) DEFAULT NULL,
  `view_count` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `article_views`
--

INSERT INTO `article_views` (`id`, `article_id`, `view_count`) VALUES
(1, 5, 4),
(2, 4, 5),
(3, 3, 5),
(4, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE `banner` (
  `id` int(11) NOT NULL,
  `heading1` varchar(555) DEFAULT NULL,
  `heading2` text,
  `btn_name` text,
  `btn_link` text,
  `image` text,
  `status` int(11) NOT NULL,
  `order_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `banner`
--

INSERT INTO `banner` (`id`, `heading1`, `heading2`, `btn_name`, `btn_link`, `image`, `status`, `order_by`, `created_at`, `updated_at`) VALUES
(30, 'Concept to <br> commissioning', 'Concept to <br> commissioning', 'Learn More', '', '761069237_banner1.png', 1, 1, '2024-01-02 15:51:45', '2024-01-02 15:51:45');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `title` varchar(555) DEFAULT NULL,
  `content` text,
  `image` text,
  `video` text,
  `status` int(11) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `category_id`, `title`, `content`, `image`, `video`, `status`, `created_at`, `updated_at`) VALUES
(2, 3, 'Blog titile', '<p>Fintellect Intelligent Financial Services &amp; IMF LLP celebrated &#39;6th Annual World Financial Planning Day 2022&#39; in Mirzapur District on 11th October 2022.</p>', '693525471_image2.jpg', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/eVc6GIFyOgQ\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', 1, '2023-07-02 12:14:51', '2023-07-02 12:14:51'),
(3, 1, 'Blog title-2', '<p>Fintellect Intelligent Financial Services &amp; IMF LLP celebrated &#39;6th Annual World Financial Planning Day .</p>', '497702282_register-bg.png', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/eVc6GIFyOgQ\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', 1, '2023-07-02 12:15:25', '2023-07-02 12:15:25'),
(5, 1, 'Blog Test 1', '<p>Test content</p>\r\n\r\n<p>Test content</p>\r\n\r\n<p>Test content</p>\r\n\r\n<p>Test content</p>', '954734249_download.png', 'This is a test video', 1, '2023-07-14 04:40:21', '2023-07-14 04:40:21');

-- --------------------------------------------------------

--
-- Table structure for table `blog_categories`
--

CREATE TABLE `blog_categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blog_categories`
--

INSERT INTO `blog_categories` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Education', 1, '2023-06-28 23:18:01', '2023-06-28 23:18:01'),
(2, 'Medical', 1, '2023-07-02 12:16:07', '2023-07-02 12:16:07'),
(3, 'Research', 1, '2023-07-02 12:16:25', '2023-07-02 12:16:25'),
(4, 'Art', 1, '2023-07-02 12:16:41', '2023-07-02 12:16:41'),
(5, 'Animal & Wild Life', 1, '2023-07-03 18:16:59', '2023-07-03 18:16:59'),
(6, 'Environment', 1, '2023-07-03 18:19:57', '2023-07-03 18:19:57');

-- --------------------------------------------------------

--
-- Table structure for table `blog_comments`
--

CREATE TABLE `blog_comments` (
  `id` int(11) NOT NULL,
  `blog_id` int(11) DEFAULT NULL,
  `commenter_name` varchar(100) DEFAULT NULL,
  `commenter_email` varchar(100) DEFAULT NULL,
  `comment_content` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `blog_comments`
--

INSERT INTO `blog_comments` (`id`, `blog_id`, `commenter_name`, `commenter_email`, `comment_content`, `created_at`) VALUES
(1, 2, 'Abbas', 'abbas@gmail.com', 'abcde', '2023-07-12 19:54:27'),
(2, 2, 'Abbas', 'abbas@gmail.com', 'hi fox', '2023-07-12 19:55:08'),
(3, 2, 'Abbas', 'abbas@gmail.com', 'hello boss', '2023-07-12 19:57:15'),
(4, 2, 'Abbas', 'abbas@gmail.com', 'test clear from', '2023-07-12 20:01:59'),
(5, 2, 'Abbas', 'abbas@gmail.com', 'test ', '2023-07-12 20:02:21'),
(6, 2, 'Abbas', 'abbas@gmail.com', 'test clear from is this ', '2023-07-12 20:02:38'),
(7, 2, 'Abbas', 'abbas@gmail.com', 'test clear from is this ', '2023-07-12 20:07:25'),
(8, 2, 'Abbas', 'abbas@gmail.com', 'test clear from is this ', '2023-07-12 20:09:20'),
(9, 2, 'Abbas', 'abbas@gmail.com', 'test clear from is this ', '2023-07-12 20:09:53'),
(10, 2, 'Abbas', 'abbas@gmail.com', 'test clear from is this ', '2023-07-12 20:10:01'),
(11, 2, 'Abbas', 'abbas@gmail.com', 'test clear from is this ', '2023-07-12 20:10:16'),
(12, 3, 'Sgaar', 'sagar@gmail.com', 'This is good blog', '2023-07-12 20:18:55'),
(13, 3, 'Sgaar', 'sagar@gmail.com', 'great things', '2023-07-12 20:19:24'),
(14, 2, 'Eyasmina', 'Eyasmina@gmail.com', 'test comments ', '2023-07-14 15:16:36'),
(15, 3, 'Test Name', 'test@gmail.com', 'Hello World', '2023-07-19 06:58:08');

-- --------------------------------------------------------

--
-- Table structure for table `blog_views`
--

CREATE TABLE `blog_views` (
  `id` int(11) NOT NULL,
  `blog_id` int(11) DEFAULT NULL,
  `view_count` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `blog_views`
--

INSERT INTO `blog_views` (`id`, `blog_id`, `view_count`) VALUES
(1, 2, 45),
(2, 3, 51),
(3, 5, 3);

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL,
  `journal_name` varchar(255) NOT NULL,
  `author_id` varchar(255) NOT NULL,
  `doi_or_hsn` varchar(255) NOT NULL,
  `year` int(11) NOT NULL,
  `keywords` varchar(255) NOT NULL,
  `organization_name` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `url_link` varchar(255) NOT NULL,
  `short_description` text NOT NULL,
  `long_description` longtext NOT NULL,
  `image` text,
  `added_by` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '0',
  `recomended_status` int(11) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `title`, `category_id`, `journal_name`, `author_id`, `doi_or_hsn`, `year`, `keywords`, `organization_name`, `country`, `url_link`, `short_description`, `long_description`, `image`, `added_by`, `status`, `recomended_status`, `created_at`, `updated_at`) VALUES
(1, 'Test Book', 1, 'Test Journal Name', '3', 'DOI/HSN 3', 2023, 'Keywords/Meta Tag 1', 'Organization Name 1', 'Country 1', 'https://www.youtube.com/embed/K4TOrB7at0Y', '<p>xcsdasdas</p>', '<p>sadsadasd</p>', '473681759_BOOKS .docx', 0, 1, 1, '2023-07-11 19:58:06', '2023-07-11 19:58:06'),
(2, 'Book 2', 4, 'Test Journal Name 2', '3', 'DOI/HSN 3', 2023, 'Keywords/Meta Tag 1 2', 'Organization Name 4', 'INDIA', 'https://www.youtube.com/embed/K4TOrB7at0Y', '<p>xzcdf</p>', '<p>waeqwe</p>', '221047259_BOOKS .docx', 0, 1, 1, '2023-07-11 14:41:09', '2023-07-11 14:41:09'),
(3, 'Test Book 3', 4, 'Test Journal Name 3', '3', 'DOI/HSN 3', 2024, 'Keywords/Meta Tag 1 12', 'Organization Name 4', 'INDIA', 'https://www.youtube.com/embed/K4TOrB7at0Y', '<p>Test short</p>', '<p>Test Long</p>', '610988518_ARTICLES .docx', 0, 1, 1, '2023-07-14 04:39:39', '2023-07-14 04:39:39');

-- --------------------------------------------------------

--
-- Table structure for table `books_categories`
--

CREATE TABLE `books_categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `image` text,
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `books_categories`
--

INSERT INTO `books_categories` (`id`, `name`, `color`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Demo Book Category1', '#0cbcdf', '245905302_download.png', 1, '2023-07-11 19:51:52', '2023-07-11 19:51:52'),
(4, 'Demo Book Category 2', '#ebcc05', '850042823_png-clipart-technology-demonstration-computer-software-internet-e-commerce-unitrends-others-miscellaneous-text.png', 1, '2023-07-11 14:40:23', '2023-07-11 14:40:23');

-- --------------------------------------------------------

--
-- Table structure for table `book_comments`
--

CREATE TABLE `book_comments` (
  `id` int(11) NOT NULL,
  `book_id` int(11) DEFAULT NULL,
  `commenter_name` varchar(100) DEFAULT NULL,
  `commenter_email` varchar(100) DEFAULT NULL,
  `comment_content` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `book_views`
--

CREATE TABLE `book_views` (
  `id` int(11) NOT NULL,
  `book_id` int(11) DEFAULT NULL,
  `view_count` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `book_views`
--

INSERT INTO `book_views` (`id`, `book_id`, `view_count`) VALUES
(1, 3, 2);

-- --------------------------------------------------------

--
-- Table structure for table `bulletian`
--

CREATE TABLE `bulletian` (
  `id` int(11) NOT NULL,
  `description` text,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bulletian`
--

INSERT INTO `bulletian` (`id`, `description`, `created_at`, `updated_at`) VALUES
(1, '<p><span class=\"marker\"><strong>Successfully Commissioned a Double Strand Pig Casting Machine for M/s. Bengal Energy Limited, at Kharagpur.&nbsp; On October-2023 , we have successfully supplied a Matte Caster Machine to M/S Anglo American Platinum at Johannesburg , Republic Of South Africa.&nbsp; &nbsp;On January-2024 , we have successfully supplied Mud Gun &amp; Drill Machine to M/S Vulcan Pelletizing LLC at Sohar , Sultanate Of Oman .</strong></span></p>', '2024-01-04 15:23:02', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `career`
--

CREATE TABLE `career` (
  `id` int(11) NOT NULL,
  `full_name` varchar(255) DEFAULT NULL,
  `phone_number` varchar(20) DEFAULT NULL,
  `email_id` varchar(255) DEFAULT NULL,
  `job_type` varchar(50) DEFAULT NULL,
  `message` text,
  `image` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `career`
--

INSERT INTO `career` (`id`, `full_name`, `phone_number`, `email_id`, `job_type`, `message`, `image`, `status`, `created_at`) VALUES
(1, 'Abbas uddin', '9902127983', '', 'Job Type 2', 'hello', '508528347_Holiday List 2024.pdf', 0, '2024-01-04 18:31:44'),
(2, 'hello', '9902127983', '', 'Job Type 3', '', NULL, 0, '2024-01-04 18:32:06'),
(3, 'abbas', '8660867952', 'abbas@gmail.com', 'Job Type 3', 'hello', '316673859_eyasminaresume.pdf', 0, '2024-01-04 18:34:58'),
(4, 'Abbas uddin Sk', '8660867952', 'laltu@gmail.com', 'Job Type 4', 'hello', '848782912_Holiday List 2024.pdf', 0, '2024-01-04 18:42:09'),
(5, 'hello', '9902127983', 'jio@gmail.com', 'Job Type 3', '', NULL, 1, '2024-01-04 18:56:44'),
(6, 'Sk Jon', '99087356527', 'jon@gmail.com', 'Job Type 3', 'Test', NULL, 0, '2024-01-24 13:23:49'),
(7, 'Anindya Chatterjee', '09836185879', 'chatterjee.anindya@yahoo.com', 'Enginners', 'tEST', NULL, 0, '2024-05-21 12:42:28'),
(8, 'octaorath', '85214792165', 'vanisaels@yandex.ru', 'Enginners', 'Компания «Octastudio» специализируется на таких услугах, как: разработка проектов на 1С битрикс, переработка или доработка имеющегося сайта, редактирование контента, анализ конкурентов. Также к основным услугам относят и обновление структуры, модернизацию функционала, подготовку портала для продвижения. На сайте https://octa-studio.ru (<a href=https://octa-studio.ru>создаем веб проекты</a> ) ознакомьтесь с полным перечнем услуг, которые можно заказать прямо сейчас, оформив заявку либо позвонив по телефону, чтобы дополнительно уточнить все детали. Также компания на профессиональном уровне занимается и разработкой логотипа, фирменного стиля. К преимуществам обращения в «Octastudio» относят: \r\n \r\n- в компании работают компетентные, квалифицированные специалисты; \r\n- привлекательные расценки; \r\n- большой спектр услуг; \r\n- более 60 успешно выполненных проектов. \r\n \r\nОпытные сотрудники компании создадут сайт, исходя из ваших потребностей, целей, бюджета, особенностей сферы деятельности. Они внимательно выслушают ваши пожелания, проведут анализ ниши и предложений конкурентов, чтобы реализовать уникальный продукт, которому нет аналогов. Не сомневайтесь - в «Octastudio» ваш проект будет выполнен максимально быстро, потому как сотрудники уважают ваше и свое время и знают, что вы хотите получить готовый сайт в ближайшее время. В компании трудятся лучшие дизайнеры, разработчики, content-менеджеры, а также маркетологи, которые знают, как решить проблему максимально оперативно и грамотно. \r\n \r\nСоздаются только эффективные решения, которые принесут прибыль клиентам. Идеи формируются с учетом многолетнего опыта в сфере IT-индустрии. Сотрудники не навязывают лишних услуг. Вы воспользуетесь только теми, что выбрали сами. Для того чтобы иметь представление о работе коллектива, ознакомьтесь со свежими кейсами.', NULL, 0, '2024-05-21 13:08:08');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `quentity` int(11) DEFAULT NULL,
  `sell_price` double(15,2) DEFAULT NULL,
  `price` double(15,2) NOT NULL DEFAULT '0.00',
  `image` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `product_id`, `product_name`, `quentity`, `sell_price`, `price`, `image`, `status`, `created_at`) VALUES
(7, 1696532188, 5, 'dfdxvxv', 1, 3000.00, 5000.00, '811182506_Screenshot (4).png', 1, '2023-10-05 18:56:28'),
(8, 1696533529, 2, 'dffgdf', 1, 1500.00, 2000.00, '742105818_560853975_image3.jpg', 1, '2023-10-05 19:18:49'),
(9, 1696582941, 5, 'dfdxvxv', 1, 3000.00, 5000.00, '811182506_Screenshot (4).png', 1, '2023-10-06 09:02:22'),
(10, 1696702711, 5, 'dfdxvxv', 1, 3000.00, 5000.00, '811182506_Screenshot (4).png', 1, '2023-10-07 18:18:31'),
(11, 1696741609, 5, 'dfdxvxv', 1, 3000.00, 5000.00, '811182506_Screenshot (4).png', 1, '2023-10-08 05:06:49'),
(12, 1697521471, 2, 'dffgdf', 1, 1500.00, 2000.00, '742105818_560853975_image3.jpg', 1, '2023-10-17 05:44:32');

-- --------------------------------------------------------

--
-- Table structure for table `child_services_comments`
--

CREATE TABLE `child_services_comments` (
  `id` int(11) NOT NULL,
  `chid_services_id` int(11) DEFAULT NULL,
  `commenter_name` varchar(100) DEFAULT NULL,
  `commenter_email` varchar(100) DEFAULT NULL,
  `comment_content` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `child_services_comments`
--

INSERT INTO `child_services_comments` (`id`, `chid_services_id`, `commenter_name`, `commenter_email`, `comment_content`, `created_at`) VALUES
(1, 1, 'Test Name', 'test@gmail.com', 'Test Comment', '2023-07-28 08:36:31');

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE `client` (
  `id` int(11) NOT NULL,
  `heading` varchar(255) DEFAULT NULL,
  `client_type` varchar(255) DEFAULT NULL,
  `image` text,
  `status` int(11) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`id`, `heading`, `client_type`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Client-1', 'overseas', '510172658_PCC.png', 1, '2023-06-22 11:33:23', '2023-06-23 11:33:23'),
(2, 'Client-1', 'overseas', '977252529_KCM_2000.jpg', 1, '2023-06-22 11:35:18', '2023-06-22 11:35:18'),
(3, 'Client-1', 'overseas', '891333438_unitedsiclogo.png', 1, '2023-07-27 11:29:31', '2023-07-27 11:29:31'),
(4, 'Client-1', 'overseas', '625935036_Iran_Ferro_1.png', 1, '2023-07-27 11:29:57', '2023-07-27 11:29:57'),
(7, 'Client-1', 'overseas', '450518352_KCC.jpg', 1, '2023-06-22 11:35:18', '2023-06-22 11:35:18'),
(8, 'Client-1', 'overseas', '589091118_pyromet.png', 1, '2023-07-27 11:29:31', '2023-07-27 11:29:31'),
(9, 'Client-1', 'overseas', '908399244_atifc-1.jpg', 1, '2024-01-30 12:02:40', '2024-01-30 12:02:40'),
(10, 'Client-1', 'overseas', '648911098_Vulcan_2.png', 1, '2024-01-30 12:02:58', '2024-01-30 12:02:58'),
(11, 'Client-1', 'overseas', '871912211_Core.jpg', 1, '2024-01-30 12:03:16', '2024-01-30 12:03:16'),
(12, 'Client-1', 'overseas', '343727593_AAP.jpg', 1, '2024-01-30 12:03:32', '2024-01-30 12:03:32'),
(14, 'Client-1', 'domestic', '718573417_IMFA-logo.jpg', 1, '2024-01-30 12:05:17', '2024-01-30 12:05:17'),
(15, 'Client-1', 'domestic', '182044166_Hindalco.jpg', 1, '2024-01-30 12:05:32', '2024-01-30 12:05:32'),
(16, 'Client-1', 'domestic', '959407019_sunflag-steel.jpg', 1, '2024-01-30 12:05:45', '2024-01-30 12:05:45'),
(17, 'Client-1', 'domestic', '348648349_kajaria.jpg', 1, '2024-01-30 12:05:56', '2024-01-30 12:05:56'),
(18, 'Client-1', 'domestic', '795478603_Electrosteel.jpg', 1, '2024-01-30 12:06:07', '2024-01-30 12:06:07'),
(19, 'Client-1', 'domestic', '112167406_NECO_Logo.png', 1, '2024-01-30 12:06:18', '2024-01-30 12:06:18'),
(20, 'Client-1', 'domestic', '522422188_NINL_Logo.jpg', 1, '2024-01-30 12:06:28', '2024-01-30 12:06:28'),
(21, 'Client-1', 'domestic', '114537445_BE_Logo_Final-1.png', 1, '2024-01-30 12:06:41', '2024-01-30 12:06:41'),
(22, 'Client-1', 'domestic', '883173587_Jai Balaji Industries Limited 4.jpg', 1, '2024-01-30 12:06:55', '2024-01-30 12:06:55'),
(23, 'Client-1', 'domestic', '980668573_Kalyani_Group_logo.svg.png', 1, '2024-01-30 12:09:15', '2024-01-30 12:09:15'),
(24, 'Client-1', 'domestic', '527780438_VEDANTA-LTD.png', 1, '2024-01-30 12:09:27', '2024-01-30 12:09:27'),
(25, 'Client-1', 'domestic', '489626166_JSPL.jpg', 1, '2024-01-30 12:09:39', '2024-01-30 12:09:39'),
(26, 'Client-1', 'domestic', '977980971_Jindal Saw Limited 2.jpg', 1, '2024-01-30 12:09:54', '2024-01-30 12:09:54'),
(27, 'Client-1', 'domestic', '224295369_L&T.jpg', 1, '2024-01-30 12:10:09', '2024-01-30 12:10:09'),
(28, 'Client-1', 'domestic', '199278918_JSW_Group_logo.svg.png', 1, '2024-01-30 12:10:46', '2024-01-30 12:10:46'),
(29, 'Client-1', 'domestic', '962942878_TATA-Steel.png', 1, '2024-01-30 12:11:01', '2024-01-30 12:11:01'),
(30, 'Client-1', 'domestic', '322128237_SAIL.png', 1, '2024-01-30 12:11:14', '2024-01-30 12:11:14'),
(31, 'banner-1', 'domestic', '503705222_INDIA - Website.jpg', 1, '2024-02-01 13:15:35', '2024-02-01 13:15:35'),
(32, 'Banner-2', 'domestic', '483646846_World - Website.png', 1, '2024-02-01 13:15:50', '2024-02-01 13:15:50');

-- --------------------------------------------------------

--
-- Table structure for table `cms`
--

CREATE TABLE `cms` (
  `id` int(11) NOT NULL,
  `menu_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text,
  `video` text,
  `image` text,
  `url` varchar(555) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cms`
--

INSERT INTO `cms` (`id`, `menu_id`, `title`, `description`, `video`, `image`, `url`, `status`, `created_at`) VALUES
(4, 9, 'Terms of Us', '<h2>Where can I get some?</h2>\r\n\r\n<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#39;t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn&#39;t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>', 'https://www.youtube.com/watch?v=sI44W5jnWJY&list=RD6vWJR15udvw&index=2', '326113050_logoeit.webp', 'http://localhost/orangeglobal/cms.php?id=NA==', 1, '2023-12-07 19:36:43'),
(5, 6, 'My Privacy Rights', '<p><strong>What is Lorem Ipsum?</strong></p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 'https://www.youtube.com/watch?v=sI44W5jnWJY&list=RD6vWJR15udvw&index=2', '653694331_logo1.webp', 'http://localhost/orangeglobal/cms.php?type=NQ==', 1, '2023-12-07 19:37:43'),
(6, 6, 'Privacy Policy', '<p><strong>What is Lorem Ipsum?</strong></p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 'https://www.youtube.com/watch?v=sI44W5jnWJY&list=RD6vWJR15udvw&index=2', '653694331_logo1.webp', 'http://localhost/orangeglobal/cms.php?type=NQ==', 1, '2023-12-07 19:37:43');

-- --------------------------------------------------------

--
-- Table structure for table `contents`
--

CREATE TABLE `contents` (
  `id` int(11) NOT NULL,
  `heading` varchar(255) DEFAULT NULL,
  `sub_heading` text,
  `content` text,
  `image` text,
  `type` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contents`
--

INSERT INTO `contents` (`id`, `heading`, `sub_heading`, `content`, `image`, `type`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Setting A Global Standard In Industrial Contracting.', 'Provides High Performance Services For Multiple Industries And Technologies!', '<p>It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing.</p>', '701626674_image3.jpg', 'home_about', 1, '2023-06-21 11:11:09', '2023-06-21 11:11:09');

-- --------------------------------------------------------

--
-- Table structure for table `count`
--

CREATE TABLE `count` (
  `id` int(11) NOT NULL,
  `heading1` varchar(555) DEFAULT NULL,
  `heading2` int(11) DEFAULT NULL,
  `heading3` varchar(255) DEFAULT NULL,
  `heading4` int(11) DEFAULT NULL,
  `heading5` varchar(255) DEFAULT NULL,
  `heading6` int(11) DEFAULT NULL,
  `image` text,
  `status` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `count`
--

INSERT INTO `count` (`id`, `heading1`, `heading2`, `heading3`, `heading4`, `heading5`, `heading6`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Turnkey ,  Consultancy , Revamping', 1300, 'Domestic,Overseas,Govt,<br>Semi Govt,PSUs,Private', 900, 'Clients always come back to Rotamech', 98, '209106352_Tilter_1.jpg', 1, '2024-01-04 12:39:50', '2024-01-04 12:39:50');

-- --------------------------------------------------------

--
-- Table structure for table `design`
--

CREATE TABLE `design` (
  `id` int(11) NOT NULL,
  `title` varchar(555) DEFAULT NULL,
  `content` text,
  `instruction` text,
  `image` text,
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `design`
--

INSERT INTO `design` (`id`, `title`, `content`, `instruction`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'DESIGN', '<p>ROTAMECH is committed to principles of quality, continuous improvement and total customer satisfaction. We also have a hand-picked and dedicated team of seasoned engineers and those help to provide a foundation upon which we can build in order to be as good as the best and offer solutions that are world class and cost effective.</p>\r\n\r\n<p>ROTAMECH&rsquo;s highly-qualified staff will design products based on your specifications. Using the latest finite element analysis software we are continually improving our design engineering quality and create premium products at much cheaper rates to our competitors worldwide. Design engineering and manufacturing personnel complement each other on a daily basis and in conjunction with our customers we try to deliver premium quality products. All our products are quality tested both part by part and also at the time of assembly. This valuable teamwork approach results in new and improved products meeting the ever-changing needs of iron and steelmakers.</p>\r\n\r\n<p>ROTAMECH design team uses the latest software aided design technologies such as AutoCad&reg;, Pro/Engineer&reg;, Solidworks&reg;, MouldFlow&reg; and various AUTOLISP routines programmed in house by our skilled and efficient IT educated Design Engineering team. 25 yrs of Equipment Design, manufacturing and commissioning experience has taught us to identify the practical difficulties encountered on plant shop floor and all our products have been designed to ease maintenance and we strive to provide a consolidated solution to all.</p>\r\n\r\n<p>At ROTAMECH we are determined to achieve the best of quality management system in our operations and fullfil the needs of our customers by exceeding their expectations in developing products which satisfies all quality norms and we guarantee the best rates. This helps us to maintain a &ldquo;win-a-win&rdquo; relationship with you.</p>', 'Click on the links to download the drawing files.\r\nTo open them you need to Unzip them using a free zip software like Winzip and then read them in Autocad R2000 environment.', '843623713_PCM_3.jpg', 1, '2024-01-05 12:31:08', '2024-01-30 12:28:58');

-- --------------------------------------------------------

--
-- Table structure for table `drawing`
--

CREATE TABLE `drawing` (
  `id` int(11) NOT NULL,
  `heading` varchar(255) DEFAULT NULL,
  `image` text,
  `status` int(11) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `emailtable`
--

CREATE TABLE `emailtable` (
  `id` int(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `emailtable`
--

INSERT INTO `emailtable` (`id`, `email`, `status`, `created_at`) VALUES
(1, 'abbas@gmail.com', 1, '2024-01-04 17:39:22'),
(2, 'sambhu@gmail.com', 1, '2024-01-04 17:42:24');

-- --------------------------------------------------------

--
-- Table structure for table `enquiry`
--

CREATE TABLE `enquiry` (
  `id` int(11) NOT NULL,
  `full_name` varchar(255) DEFAULT NULL,
  `phone_number` varchar(20) DEFAULT NULL,
  `email_id` varchar(255) DEFAULT NULL,
  `message` text,
  `status` int(11) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `enquiry`
--

INSERT INTO `enquiry` (`id`, `full_name`, `phone_number`, `email_id`, `message`, `status`, `created_at`) VALUES
(1, 'Abbas uddin', '8660867952', 'abbas@gmail.com', 'hello', 0, '2024-01-04 18:56:11'),
(2, 'Abbas', '8660867952', 'abbas@gmail.com', 'hello check today', 0, '2024-01-05 11:41:30'),
(3, 'Sagar s', '9902127983', 'sagar@gmail.com', 'hello check 2nd', 0, '2024-01-05 11:43:46'),
(4, 'Abbas', '9902127983', 'abbas123@gmail.com', 'Hello boss', 0, '2024-01-05 11:44:33'),
(5, 'sabiya', 'hello abbas', 'abbas@gmail.com', 'helli', 0, '2024-01-05 11:45:07'),
(6, 'Debarati ghosh', '08697021584', 'debaratighosh404@gmail.com', 'testing', 1, '2024-05-21 11:20:16'),
(7, 'Anindya Chatterjee', '09836185879', 'chatterjee.anindya@yahoo.com', 'pcm', 0, '2024-05-21 12:42:44');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(11) NOT NULL,
  `title` varchar(555) DEFAULT NULL,
  `author_name` varchar(255) NOT NULL,
  `description` longtext,
  `image` text,
  `video` text,
  `status` int(11) NOT NULL DEFAULT '0',
  `popular` int(11) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `title`, `author_name`, `description`, `image`, `video`, `status`, `popular`, `created_at`, `updated_at`) VALUES
(1, 'Event 1', 'Test Author', '<h3>What is Lorem Ipsum?</h3>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<h3>Where does it come from?</h3>\r\n\r\n<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of &quot;de Finibus Bonorum et Malorum&quot; (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, comes from a line in section 1.10.32.</p>\r\n\r\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from &quot;de Finibus Bonorum et Malorum&quot; by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', '845691439_courses-04.jpg', 'https://www.youtube.com/embed/3pEKxWjlNCs', 1, 1, '2023-08-01 14:03:19', '2023-08-01 14:03:19'),
(2, 'Event 2', 'Test Author 2', '<h3>Where does it come from?</h3>\r\n\r\n<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of &quot;de Finibus Bonorum et Malorum&quot; (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, comes from a line in section 1.10.32.</p>\r\n\r\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from &quot;de Finibus Bonorum et Malorum&quot; by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', '', 'https://www.youtube.com/embed/a3ICNMQW7Ok', 1, 1, '2023-08-01 14:03:39', '2023-08-01 14:03:39');

-- --------------------------------------------------------

--
-- Table structure for table `event_views`
--

CREATE TABLE `event_views` (
  `id` int(11) NOT NULL,
  `event_id` int(11) DEFAULT NULL,
  `view_count` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `event_views`
--

INSERT INTO `event_views` (`id`, `event_id`, `view_count`) VALUES
(1, 1, 23),
(2, 2, 7);

-- --------------------------------------------------------

--
-- Table structure for table `free_trainning_comments`
--

CREATE TABLE `free_trainning_comments` (
  `id` int(11) NOT NULL,
  `commenter_name` varchar(100) DEFAULT NULL,
  `commenter_phone` varchar(250) DEFAULT NULL,
  `commenter_email` varchar(100) DEFAULT NULL,
  `comment_content` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `innovation`
--

CREATE TABLE `innovation` (
  `id` int(11) NOT NULL,
  `title` varchar(555) DEFAULT NULL,
  `description` longtext,
  `image` text,
  `document` varchar(255) DEFAULT NULL,
  `video` text,
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `innovation`
--

INSERT INTO `innovation` (`id`, `title`, `description`, `image`, `document`, `video`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Inovation-title(1)', '<p>Something we go run</p>', '252088743_user.png', '821122975_Resume UEMK_1697214339.pdf', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/omuS_nwbJ1Q?si=NFVowHwsrjzNSYu3\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', 1, '2023-10-16 20:28:19', '2023-10-16 20:28:19');

-- --------------------------------------------------------

--
-- Table structure for table `innovation_details`
--

CREATE TABLE `innovation_details` (
  `id` int(11) NOT NULL,
  `innovation_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `full_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `message` text,
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `job`
--

CREATE TABLE `job` (
  `id` int(11) NOT NULL,
  `menu_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text,
  `job_status` int(11) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `job`
--

INSERT INTO `job` (`id`, `menu_id`, `title`, `description`, `job_status`, `type`, `status`, `created_at`) VALUES
(19, 3, 'Software Enginner', '<p>&bull; Analysing information received from stakeholders to plan and execute software development for varying needs<br />\r\n&bull; Finding bugs and fixing them to ensure the software runs without errors<br />\r\n&bull; Developing and implementing new techniques for testing and validating software systems<br />\r\n&bull; Guiding the software programming efforts<br />\r\n&bull; Directing the compilation of the documentation<br />\r\n&bull; Communicating project statuses and proposals in close collaboration with clients and other internal departments<br />\r\n&bull; Exploring the areas for improvement and constantly developing the user experience by adding new features<br />\r\n&bull; Maintaining and enhancing current codebases, and peer-reviewing code modifications<br />\r\n&bull; Keep abreast with emerging technologies by doing the study, going to classes, etc.</p>', 1, 'Job Openings', 1, '2023-12-13 17:14:11'),
(20, 2, 'Designer', '<p>&bull; Analysing information received from stakeholders to plan and execute software development for varying needs<br />\r\n&bull; Finding bugs and fixing them to ensure the software runs without errors<br />\r\n&bull; Developing and implementing new techniques for testing and validating software systems<br />\r\n&bull; Guiding the software programming efforts<br />\r\n&bull; Directing the compilation of the documentation<br />\r\n&bull; Communicating project statuses and proposals in close collaboration with clients and other internal departments<br />\r\n&bull; Exploring the areas for improvement and constantly developing the user experience by adding new features<br />\r\n&bull; Maintaining and enhancing current codebases, and peer-reviewing code modifications<br />\r\n&bull; Keep abreast with emerging technologies by doing the study, going to classes, etc.</p>', 1, 'Job Openings', 1, '2023-12-13 17:18:00');

-- --------------------------------------------------------

--
-- Table structure for table `job_applications`
--

CREATE TABLE `job_applications` (
  `id` int(11) NOT NULL,
  `job_id` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile` varchar(13) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `cover_letter` text,
  `image` text,
  `status` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `job_applications`
--

INSERT INTO `job_applications` (`id`, `job_id`, `name`, `email`, `mobile`, `location`, `cover_letter`, `image`, `status`, `created_at`) VALUES
(2, 19, 'abbas', 'abbas@gmail.com', '', NULL, 'test', '983553661_', 0, '2023-12-14 10:40:49'),
(3, 20, 'Boton', 'boton@gmail.com', '', NULL, 'hello boss', '217035900_', 0, '2023-12-14 10:46:46'),
(7, 19, 'Abbas uddin ', '', '9902127983', 'kolkata', '', NULL, 0, '2023-12-20 12:00:43');

-- --------------------------------------------------------

--
-- Table structure for table `job_type`
--

CREATE TABLE `job_type` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `job_type`
--

INSERT INTO `job_type` (`id`, `name`, `status`, `created_at`) VALUES
(1, 'Job Openings', 1, '2023-12-13 15:43:34'),
(2, 'Internship', 1, '2023-12-13 15:45:38'),
(3, 'Enginners', 1, '2024-02-01 12:37:31');

-- --------------------------------------------------------

--
-- Table structure for table `magazine`
--

CREATE TABLE `magazine` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL,
  `journal_name` varchar(255) NOT NULL,
  `author_id` varchar(255) NOT NULL,
  `doi_or_hsn` varchar(255) NOT NULL,
  `year` int(11) NOT NULL,
  `keywords` varchar(255) NOT NULL,
  `organization_name` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `url_link` varchar(255) NOT NULL,
  `short_description` text NOT NULL,
  `long_description` longtext NOT NULL,
  `image` text,
  `added_by` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '0',
  `recomended_status` int(11) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `magazine`
--

INSERT INTO `magazine` (`id`, `title`, `category_id`, `journal_name`, `author_id`, `doi_or_hsn`, `year`, `keywords`, `organization_name`, `country`, `url_link`, `short_description`, `long_description`, `image`, `added_by`, `status`, `recomended_status`, `created_at`, `updated_at`) VALUES
(1, 'Demo Magazine 1', 1, 'Test Journal Name 1', '3', 'DOI/HSN 1', 2023, 'Keywords/Meta Tag 1', 'Organization Name 1', 'INDIA', 'https://www.youtube.com/embed/K4TOrB7at0Y', '<p>dfaeaw</p>', '<p>adaeeaa</p>', '569322604_Magazine.docx', 0, 1, 1, '2023-07-18 13:59:01', '2023-07-18 13:59:01'),
(2, 'Demo Magazine 2', 2, 'Test Journal Name 2', '7', 'DOI/HSN 3', 2024, 'Keywords/Meta Tag 1 12', 'Organization Name 4', 'INDIA', 'https://www.youtube.com/embed/a3ICNMQW7Ok', '<p>Test sss</p>', '<p>ABcdss</p>', '541957573_BOOKS .docx', 0, 1, 1, '2023-07-20 17:26:10', '2023-07-20 17:26:10'),
(3, 'Demo Magazine 3', 1, 'Test Journal Name123', '7', 'DOI/HSN 3', 2024, 'Keywords/Meta Tag 1 122', 'Organization Name 42', 'INDIA', 'https://www.youtube.com/embed/K4TOrB7at0Y', '<p>cfse</p>', '<p>erwer</p>', '871992935_ARTICLES .docx', 0, 1, 1, '2023-07-20 17:27:22', '2023-07-20 17:27:22'),
(4, 'Demo Mag 2', 2, 'Test Journal Name 245', '6', 'DOI/HSN 3', 2023, 'Keywords/Meta Tag 1 2', 'sdsd453', 'INDIA', 'https://www.youtube.com/embed/K4TOrB7at0Y', '<p>sda</p>', '<p>vghghg</p>', '257862782_ARTICLES .docx', 0, 1, 1, '2023-07-20 17:28:25', '2023-07-20 17:28:25');

-- --------------------------------------------------------

--
-- Table structure for table `magazine_categories`
--

CREATE TABLE `magazine_categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `image` text,
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `magazine_categories`
--

INSERT INTO `magazine_categories` (`id`, `name`, `color`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Demo Magazine Cat 1', '#16d7da', '361298072_png-transparent-hypermedia-others-miscellaneous-text-logo.png', 1, '2023-07-18 13:56:39', '2023-07-18 13:56:39'),
(2, 'Demo Magazine Cat 2', '#1def01', '197745852_pngtree-free-demo-tag-clipart-vector-png-image_6648845.png', 1, '2023-07-18 13:56:59', '2023-07-18 13:56:59');

-- --------------------------------------------------------

--
-- Table structure for table `magazine_comments`
--

CREATE TABLE `magazine_comments` (
  `id` int(11) NOT NULL,
  `magazine_id` int(11) DEFAULT NULL,
  `commenter_name` varchar(100) DEFAULT NULL,
  `commenter_email` varchar(100) DEFAULT NULL,
  `comment_content` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `magazine_views`
--

CREATE TABLE `magazine_views` (
  `id` int(11) NOT NULL,
  `magazine_id` int(11) DEFAULT NULL,
  `view_count` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `name`, `parent_id`, `url`, `status`, `created_at`) VALUES
(1, 'USA', 0, '', 0, '2023-12-05 19:19:44'),
(2, 'CANADA', 0, '', 1, '2023-12-05 19:38:32'),
(3, 'AUSTRALIA', 0, '', 1, '2023-12-05 19:39:07'),
(4, 'UK', 0, 'http://localhost/orangeglobal/cms.php?id=3', 1, '2023-12-05 19:39:33'),
(6, 'EUROPE', 0, 'http://localhost/orangeglobal/cms.php?type=NQ==', 1, '2023-12-06 12:15:07'),
(7, 'VISIT VISA', 0, '', 1, '2023-12-06 12:15:28'),
(8, 'WORK VISA', 0, '', 1, '2023-12-06 12:15:52'),
(9, 'STUDY VISA', 0, 'http://localhost/orangeglobal/cms.php?id=NA==', 1, '2023-12-06 12:16:03'),
(10, 'BUSINESS VISA', 0, ' http://localhost/orangeglobal/?id=2', 1, '2023-12-06 12:16:13'),
(11, 'Drop down 1', 3, '', 1, '2023-12-06 12:16:53'),
(12, 'Dorp Down 2', 3, '', 1, '2023-12-06 12:17:11'),
(13, 'Sub sub menu', 12, '', 1, '2023-12-06 12:17:32'),
(14, 'USA-1', 1, 'https://www.youtube.com/watch?v=_Np-s0n-ty4', 1, '2023-12-06 16:01:00');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `id` int(11) NOT NULL,
  `order_number` varchar(255) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `quentity` int(11) DEFAULT NULL,
  `sell_price` double(15,2) DEFAULT NULL,
  `price` double(15,2) NOT NULL DEFAULT '0.00',
  `image` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1' COMMENT ' 1 for Processing     2 for Conforim     3 for Shift     4 for Delivered     5 for Cancile',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`id`, `order_number`, `user_id`, `product_id`, `product_name`, `quentity`, `sell_price`, `price`, `image`, `status`, `created_at`) VALUES
(1, '131696507645', 13, 5, 'dfdxvxv', 1, 3000.00, 5000.00, '811182506_Screenshot (4).png', 1, '2023-10-05 17:37:25'),
(2, '131696507645', 13, 2, 'dffgdf', 1, 1500.00, 2000.00, '742105818_560853975_image3.jpg', 1, '2023-10-05 17:37:25'),
(3, '131696515006', 13, 2, 'dffgdf', 10, 1500.00, 2000.00, '742105818_560853975_image3.jpg', 2, '2023-10-05 19:40:06'),
(4, '131696523456', 13, 5, 'dfdxvxv', 2, 3000.00, 5000.00, '811182506_Screenshot (4).png', 1, '2023-10-05 22:00:56'),
(5, '131696523456', 13, 2, 'dffgdf', 5, 1500.00, 2000.00, '742105818_560853975_image3.jpg', 0, '2023-10-05 22:00:56'),
(6, '131696523596', 13, 5, 'dfdxvxv', 1, 3000.00, 5000.00, '811182506_Screenshot (4).png', 4, '2023-10-05 22:03:16');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` int(11) NOT NULL,
  `order_number` varchar(255) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(11) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `zip` varchar(10) NOT NULL DEFAULT '0.00',
  `address` text,
  `note` text,
  `total_amount` double(15,2) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `order_number`, `name`, `email`, `phone`, `state`, `city`, `zip`, `address`, `note`, `total_amount`, `status`, `created_at`) VALUES
(1, '131696507645', 'swapan kanrar', 'swapan.kanrar143@gmail.com', '+9170039998', 'West Bengal', 'Howrah', '711412', NULL, NULL, 100.00, 1, '2023-10-05 17:37:25'),
(2, '131696515006', 'swapan kanrar', 'swapan.kanrar143@gmail.com', '+9170039998', 'West Bengal', 'Howrah', '711412', '15/1 russa road 3rd lane', 'test', 100.00, 1, '2023-10-05 19:40:07'),
(3, '131696523456', 'swapan kanrar', 'swapan.kanrar143@gmail.com', '+9170039998', 'West Bengal', 'Howrah', '711412', '15/1 russa road 3rd lane', 'new', 100.00, 1, '2023-10-05 22:00:57'),
(4, '131696523596', 'swapan kanrar', 'swapan.kanrar143@gmail.com', '+9170039998', 'West Bengal', 'Howrah', '711412', '15/1 russa road 3rd lane', '', 100.00, 1, '2023-10-05 22:03:17');

-- --------------------------------------------------------

--
-- Table structure for table `ourproject`
--

CREATE TABLE `ourproject` (
  `id` int(11) NOT NULL,
  `heading` varchar(255) DEFAULT NULL,
  `image` text,
  `status` int(11) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ourproject`
--

INSERT INTO `ourproject` (`id`, `heading`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Project-1', '837319680_MGDM_3.jpg', 1, '2023-06-22 11:33:23', '2023-06-23 11:33:23'),
(2, 'Project-2', '370245176_213490719_Workshop.png', 1, '2023-06-22 11:35:18', '2023-06-22 11:35:18'),
(3, 'Project-3', '333039054_WhatsApp Image 2024-05-15 at 3.36.35 PM.jpeg', 1, '2023-07-27 11:29:31', '2023-07-27 11:29:31'),
(4, 'Project-4', '148154366_WhatsApp Image 2024-05-15 at 3.34.01 PM.jpeg', 1, '2023-07-27 11:29:57', '2023-07-27 11:29:57'),
(7, 'Project-6', '419634219_D.jpg', 1, '2023-06-22 11:35:18', '2023-06-22 11:35:18'),
(8, 'Project-5', '504427870_WhatsApp Image 2024-05-15 at 3.42.10 PM.jpeg', 1, '2023-07-27 11:29:31', '2023-07-27 11:29:31'),
(9, 'project 7', '226954626_WhatsApp Image 2024-05-15 at 3.55.44 PM.jpeg', 1, '2024-05-15 15:56:52', '2024-05-15 15:56:52');

-- --------------------------------------------------------

--
-- Table structure for table `ourteam`
--

CREATE TABLE `ourteam` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `designation` varchar(555) DEFAULT NULL,
  `image` text,
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ourteam`
--

INSERT INTO `ourteam` (`id`, `name`, `designation`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Sudip', 'Sr. Designer', '495541559_Sudip.png', 1, '2023-07-27 13:09:23', '2023-07-27 13:09:23'),
(5, 'Debabrata', 'Technical Director', '664163493_Debu_Sir_PNG_Website.png', 1, '2024-01-31 15:14:25', '2024-01-31 15:14:25'),
(6, 'Tanmoy', 'Sr. GM', '567643830_WhatsApp-Image-2024-05-09-at-11.58.55-AM.png', 1, '2024-01-31 15:14:57', '2024-01-31 15:14:57'),
(7, 'Ashish', 'Director- Commercial', '156648399_WhatsApp-Image-2024-05-09-at-11.37.03-AM.png', 1, '2024-05-09 11:50:57', '2024-05-09 11:50:57'),
(8, 'Subhas', 'Managing Director', '661388237_WhatsApp-Image-2024-05-09-at-12.01.52-PM.png', 1, '2024-05-09 12:04:17', '2024-05-09 12:04:17');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `short_desc` text,
  `description` longtext,
  `image` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `short_desc`, `description`, `image`, `status`, `created_at`) VALUES
(2, 'Hydraulic Mud Gun', '', '<p><strong>ROTAMECH Hydraulic Mud Gun is of latest technology and has capacity range between 40 to 100 liter @65 kg/cm2 clay mass pressure.</strong></p>\r\n\r\n<p><em><strong>Key Features</strong></em>:</p>\r\n\r\n<ol>\r\n	<li>\r\n	<p><strong>180-Degree Swivel Design</strong>: One of the standout features of the ROTAMECH Mud Gun is its unique 180-degree swiveling capability, which facilitates convenient parking and ample operational space. This flexibility streamlines maintenance tasks and allows for optimized accessibility, enhancing overall efficiency in operations.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Enhanced Sealing with Clamping Cylinder</strong>: The inclusion of an additional clamping cylinder ensures a robust seal, virtually eliminating any possibility of mud leakage during closure. This feature not only enhances safety but also minimizes downtime by maintaining consistent operational integrity.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Hose-less Piping System</strong>: Unlike conventional systems that rely on extensive hose networks, the ROTAMECH Mud Gun is engineered with a hose-less piping design. This innovative approach not only reduces downtime associated with hose maintenance but also simplifies the overall maintenance process.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>High-Quality Components</strong>: ROTAMECH prioritizes performance and durability by sourcing components like hydraulics from the best available suppliers within the country. This commitment to quality ensures reliability and longevity, even under demanding operational conditions.</p>\r\n	</li>\r\n</ol>\r\n\r\n<p><em><strong>Refurbishing and Redesign Services:</strong></em></p>\r\n\r\n<p>Beyond its advanced product offerings, ROTAMECH also specializes in equipment refurbishing and redesigning. This service allows for the adaptation of older equipment to meet updated application requirements while accommodating existing site conditions. By leveraging expertise in design and engineering, ROTAMECH enables clients to maximize the lifespan and functionality of their mud gun systems.</p>', '590727797_Indsil still photo 2.png', 1, '2023-09-30 17:02:26'),
(5, 'Taphole Drill Machine', '<p>vxvx</p>', '<p>The ROTAMECH Taphole Drill Machine represents the forefront of modern technology, offering a capacity range of 40 to 100 liters at an impressive 65 kg/cm&sup2; clay mass pressure. This state-of-the-art equipment is equipped with innovative features that enhance operational efficiency and simplify maintenance tasks.</p>\r\n\r\n<p><em><strong>Key Features:</strong></em></p>\r\n\r\n<ol>\r\n	<li>\r\n	<p><strong>180-Degree Swiveling Capability</strong>: The ROTAMECH Taphole Drill Machine is designed with a unique 180-degree swiveling feature at parking, providing ample space for operation and maintenance. This flexibility allows for easier access to critical components, optimizing workflow efficiency.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Enhanced Sealing with Clamping Cylinder</strong>: To ensure utmost reliability, an additional clamping cylinder is integrated into the design, preventing any mud leakage during closure. This feature enhances safety and minimizes operational disruptions, even under high-pressure conditions.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Hose-less Piping System</strong>: Unlike traditional systems, the ROTAMECH Taphole Drill Machine features a hose-less piping design. This innovative approach reduces downtime associated with hose maintenance and simplifies routine servicing, ultimately minimizing operational costs.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>High-Quality Components</strong>: ROTAMECH prioritizes performance and durability by sourcing standard purchase items such as hydraulics from the best suppliers in the country. By integrating top-tier components, this machine delivers exceptional reliability and longevity in demanding industrial environments.</p>\r\n	</li>\r\n</ol>\r\n\r\n<p><em><strong>Equipment Services:</strong></em></p>\r\n\r\n<p>In addition to its cutting-edge products, ROTAMECH offers comprehensive services including equipment replacement, refurbishing, and redesigning. This service ensures that older equipment can be adapted to meet updated application requirements while accommodating existing site conditions. ROTAMECH&#39;s expertise in refurbishment and redesign enables clients to maximize the efficiency and lifespan of their taphole drill systems.</p>', '754667817_100_5044-removebg-preview.png', 1, '2023-09-30 17:10:36'),
(8, 'Ladle Tilter', NULL, '<p><strong>Introduction:</strong> A hot metal ladle tilter is a specialized piece of equipment used in metal foundries and industrial settings to safely and efficiently tilt ladles containing molten metal. This topic explores the key components and operational features of a ladle tilter, focusing on its design for stability and controlled tilting.</p>\r\n\r\n<p><em><strong>Key Components:</strong></em></p>\r\n\r\n<ol>\r\n	<li>\r\n	<p><strong>Support Stand with Bearings:</strong> The ladle tilter features a sturdy support stand equipped with spaced-apart bearings. These bearings provide the pivotal mounting for the ladle support frame, allowing smooth and controlled tilting motion.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Ladle Support Frame:</strong> The ladle support frame is pivotally mounted on the bearings, enabling it to tilt about a designated tilt axis. This frame typically includes two spaced-apart support members designed to securely hold a ladle during the tilting process.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Stop Bracket:</strong> A stop bracket is fixedly positioned to engage the ladle support frame. This bracket serves the crucial role of preventing the ladle support frame from tilting rearwardly beyond a safe range during operation.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Center of Gravity Configuration:</strong> The ladle support frame and the ladle&#39;s center of gravity are strategically positioned rearwardly with respect to the tilt axis. This configuration ensures that the combined weight of the ladle and support frame naturally presses against the stop bracket under the influence of gravity, enhancing stability and safety.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Hydraulic Motor:</strong> An hydraulic motor is employed to pivot the ladle support frame about the tilt axis. This motor provides the necessary power and control to tilt the ladle smoothly and precisely as required for pouring or handling operations.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Control System:</strong> Controls are integrated into the ladle tilter to actuate the hydraulic motor. These controls enable operators to initiate and regulate the tilting process, ensuring accurate positioning and safe handling of the molten metal ladle.</p>\r\n	</li>\r\n</ol>\r\n\r\n<p><strong>Operation:</strong> When a ladle filled with molten metal is placed on the ladle support frame, the ladle&#39;s weight naturally positions it against the stop bracket due to the rearward location of the center of gravity. To tilt the ladle for pouring or transfer, operators engage the hydraulic motor through the control system. The hydraulic motor smoothly pivots the ladle support frame about the tilt axis, allowing controlled pouring of the molten metal.</p>\r\n\r\n<p><strong>Advantages and Applications:</strong></p>\r\n\r\n<ul>\r\n	<li><strong>Safety:</strong> Prevents over-tilting and ensures stable handling of hot ladles.</li>\r\n	<li><strong>Efficiency:</strong> Enables controlled pouring and transfer of molten metal.</li>\r\n	<li><strong>Versatility:</strong> Suitable for various foundry and industrial applications involving hot metal handling.</li>\r\n	<li><strong>Control:</strong> Offers precise positioning and tilt adjustment for operational flexibility.</li>\r\n</ul>', '189459217_C.png', 1, '2024-01-08 18:14:53'),
(10, 'Pig Casting Machine', NULL, '<p><strong>Introduction:</strong> The Pig Casting Machine (PCM) is a specialized machine designed and manufactured by ROTAMECH Industries to facilitate the continuous production of Iron or Ferro Alloy Pigs of specific sizes. This machine plays a crucial role in the efficient and precise casting of molten metal into solid pigs used in various industrial processes.</p>\r\n\r\n<p><strong>Key Components and Operation:</strong> The PCM operates as an inclined chain conveyor equipped with a series of overlapping molds fixed between two moving chains, which traverse over a set of stationary rollers. The movement of these chains and molds is facilitated by a system of sprockets located at each end of the PCM. One of these sprockets is idle while the other serves as the driving sprocket.</p>\r\n\r\n<p><strong>Drive Unit:</strong> The driving mechanism of the PCM comprises an AC or DC motor connected to a multistage helical reduction gearbox. This gearbox reduces the motor&#39;s high-speed rotational output into a slower, higher-torque output suitable for driving the PCM&#39;s operation. The output shaft of the gearbox is linked via a coupling to the driving sprocket shaft, which is supported at its ends by bearings. This setup ensures smooth and reliable movement of the conveyor chains and molds during the casting process.</p>\r\n\r\n<p><strong>Continuous Casting Process:</strong> During operation, the PCM continuously moves the molds filled with molten metal along its inclined path. As the molds progress, the metal inside solidifies, forming pigs of the desired size and shape. The overlapping molds allow for a continuous casting process, maximizing production efficiency.</p>\r\n\r\n<p><strong>Advantages of PCM:</strong></p>\r\n\r\n<ul>\r\n	<li><strong>Efficiency:</strong> Enables continuous production without interruptions, optimizing workflow.</li>\r\n	<li><strong>Precision:</strong> Produces uniform and accurately sized iron or ferro alloy pigs.</li>\r\n	<li><strong>Automation:</strong> Reduces manual labor and ensures consistent quality.</li>\r\n	<li><strong>Customization:</strong> Can be adapted to cast different sizes and types of pigs based on requirements.</li>\r\n</ul>\r\n\r\n<p><strong>Applications:</strong> PCM finds applications in steelmaking, foundries, and other metal industries where the efficient production of metal pigs is essential for downstream processes. It is particularly beneficial in large-scale operations requiring high volumes of standardized metal products.</p>', '330031587_Casting Machine GA-1.png', 1, '2024-01-30 11:40:23');

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

CREATE TABLE `product_categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_categories`
--

INSERT INTO `product_categories` (`id`, `name`, `status`, `created_at`) VALUES
(1, 'Abbas', 1, '2023-09-05 00:23:23'),
(2, 'abbas1', 1, '2023-09-05 00:23:38');

-- --------------------------------------------------------

--
-- Table structure for table `product_image`
--

CREATE TABLE `product_image` (
  `id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `image` text,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_image`
--

INSERT INTO `product_image` (`id`, `product_id`, `image`, `created_at`) VALUES
(1, 7, 'WhatsApp Image 2024-01-05 at 1.55.37 PM.jpeg', '2024-01-08 12:56:04'),
(2, 7, 'WhatsApp Image 2024-01-05 at 1.55.33 PM.jpeg', '2024-01-08 12:56:29'),
(3, 7, 'image.png', '2024-01-08 12:57:15'),
(4, 7, '514656038_logo.jpg', '2024-01-08 13:18:45'),
(5, 9, '141907798_20220831_125231.jpg', '2024-01-24 13:16:35'),
(6, 7, '992374566_PCM_2.jpg', '2024-01-30 11:30:03');

-- --------------------------------------------------------

--
-- Table structure for table `services_child`
--

CREATE TABLE `services_child` (
  `id` int(11) NOT NULL,
  `master_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `short_desc` longtext,
  `long_desc` longtext,
  `instructor_desc` longtext,
  `image` varchar(255) DEFAULT NULL,
  `url_link` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `sales_price` varchar(255) DEFAULT NULL,
  `author_name` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `services_child`
--

INSERT INTO `services_child` (`id`, `master_id`, `title`, `short_desc`, `long_desc`, `instructor_desc`, `image`, `url_link`, `price`, `sales_price`, `author_name`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Department of Science.', '<p>Contrary to popular bLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exe bho.</p>', '<div>\r\n<h5>DETAILS :</h5>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercit ati jhzo on ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolrepreh enderit cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium dolorem laudan ium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit a.</p>\r\n</div>\r\n\r\n<div>\r\n<h5>SYLLABUS :</h5>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercit ati jhzo on ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolrepreh enderit cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium dolorem laudan ium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit a.</p>\r\n</div>', '<ul>\r\n	<li><a href=\"#\">Rsit amet, consectetur adipisicing elit, sed do eiusmod tempor inc.</a></li>\r\n	<li><a href=\"#\">sunt in culpa qui officia deserunt mollit anim id est laborum. </a></li>\r\n	<li><a href=\"#\">Lorem ipsum dolor sit amet, consec do eiusmod tincididu.</a></li>\r\n</ul>', '220350385_courses-07.jpg', 'https://www.youtube.com/embed/3pEKxWjlNCs', '200', '250', 'Test Author', 1, '2023-07-25 13:04:50', '2023-07-25 13:04:50'),
(2, 1, 'TEM', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', '<ul>\r\n	<li><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</li>\r\n	<li><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</li>\r\n	<li><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</li>\r\n</ul>', '<ol>\r\n	<li>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC .</li>\r\n	<li>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC .</li>\r\n	<li>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC .</li>\r\n	<li>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC .</li>\r\n	<li>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC .</li>\r\n</ol>', '548929917_image3.jpg', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/AHW1AcPG7H4\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></ifr', '1000', '800', 'Saikat Biswas', 1, '2023-08-01 11:14:21', '2023-08-01 11:14:21');

-- --------------------------------------------------------

--
-- Table structure for table `services_master`
--

CREATE TABLE `services_master` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `details` longtext,
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `services_master`
--

INSERT INTO `services_master` (`id`, `title`, `details`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Research Services', '<p><strong><u>Support in biomedical/ pharmaceutical research:</u></strong></p>\r\n\r\n<ul>\r\n	<li>Are you on the hunt for cost-effective animal testing labs/ in vitro labs?</li>\r\n	<li>Feeling tough to obtain rapid reports in your nearer animal histopathology lab?</li>\r\n	<li>Searching for the anti-microbial testing labs with the best price quote?</li>\r\n	<li>Need toxicology testing labs that offer reliable results?</li>\r\n	<li>Want a medical research lab that is armed with proficient scientists?</li>\r\n</ul>\r\n\r\n<p>If you say yes to any of these questions, then your thirst for perfect bioscience labs ends here.</p>\r\n\r\n<p><em>Many researchers encounter problems when it comes to the practical implementation of theoretical protocols. Many factors obstruct the positive drive of your research study:</em></p>\r\n\r\n<ul>\r\n	<li><em>Delayed availability of reagents and antibodies</em></li>\r\n	<li><em>Inadequate lab, software, or another relevant facility</em></li>\r\n	<li><em>Lack of expertise in handling instruments/ animals</em></li>\r\n	<li><em>Incompetence in troubleshooting</em></li>\r\n	<li><em>Time-limitation</em></li>\r\n	<li><em>Cost-constraint</em></li>\r\n</ul>\r\n\r\n<p><em>We have the expertise and facility network to conquer the aforesaid obstacles and execute biomedical research successfully. Besides, our broad client base enables us to perform multiple&nbsp;scientific research<strong> works at a low cost.</strong></em></p>', 1, '2023-07-25 12:07:41', '2023-07-25 12:07:41'),
(2, 'Scientific publications', '', 1, '2023-07-25 12:07:41', '2023-07-25 12:07:41'),
(3, 'Editing and writing ', NULL, 1, '2023-07-25 12:08:40', '2023-07-25 12:08:40'),
(4, 'Consultation', NULL, 1, '2023-07-25 12:08:40', '2023-07-25 12:08:40');

-- --------------------------------------------------------

--
-- Table structure for table `stage`
--

CREATE TABLE `stage` (
  `id` int(11) NOT NULL,
  `heading` text,
  `content` text,
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `stage`
--

INSERT INTO `stage` (`id`, `heading`, `content`, `status`, `created_at`, `updated_at`, `image`) VALUES
(1, 'Design', 'Project starts with our robust design while keeping safety measure as per the industry standards. The process starts with Equipment Design , Hydraulics and Pneumatic and finally design of E&I.', 1, '2024-01-02 18:53:41', '2024-01-30 13:25:02', 'icon11.png'),
(2, 'Manufacturing', 'As soon as design is complete , we move up to manufacturing stage with best quality and best workmanship . With Disciplined and Skilled workforce, finally the Assembly comes with best Finesse.', 1, '2024-01-02 18:53:41', '2024-01-30 13:19:13', 'icon2.png'),
(3, 'Commissioning', 'Our highly motivated and knowledgeable Engineering team takes care of the commissioning, resulting in 100% performance efficiency and 100% Customer Satisfaction.', 1, '2024-01-02 18:53:41', '2024-01-30 13:21:18', 'icon3.png');

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` longtext,
  `image` text,
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_service_request`
--

CREATE TABLE `user_service_request` (
  `id` int(11) NOT NULL,
  `chid_services_id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_service_request`
--

INSERT INTO `user_service_request` (`id`, `chid_services_id`, `first_name`, `last_name`, `phone`, `email`, `message`, `created_at`, `updated_at`) VALUES
(1, 0, '', '', '', '', '', '2023-07-29 07:54:25', '2023-07-29 07:54:25'),
(2, 0, '', '', '', '', '', '2023-07-29 09:09:18', '2023-07-29 09:09:18');

-- --------------------------------------------------------

--
-- Table structure for table `video`
--

CREATE TABLE `video` (
  `id` int(11) NOT NULL,
  `heading` text,
  `content` text,
  `video` text,
  `image` text,
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `video`
--

INSERT INTO `video` (`id`, `heading`, `content`, `video`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Dedicated Team to Satisfy The Customer Need', 'Our Dedicated marketing Team is always there to hear from you. Whatever may be your concern  , our team will reach you , understand you and give you the best solution .', 'https://www.youtube.com/watch?v=vz1RlUyrc3w&list=PLu71SKxNbfoDqgPchmvIsL4hTnJIrtige', 'para1.jpg', 1, '2024-01-03 12:36:05', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `webinar_details`
--

CREATE TABLE `webinar_details` (
  `id` int(11) NOT NULL,
  `webinar_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `full_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `message` text,
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `webinar_details`
--

INSERT INTO `webinar_details` (`id`, `webinar_id`, `title`, `full_name`, `email`, `phone`, `message`, `status`, `created_at`, `updated_at`) VALUES
(1, 3, 'abc', 'swapan kanrar', 'swapan.kanrar143@gmail.com', '7003999806', 'test', 1, '2023-10-11 12:09:20', '2023-10-11 12:09:20'),
(2, 3, '', 'swapan kanrar', 'swapan.kanrar143@gmail.com', '7003999806', 'done', 1, '2023-10-11 12:26:51', '2023-10-11 12:26:51'),
(3, 1, 'Event 1', 'swapan kanrar', 'swapan.kanrar143@gmail.com', '7003999806', 'hcjhsvjhvhsdbhb', 1, '2023-10-11 12:28:44', '2023-10-11 12:28:44');

-- --------------------------------------------------------

--
-- Table structure for table `webiner`
--

CREATE TABLE `webiner` (
  `id` int(11) NOT NULL,
  `title` varchar(555) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `time` varchar(255) DEFAULT NULL,
  `location` text,
  `description` longtext,
  `image` text,
  `video` text,
  `status` int(11) NOT NULL DEFAULT '1',
  `popular` int(11) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `webiner`
--

INSERT INTO `webiner` (`id`, `title`, `date`, `time`, `location`, `description`, `image`, `video`, `status`, `popular`, `created_at`, `updated_at`) VALUES
(1, 'Event 1', '2023-10-17', '10:05', 'Kolkata', '<h3>What is Lorem Ipsum?</h3>\r\n\r\n<p>\\r\\n\\r\\n</p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p>\\r\\n\\r\\n</p>\r\n\r\n<h3>Where does it come from?</h3>\r\n\r\n<p>\\r\\n\\r\\n</p>\r\n\r\n<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of &quot;de Finibus Bonorum et Malorum&quot; (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, comes from a line in section 1.10.32.</p>\r\n\r\n<p>\\r\\n\\r\\n</p>\r\n\r\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from &quot;de Finibus Bonorum et Malorum&quot; by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', '216910362_2.jpg', 'https://www.youtube.com/embed/3pEKxWjlNCs', 1, 1, '2023-08-01 14:03:19', '2023-08-01 14:03:19'),
(2, 'Event 2', '0000-00-00', NULL, NULL, '<h3>Where does it come from?</h3>\r\n\r\n<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of &quot;de Finibus Bonorum et Malorum&quot; (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, comes from a line in section 1.10.32.</p>\r\n\r\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from &quot;de Finibus Bonorum et Malorum&quot; by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', '', 'https://www.youtube.com/embed/a3ICNMQW7Ok', 1, 1, '2023-08-01 14:03:39', '2023-08-01 14:03:39'),
(3, 'webinar', '2023-10-11', '15:59:00 AM', 'Location', '<p>gfdgfdgf</p>', '267377576_2.jpg', 'gdfgfdgfd', 1, 1, '2023-10-10 11:39:47', '2023-10-10 11:39:47');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `quentity` int(11) DEFAULT NULL,
  `price` double(15,2) NOT NULL DEFAULT '0.00',
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `about_why_choose_us`
--
ALTER TABLE `about_why_choose_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `articales`
--
ALTER TABLE `articales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `article_categories`
--
ALTER TABLE `article_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `article_comments`
--
ALTER TABLE `article_comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `article_views`
--
ALTER TABLE `article_views`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `blog_categories`
--
ALTER TABLE `blog_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_comments`
--
ALTER TABLE `blog_comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_views`
--
ALTER TABLE `blog_views`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `books_categories`
--
ALTER TABLE `books_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `book_comments`
--
ALTER TABLE `book_comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `book_views`
--
ALTER TABLE `book_views`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bulletian`
--
ALTER TABLE `bulletian`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `career`
--
ALTER TABLE `career`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `child_services_comments`
--
ALTER TABLE `child_services_comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms`
--
ALTER TABLE `cms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contents`
--
ALTER TABLE `contents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `count`
--
ALTER TABLE `count`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `design`
--
ALTER TABLE `design`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `drawing`
--
ALTER TABLE `drawing`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `emailtable`
--
ALTER TABLE `emailtable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `enquiry`
--
ALTER TABLE `enquiry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `event_views`
--
ALTER TABLE `event_views`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `free_trainning_comments`
--
ALTER TABLE `free_trainning_comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `innovation`
--
ALTER TABLE `innovation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `innovation_details`
--
ALTER TABLE `innovation_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job`
--
ALTER TABLE `job`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_applications`
--
ALTER TABLE `job_applications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_type`
--
ALTER TABLE `job_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `magazine`
--
ALTER TABLE `magazine`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `magazine_categories`
--
ALTER TABLE `magazine_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `magazine_comments`
--
ALTER TABLE `magazine_comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `magazine_views`
--
ALTER TABLE `magazine_views`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ourproject`
--
ALTER TABLE `ourproject`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ourteam`
--
ALTER TABLE `ourteam`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_image`
--
ALTER TABLE `product_image`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services_child`
--
ALTER TABLE `services_child`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services_master`
--
ALTER TABLE `services_master`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stage`
--
ALTER TABLE `stage`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_service_request`
--
ALTER TABLE `user_service_request`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `webinar_details`
--
ALTER TABLE `webinar_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `webiner`
--
ALTER TABLE `webiner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about`
--
ALTER TABLE `about`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `about_why_choose_us`
--
ALTER TABLE `about_why_choose_us`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `articales`
--
ALTER TABLE `articales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `article_categories`
--
ALTER TABLE `article_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `article_comments`
--
ALTER TABLE `article_comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `article_views`
--
ALTER TABLE `article_views`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `blog_categories`
--
ALTER TABLE `blog_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `blog_comments`
--
ALTER TABLE `blog_comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `blog_views`
--
ALTER TABLE `blog_views`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `books_categories`
--
ALTER TABLE `books_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `book_comments`
--
ALTER TABLE `book_comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `book_views`
--
ALTER TABLE `book_views`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `bulletian`
--
ALTER TABLE `bulletian`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `career`
--
ALTER TABLE `career`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `child_services_comments`
--
ALTER TABLE `child_services_comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `client`
--
ALTER TABLE `client`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `cms`
--
ALTER TABLE `cms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `contents`
--
ALTER TABLE `contents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `count`
--
ALTER TABLE `count`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `design`
--
ALTER TABLE `design`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `drawing`
--
ALTER TABLE `drawing`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `emailtable`
--
ALTER TABLE `emailtable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `enquiry`
--
ALTER TABLE `enquiry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `event_views`
--
ALTER TABLE `event_views`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `free_trainning_comments`
--
ALTER TABLE `free_trainning_comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `innovation`
--
ALTER TABLE `innovation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `innovation_details`
--
ALTER TABLE `innovation_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `job`
--
ALTER TABLE `job`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `job_applications`
--
ALTER TABLE `job_applications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `job_type`
--
ALTER TABLE `job_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `magazine`
--
ALTER TABLE `magazine`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `magazine_categories`
--
ALTER TABLE `magazine_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `magazine_comments`
--
ALTER TABLE `magazine_comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `magazine_views`
--
ALTER TABLE `magazine_views`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `ourproject`
--
ALTER TABLE `ourproject`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `ourteam`
--
ALTER TABLE `ourteam`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `product_image`
--
ALTER TABLE `product_image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `services_child`
--
ALTER TABLE `services_child`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `services_master`
--
ALTER TABLE `services_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `stage`
--
ALTER TABLE `stage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user_service_request`
--
ALTER TABLE `user_service_request`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `video`
--
ALTER TABLE `video`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `webinar_details`
--
ALTER TABLE `webinar_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `webiner`
--
ALTER TABLE `webiner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `blogs`
--
ALTER TABLE `blogs`
  ADD CONSTRAINT `blogs_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `blog_categories` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
