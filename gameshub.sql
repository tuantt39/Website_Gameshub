-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th7 14, 2020 lúc 05:58 PM
-- Phiên bản máy phục vụ: 10.4.11-MariaDB
-- Phiên bản PHP: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `gameshub`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(10) UNSIGNED NOT NULL,
  `admin_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_name`, `admin_email`, `admin_password`, `created_at`, `updated_at`) VALUES
(1, 'Kha Nguyen', 'dinhkha123@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', NULL, NULL),
(2, 'beep', 'beep@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', NULL, NULL),
(3, 'beep', 'beep@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(3, '2020_05_25_035414_create_admin_table', 1),
(4, '2020_06_04_154722_create_tbl_category_product', 1),
(5, '2020_06_05_170438_create_tbl_publisher', 1),
(6, '2020_06_06_144848_create_tbl_product', 1),
(7, '2020_06_19_154533_tbl_customer', 1),
(8, '2020_06_23_144707_tbl_payment', 1),
(9, '2020_06_23_144725_tbl_order', 1),
(10, '2020_06_23_144742_tbl_order_details', 1),
(21, '2020_06_28_081402_create_tbl_code_games', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_category_product`
--

CREATE TABLE `tbl_category_product` (
  `category_id` int(10) UNSIGNED NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_category_product`
--

INSERT INTO `tbl_category_product` (`category_id`, `category_name`, `category_desc`, `category_status`, `created_at`, `updated_at`) VALUES
(1, 'Hành động', 'Thể loại game hành động  2D và 3D', 0, NULL, NULL),
(2, 'Phiêu lưu', 'Trò chơi phiêu lưu hay trò chơi mạo hiểm là một thể loại video game mà trong đó giả định người chơi là nhân vật chính trong một câu chuyện có tính tương tác tiến triển theo hướng khám phá và vượt qua thử thách.', 0, NULL, NULL),
(4, 'Đối kháng', 'Trò chơi điện tử đối kháng là một thể loại trò chơi điện tử hay còn gọi là trò chơi đánh nhau. Trò chơi điện tử đối kháng là các trò chơi mà trong đó người chơi điều khiển một nhân vật tham gia một cuộc đấu tay đôi với một nhân vật khác trên một màn hình có giới hạn.', 0, NULL, NULL),
(5, 'Giải đố', 'Giải đố là một trò chơi, bài toán hoặc một đồ chơi dùng để kiểm tra trí thông minh hoặc tri thức của người chơi. Trong một câu đố, người chơi sẽ làm nhiệm vụ đưa các mảnh tư duy ghép lại với nhau theo cách hợp lý, để đạt được giải pháp đúng của câu đố.', 1, NULL, NULL),
(6, 'Wibu', 'Game dành cho wibu', 0, NULL, NULL),
(7, 'Đua xe', 'Trò chơi đua trong mô hình đua xe là một trò chơi đua xe miễn phí. Ở đây bạn phải lái xe để cạnh tranh trong một cơn sốt giao thông. Lái xe trong giao thông chưa bao giờ được dễ dàng', 0, NULL, NULL),
(8, 'MOBA', 'Đấu trường trận chiến trực tuyến nhiều người chơi (tiếng Anh: Multiplayer online battle arena hay viết tắt là MOBA), cũng biết đến với tên khác là chiến lược hành động thời gian thực (ARTS) là một thể loại con của thể loại trò chơi video chiến lược thời gian thực, trong đó một người chơi có thể điều khiển một nhân vật thuộc một trong hai đội tham gia. Mục tiêu của thể loại chơi này là phá hủy công trình chính của địch và trợ giúp tiêu diệt quân địch do máy điều khiển theo thời gian ở các làn đường chơi.', 0, NULL, NULL),
(9, 'Nhập vai', 'Trò chơi nhập vai (trong tiếng Anh là Role-playing games\', viết tắt là RPGs) xuất phát từ trò chơi nhập vai bút-và-giấy [1] Dungeons & Dragons. Người chơi diễn xuất bằng cách tường thuật bằng lời hay văn bản, hoặc bằng cách ra các quyết định theo một cấu trúc đã được định sẵn để phát triển nhân vật hay tình tiết [2]. Các hành động của người chơi có thể hoặc không tuân theo một hệ thống các quy định và hướng dẫn[3].', 0, NULL, NULL),
(10, 'Kinh dị sinh tồn', 'Kinh dị sinh tồn hoặc kinh dị sống còn (trong tiếng Anh là survival horror) là một thể loại game làm cho người chơi cảm thấy sợ hãi, ám ảnh, căng thẳng tột độ bằng nhiều hình thức như đồ họa game, bối cảnh, tạo hình nhân vật, những màn rượt đuổi, hù dọa bất ngờ v.v... Trong game kinh dị sinh tồn, người chơi phải tìm cách để sống sót khỏi các thế lực tà ác như zombie, quái vật, ác quỷ, sát nhân... hoặc dịch bệnh.', 0, NULL, NULL),
(11, 'Thể thao điện tử', 'Thể thao điện tử (eSports/e-sports, Electronic-Sports, game đối kháng, hay các pro gaming) là hình thức tổ chức cuộc thi chơi điện tử giữa nhiều người chơi, đặc biệt giữa những tuyển thủ chuyên nghiệp. Các thể loại trò chơi video phổ biến nhất liên quan đến thể thao điện tử là cuộc chiến đấu trường trực tuyến với sự tham gia của nhiều người chơi, trò chơi chiến đấu sử dụng chiến lược thời gian thực (MOBA), và thể loại game bắn súng góc nhìn người thứ nhất (FPS)', 0, NULL, NULL),
(13, 'pikachu', 'game pikachu', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_code_games`
--

CREATE TABLE `tbl_code_games` (
  `codegames_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `code` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_code_games`
--

INSERT INTO `tbl_code_games` (`codegames_id`, `product_id`, `code`, `created_at`, `updated_at`) VALUES
(48, 1, 'SAD231-ASD23-DSAD2-SADDA2', NULL, NULL),
(49, 1, 'S31231-ASD23-DSAD2-SADDA2', NULL, NULL),
(50, 1, '34D231-ASD23-DSAD2-SADDA2', NULL, NULL),
(51, 2, 'J12K11-ASD23-DSAD2-SADDA2', NULL, NULL),
(52, 2, 'JJ2K11-ASD23-DSAD2-SADDA2', NULL, NULL),
(53, 2, 'SAAD31-ASD23-DSAD2-SADDA2', NULL, NULL),
(54, 3, 'SAQQ31-ASD23-DSAD2-SADDA2', NULL, NULL),
(55, 3, '32D231-ASD23-DSAD2-SADDA2', NULL, NULL),
(56, 3, 'DFD231-ASD23-DSAD2-SADDA2', NULL, NULL),
(57, 3, '11D231-ASD23-DSAD2-SADDA2', NULL, NULL),
(58, 4, '11D231-ASD23-DSAD2-SADDA2', NULL, NULL),
(59, 4, '33D231-ASD23-DSAD2-SADDA2', NULL, NULL),
(60, 4, '22D231-ASD23-DSAD2-SADDA2', NULL, NULL),
(61, 4, '44D231-ASD23-DSAD2-SADDA2', NULL, NULL),
(62, 5, '55D231-ASD23-DSAD2-SADDA2', NULL, NULL),
(63, 5, 'S66D21-ASD23-DSAD2-SADDA2', NULL, NULL),
(64, 5, '32D231-ASD23-DSAD2-SADDA2', NULL, NULL),
(65, 5, 'TFD231-ASD23-DSAD2-SADDA2', NULL, NULL),
(66, 5, '54D231-ASD23-DSAD2-SADDA2', NULL, NULL),
(67, 5, '34D231-ASD23-DSAD2-SADDA2', NULL, NULL),
(68, 6, '121D31-ASD23-DSAD2-SADDA2', NULL, NULL),
(69, 6, '321231-ASD23-DSAD2-SADDA2', NULL, NULL),
(70, 6, '3AD231-ASD23-DSAD2-SADDA2', NULL, NULL),
(71, 7, 'ASD123-ASDADQ-12312A-ADSD', NULL, NULL),
(72, 7, 'ASD123-ASDADQ-12312A-ADSD', NULL, NULL),
(73, 7, 'RETY23-ASDADQ-12312A-ADSD', NULL, NULL),
(74, 7, 'QSDS23-ASDADQ-12312A-ADSD', NULL, NULL),
(75, 7, 'EQWE23-ASDADQ-12312A-ADSD', NULL, NULL),
(76, 8, '123DAF-ASDADQ-12312A-ADSD', NULL, NULL),
(77, 8, 'ASD213-ASDADQ-12312A-ADSD', NULL, NULL),
(78, 8, 'FDGWEQ-ASDADQ-12312A-ADSD', NULL, NULL),
(79, 8, 'XVXCVA-ASDADQ-12312A-ADSD', NULL, NULL),
(80, 9, '9SD123-ASDADQ-12312A-ADSD', NULL, NULL),
(81, 9, '9ETY23-ASDADQ-12312A-ADSD', NULL, NULL),
(82, 9, '9SDS23-ASDADQ-12312A-ADSD', NULL, NULL),
(83, 9, '9QWE23-ASDADQ-12312A-ADSD', NULL, NULL),
(84, 10, '10D123-ASDADQ-12312A-ADSD', NULL, NULL),
(85, 10, '10TY23-ASDADQ-12312A-ADSD', NULL, NULL),
(86, 10, '10DS23-ASDADQ-12312A-ADSD', NULL, NULL),
(87, 10, '10E23-ASDADQ-12312A-ADSD', NULL, NULL),
(88, 11, '11D123-ASDADQ-12312A-ADSD', NULL, NULL),
(89, 11, '11TY23-ASDADQ-12312A-ADSD', NULL, NULL),
(90, 11, '11DS23-ASDADQ-12312A-ADSD', NULL, NULL),
(91, 11, '1WE23-ASDADQ-12312A-ADSD', NULL, NULL),
(92, 12, '12D123-ASDADQ-12312A-ADSD', NULL, NULL),
(93, 12, '12TY23-ASDADQ-12312A-ADSD', NULL, NULL),
(94, 12, '12DS23-ASDADQ-12312A-ADSD', NULL, NULL),
(95, 12, 'W2E23-ASDADQ-12312A-ADSD', NULL, NULL),
(96, 13, '13D123-ASDADQ-12312A-ADSD', NULL, NULL),
(97, 13, '13TY23-ASDADQ-12312A-ADSD', NULL, NULL),
(98, 13, '13DS23-ASDADQ-12312A-ADSD', NULL, NULL),
(99, 13, 'W3E23-ASDADQ-12312A-ADSD', NULL, NULL),
(100, 14, '14D223-ASDADQ-12312A-ADSD', NULL, NULL),
(101, 14, '14TY23-ASDADQ-12312A-ADSD', NULL, NULL),
(102, 14, '14DS23-ASDADQ-12312A-ADSD', NULL, NULL),
(103, 14, 'W4E23-ASDADQ-12312A-ADSD', NULL, NULL),
(104, 15, '15D123-ASDADQ-12312A-ADSD', NULL, NULL),
(105, 15, '15TY23-ASDADQ-12312A-ADSD', NULL, NULL),
(106, 15, '15DS23-ASDADQ-12312A-ADSD', NULL, NULL),
(107, 15, 'W5E23-ASDADQ-12312A-ADSD', NULL, NULL),
(108, 16, '16D123-ASDADQ-12312A-ADSD', NULL, NULL),
(109, 16, '16TY23-ASDADQ-12312A-ADSD', NULL, NULL),
(110, 16, '16DS23-ASDADQ-12312A-ADSD', NULL, NULL),
(111, 16, 'W6E23-ASDADQ-12312A-ADSD', NULL, NULL),
(112, 17, '17D123-ASDADQ-12312A-ADSD', NULL, NULL),
(113, 17, '17TY23-ASDADQ-12312A-ADSD', NULL, NULL),
(114, 17, '17DS23-ASDADQ-12312A-ADSD', NULL, NULL),
(115, 17, 'W7E23-ASDADQ-12312A-ADSD', NULL, NULL),
(116, 18, '18D123-ASDADQ-12312A-ADSD', NULL, NULL),
(117, 18, '18TY23-ASDADQ-12312A-ADSD', NULL, NULL),
(118, 18, '18DS23-ASDADQ-12312A-ADSD', NULL, NULL),
(119, 18, 'W88E23-ASDADQ-12312A-ADSD', NULL, NULL),
(120, 19, '19D123-ASDADQ-12312A-ADSD', NULL, NULL),
(121, 19, '19TY23-ASDADQ-12312A-ADSD', NULL, NULL),
(122, 19, '19DS23-ASDADQ-12312A-ADSD', NULL, NULL),
(123, 19, 'W99E23-ASDADQ-12312A-ADSD', NULL, NULL),
(124, 20, '20W2W1-ASDADQ-12312A-ADSD', NULL, NULL),
(125, 20, '20DSAW-ASDADQ-12312A-ADSD', NULL, NULL),
(126, 20, '20DSA3-ASDADQ-12312A-ADSD', NULL, NULL),
(127, 20, '20WE23-ASDADQ-12312A-ADSD', NULL, NULL),
(128, 21, '21W2W1-ASDADQ-12312A-ADSD', NULL, NULL),
(129, 21, '21DSAW-ASDADQ-12312A-ADSD', NULL, NULL),
(130, 21, '21DSA3-ASDADQ-12312A-ADSD', NULL, NULL),
(131, 21, '21WE23-ASDADQ-12312A-ADSD', NULL, NULL),
(132, 22, '22W2W1-ASDADQ-12312A-ADSD', NULL, NULL),
(133, 22, '22DSAW-ASDADQ-12312A-ADSD', NULL, NULL),
(134, 22, '22DSA3-ASDADQ-12312A-ADSD', NULL, NULL),
(135, 22, '22WE23-ASDADQ-12312A-ADSD', NULL, NULL),
(136, 23, '23W2W1-ASDADQ-12312A-ADSD', NULL, NULL),
(137, 23, '23DSAW-ASDADQ-12312A-ADSD', NULL, NULL),
(138, 23, '23DSA3-ASDADQ-12312A-ADSD', NULL, NULL),
(139, 23, '23WE23-ASDADQ-12312A-ADSD', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_customers`
--

CREATE TABLE `tbl_customers` (
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `customer_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_customers`
--

INSERT INTO `tbl_customers` (`customer_id`, `customer_name`, `customer_email`, `customer_password`, `customer_phone`, `created_at`, `updated_at`) VALUES
(6, 'Kha', 'admin@123', 'e10adc3949ba59abbe56e057f20f883e', '123456789', NULL, NULL),
(7, 'AAA', 'example@456', 'e10adc3949ba59abbe56e057f20f883e', '564656', NULL, NULL),
(8, 'BBB', 'example@567', 'e10adc3949ba59abbe56e057f20f883e', '1665545', NULL, NULL),
(9, 'Dinh Kha', 'admin@456', 'e10adc3949ba59abbe56e057f20f883e', '1234567892', NULL, NULL),
(10, 'beep', 'beep123@123.com', '25f9e794323b453885f5181f1b624d0b', '123456789', NULL, NULL),
(11, 'Nguyen Van A', 'Anguyen@gmail.com', '25f9e794323b453885f5181f1b624d0b', '132456789', NULL, NULL),
(12, 'ABC', 'abc@gmail.com', '25f9e794323b453885f5181f1b624d0b', '8569745698', NULL, NULL),
(13, 'Vu Nguyen', 'vunguyen071297@gmail.com', '25f9e794323b453885f5181f1b624d0b', '588699755', NULL, NULL),
(14, 'kha nguyen', 'nguyendinhkha1998@gmail.com', '25f9e794323b453885f5181f1b624d0b', '324234', NULL, NULL),
(15, 'dinh kha', 'lquoc300@gmail.com', '25f9e794323b453885f5181f1b624d0b', '122324324', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_order`
--

CREATE TABLE `tbl_order` (
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` int(11) NOT NULL,
  `pay_id` int(11) DEFAULT NULL,
  `order_total` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_order`
--

INSERT INTO `tbl_order` (`order_id`, `customer_id`, `pay_id`, `order_total`, `order_date`, `created_at`, `updated_at`) VALUES
(76, 13, NULL, '44,444.00', '2020-06-28 19:20:10', NULL, NULL),
(77, 13, NULL, '44,444.00', '2020-06-28 20:14:29', NULL, NULL),
(78, 13, NULL, '90,000.00', '2020-06-28 21:28:15', NULL, NULL),
(79, 13, NULL, '20,000.00', '2020-06-28 21:31:05', NULL, NULL),
(80, 13, NULL, '80,000.00', '2020-06-29 00:00:40', NULL, NULL),
(81, 13, NULL, '10,000.00', '2020-06-29 00:17:32', NULL, NULL),
(82, 13, NULL, '20,000.00', '2020-06-29 00:30:07', NULL, NULL),
(83, 13, NULL, '90,000.00', '2020-06-29 00:42:49', NULL, NULL),
(84, 13, NULL, '744,444.00', '2020-06-29 00:46:15', NULL, NULL),
(85, 13, NULL, '50,000.00', '2020-06-29 00:50:25', NULL, NULL),
(86, 10, NULL, '403,332.00', '2020-06-29 07:17:00', NULL, NULL),
(87, 13, NULL, '80,000.00', '2020-06-29 15:13:22', NULL, NULL),
(88, 13, NULL, '50,000.00', '2020-06-29 15:15:37', NULL, NULL),
(89, 13, NULL, '90,000.00', '2020-06-29 15:21:54', NULL, NULL),
(90, 14, NULL, '700,000.00', '2020-06-29 15:30:27', NULL, NULL),
(91, 15, NULL, '270,000.00', '2020-06-29 17:10:59', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_order_details`
--

CREATE TABLE `tbl_order_details` (
  `order_details_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` double(8,2) NOT NULL,
  `product_sales_quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_order_details`
--

INSERT INTO `tbl_order_details` (`order_details_id`, `order_id`, `product_id`, `product_name`, `product_price`, `product_sales_quantity`, `created_at`, `updated_at`) VALUES
(1, 1, 23, 'Naruto Shippuden: Ultimate Ninja Storm 4', 80000.00, 1, NULL, NULL),
(2, 1, 21, 'Red Dead Redemption 2', 90000.00, 1, NULL, NULL),
(3, 2, 16, 'Tomb Raider', 44444.00, 1, NULL, NULL),
(4, 5, 19, 'Battlefield V', 50000.00, 1, NULL, NULL),
(5, 5, 21, 'Red Dead Redemption 2', 90000.00, 1, NULL, NULL),
(6, 34, 23, 'Naruto Shippuden: Ultimate Ninja Storm 4', 80000.00, 1, NULL, NULL),
(7, 34, 21, 'Red Dead Redemption 2', 90000.00, 2, NULL, NULL),
(8, 35, 17, 'pikachu', 20000.00, 1, NULL, NULL),
(9, 35, 18, 'Metal Gear Solid V: The phantom pain', 700000.00, 1, NULL, NULL),
(10, 36, 8, 'Megaman X8', 50000.00, 1, NULL, NULL),
(11, 36, 3, 'Sword Art Online Alicization Lycoris', 20000.00, 3, NULL, NULL),
(12, 37, 22, 'Ori and the Will of the Wisps', 240000.00, 1, NULL, NULL),
(13, 37, 1, 'The witcher 3', 10000.00, 2, NULL, NULL),
(14, 38, 12, 'World of Warcraft', 50000.00, 1, NULL, NULL),
(15, 38, 8, 'Megaman X8', 50000.00, 3, NULL, NULL),
(16, 39, 21, 'Red Dead Redemption 2', 90000.00, 1, NULL, NULL),
(17, 39, 4, 'Street Fighter 5', 69000.00, 1, NULL, NULL),
(18, 39, 20, 'Monster Hunter: World', 40000.00, 1, NULL, NULL),
(19, 40, 16, 'Tomb Raider', 44444.00, 1, NULL, NULL),
(20, 40, 22, 'Ori and the Will of the Wisps', 240000.00, 2, NULL, NULL),
(21, 42, 18, 'Metal Gear Solid V: The phantom pain', 700000.00, 1, NULL, NULL),
(22, 44, 19, 'Battlefield V', 50000.00, 1, NULL, NULL),
(23, 66, 23, 'Naruto Shippuden: Ultimate Ninja Storm 4', 80000.00, 1, NULL, NULL),
(24, 67, 20, 'Monster Hunter: World', 40000.00, 1, NULL, NULL),
(25, 69, 21, 'Red Dead Redemption 2', 90000.00, 1, NULL, NULL),
(26, 70, 1, 'The witcher 3', 10000.00, 1, NULL, NULL),
(27, 76, 16, 'Tomb Raider', 44444.00, 1, NULL, NULL),
(28, 77, 16, 'Tomb Raider', 44444.00, 1, NULL, NULL),
(29, 78, 19, 'Battlefield V', 50000.00, 1, NULL, NULL),
(30, 78, 13, 'Grand Theft Auto V', 20000.00, 2, NULL, NULL),
(31, 79, 13, 'Grand Theft Auto V', 20000.00, 1, NULL, NULL),
(32, 80, 23, 'Naruto Shippuden: Ultimate Ninja Storm 4', 80000.00, 1, NULL, NULL),
(33, 81, 1, 'The witcher 3', 10000.00, 1, NULL, NULL),
(34, 82, 2, 'League Of Legends', 20000.00, 1, NULL, NULL),
(35, 83, 21, 'Red Dead Redemption 2', 90000.00, 1, NULL, NULL),
(36, 84, 18, 'Metal Gear Solid V: The phantom pain', 700000.00, 1, NULL, NULL),
(37, 84, 16, 'Tomb Raider', 44444.00, 1, NULL, NULL),
(38, 85, 19, 'Battlefield V', 50000.00, 1, NULL, NULL),
(39, 86, 21, 'Red Dead Redemption 2', 90000.00, 3, NULL, NULL),
(40, 86, 16, 'Tomb Raider', 44444.00, 3, NULL, NULL),
(41, 87, 23, 'Naruto Shippuden: Ultimate Ninja Storm 4', 80000.00, 1, NULL, NULL),
(42, 88, 19, 'Battlefield V', 50000.00, 1, NULL, NULL),
(43, 89, 21, 'Red Dead Redemption 2', 90000.00, 1, NULL, NULL),
(44, 90, 18, 'Metal Gear Solid V: The phantom pain', 700000.00, 1, NULL, NULL),
(45, 91, 21, 'Red Dead Redemption 2', 90000.00, 3, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_payment`
--

CREATE TABLE `tbl_payment` (
  `pay_id` bigint(20) UNSIGNED NOT NULL,
  `pay_method` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pay_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_payment`
--

INSERT INTO `tbl_payment` (`pay_id`, `pay_method`, `pay_status`, `created_at`, `updated_at`) VALUES
(1, '2', 'Waiting', NULL, NULL),
(2, '2', 'Waiting', NULL, NULL),
(3, '2', 'Waiting', NULL, NULL),
(4, '2', 'Waiting', NULL, NULL),
(5, '2', 'Waiting', NULL, NULL),
(6, '2', 'Waiting', NULL, NULL),
(7, '2', 'Waiting', NULL, NULL),
(8, '2', 'Waiting', NULL, NULL),
(9, '2', 'Waiting', NULL, NULL),
(10, '2', 'Waiting', NULL, NULL),
(11, '2', 'Waiting', NULL, NULL),
(12, '2', 'Waiting', NULL, NULL),
(13, '2', 'Waiting', NULL, NULL),
(14, '2', 'Waiting', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_product`
--

CREATE TABLE `tbl_product` (
  `product_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `publisher_id` int(11) NOT NULL,
  `product_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_product`
--

INSERT INTO `tbl_product` (`product_id`, `category_id`, `publisher_id`, `product_name`, `product_content`, `product_price`, `product_image`, `product_status`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 'The witcher 3', '<p>Khi m&agrave; Ciri&nbsp;<a href=\"https://gamek.vn/game-thu-kinh-hai-phat-hien-ra-xac-khong-dau-trong-pubg-mobile-luc-an-ga-con-chung-kien-canh-tuong-kinh-di-den-muc-am-anh-20200323191845937.chn\" rel=\"nofollow\" target=\"_blank\" title=\"chỉ là một trẻ\">chỉ l&agrave; một trẻ</a>&nbsp;sơ sinh, cha mẹ của c&ocirc; b&eacute; đ&atilde; mất t&iacute;ch trong một trận b&atilde;o biển v&agrave; được cho l&agrave; đ&atilde; chết. Ciri trải qua tuổi thơ của m&igrave;nh tại Cintra v&agrave; đảo Skellige trong sự chăm s&oacute;c của b&agrave; ngoại. C&ocirc; ấy gặp Geralt lần đầu khi c&ocirc; đi lạc trong khu rừng Brokilon. C&ocirc; ấy&nbsp;<a href=\"https://gamek.vn/hacker-tu-tin-minh-truong-sinh-bat-tu-bat-chap-garena-cho-bay-mau-50000-tai-khoan-hack-lien-quan-mobile-20200323154820218.chn\" rel=\"nofollow\" target=\"_blank\" title=\"gần như bị bắt\">gần như bị bắt</a>&nbsp;bởi c&aacute;c Dryad v&agrave; bị biến th&agrave;nh một trong số họ, nhưng nữ ho&agrave;ng của dryad, Eithn&eacute; bất ngờ để c&ocirc; ấy chọn tương lai của m&igrave;nh. Ciri chọn Geralt v&agrave; cố gắng ở c&ugrave;ng g&atilde; sau khi 2 người rời Brokilon, nhưng g&atilde; witcher nhất quyết kh&ocirc;ng mang c&ocirc; theo. Thay v&agrave;o đ&oacute;, g&atilde; để c&ocirc; lại với druid Mousesack, người l&agrave;m việc cho Calanthe. Sau đ&oacute; cuộc vị t&agrave;n s&aacute;t tại Cintra diễn ra.</p>\r\n\r\n<p><a href=\"https://gamek.mediacdn.vn/133514250583805952/2020/3/26/image013-1585211992397689448858.jpg\" target=\"_blank\" title=\"\"><img alt=\"Ngắm nhìn nàng Ciri của The Witcher phiên bản siêu chân dài gợi cảm và quyến rũ - Ảnh 1.\" height=\"\" src=\"https://gamek.mediacdn.vn/thumb_w/640/133514250583805952/2020/3/26/image013-1585211992397689448858.jpg\" title=\"Ngắm nhìn nàng Ciri của The Witcher phiên bản siêu chân dài gợi cảm và quyến rũ - Ảnh 1.\" width=\"\" /></a></p>\r\n\r\n<p>Trong&nbsp;<a href=\"https://gamek.vn/nhan-cu-vi-bat-thien-game-thu-reddit-ru-nhau-cao-dau-yasuo-va-hang-loat-truong-trong-lmht-cho-vui-20200323194201968.chn\" rel=\"nofollow\" target=\"_blank\" title=\"cuộc xâm lược\">cuộc x&acirc;m lược</a>&nbsp;của người Nilfgaardian tới Cintra, Ciri bị bắt c&oacute;c bởi một hiệp sĩ Nilfgaard t&ecirc;n Cahir Mawr Dyffryn aep Ceallach (mặc d&ugrave; danh t&iacute;nh của &ocirc;ng chưa được biết đến v&agrave;o l&uacute;c n&agrave;y), nhưng c&ocirc;&nbsp;<a href=\"https://gamek.vn/99-lmht-toc-chien-khong-the-ra-mat-trong-nam-2020-nguy-co-huy-toan-bo-bo-cai-alpha-test-20200322150519328.chn\" rel=\"nofollow\" target=\"_blank\" title=\"tìm cách trốnthoát\">t&igrave;m c&aacute;ch trốn tho&aacute;t</a>&nbsp;được v&agrave; lang thang v&ocirc; định ở Sodden cho tới khi c&ocirc; được một gia đ&igrave;nh thương nh&acirc;n nhận l&agrave;m con nu&ocirc;i.</p>\r\n\r\n<p><a href=\"https://gamek.mediacdn.vn/133514250583805952/2020/3/26/image005-1585211992212362404665.jpg\" target=\"_blank\" title=\"\"><img alt=\"Ngắm nhìn nàng Ciri của The Witcher phiên bản siêu chân dài gợi cảm và quyến rũ - Ảnh 2.\" height=\"\" src=\"https://gamek.mediacdn.vn/thumb_w/640/133514250583805952/2020/3/26/image005-1585211992212362404665.jpg\" title=\"Ngắm nhìn nàng Ciri của The Witcher phiên bản siêu chân dài gợi cảm và quyến rũ - Ảnh 2.\" width=\"\" /></a></p>\r\n\r\n<p>Tr&ugrave;ng hợp thay, Geralt cũng được gi&uacute;p đỡ bởi ch&iacute;nh người thương gia ấy v&agrave; được đưa về nh&agrave; của &ocirc;ng. Ch&iacute;nh v&igrave; thế một lần nữa Ciri v&agrave; Geralt lại đo&agrave;n tụ. Lần n&agrave;y g&atilde; witcher mang c&ocirc; với g&atilde; đến Kaer Morhen, nơi m&agrave; dưới sự gi&aacute;m s&aacute;t của Triss Merigold, Ciri trải qua một phần của kh&oacute;a đ&agrave;o tạo witcher với Geralt , Vesemir, Lambert, Eskel v&agrave; Co&euml;n. (Nguồn: The Witcher Fandom).</p>\r\n\r\n<p><a href=\"https://gamek.mediacdn.vn/133514250583805952/2020/3/26/image017-158521199244878875133.jpg\" target=\"_blank\" title=\"\"><img alt=\"Ngắm nhìn nàng Ciri của The Witcher phiên bản siêu chân dài gợi cảm và quyến rũ - Ảnh 3.\" height=\"\" src=\"https://gamek.mediacdn.vn/thumb_w/640/133514250583805952/2020/3/26/image017-158521199244878875133.jpg\" title=\"Ngắm nhìn nàng Ciri của The Witcher phiên bản siêu chân dài gợi cảm và quyến rũ - Ảnh 3.\" width=\"\" /></a></p>\r\n\r\n<p>Đ&oacute; l&agrave; một phần tiểu sử của Ciri trong d&ograve;ng cốt truyện của The Witcher. C&oacute; thể thấy, Ciri l&agrave; một trong những nh&acirc;n vật quan trọng c&oacute;&nbsp;<a href=\"https://gamek.vn/tranh-doat-nhau-skin-mot-chau-hoc-sinh-nhot-ba-chau-con-lai-trong-thung-xe-container-khong-cho-ra-ngoai-20200324165359453.chn\" rel=\"nofollow\" target=\"_blank\" title=\"tuổithơ dữ dội\">tuổi thơ &quot;dữ dội&quot;</a>&nbsp;v&agrave; lớn l&ecirc;n với sự mạnh mẽ can trường v&agrave; mạnh mẽ. Thế nhưng, d&ugrave; c&oacute; thế n&agrave;o, Ciri vẫn l&agrave; một c&ocirc; g&aacute;i, v&agrave; vẫn c&oacute; những vẻ đẹp ri&ecirc;ng của người phụ nữ. N&eacute;t đẹp đ&oacute; được lột tả ch&acirc;n thực, sống động v&agrave; quyến rũ trong bộ cosplay dưới đ&acirc;y.</p>\r\n\r\n<p><a href=\"https://gamek.mediacdn.vn/133514250583805952/2020/3/26/image009s-15852119922851114197098.jpg\" target=\"_blank\" title=\"\"><img alt=\"Ngắm nhìn nàng Ciri của The Witcher phiên bản siêu chân dài gợi cảm và quyến rũ - Ảnh 4.\" height=\"\" src=\"https://gamek.mediacdn.vn/thumb_w/640/133514250583805952/2020/3/26/image009s-15852119922851114197098.jpg\" title=\"Ngắm nhìn nàng Ciri của The Witcher phiên bản siêu chân dài gợi cảm và quyến rũ - Ảnh 4.\" width=\"\" /></a></p>\r\n\r\n<p><a href=\"https://gamek.mediacdn.vn/133514250583805952/2020/3/26/image025-15852119925351066812429.jpg\" target=\"_blank\" title=\"\"><img alt=\"Ngắm nhìn nàng Ciri của The Witcher phiên bản siêu chân dài gợi cảm và quyến rũ - Ảnh 5.\" height=\"\" src=\"https://gamek.mediacdn.vn/thumb_w/640/133514250583805952/2020/3/26/image025-15852119925351066812429.jpg\" title=\"Ngắm nhìn nàng Ciri của The Witcher phiên bản siêu chân dài gợi cảm và quyến rũ - Ảnh 5.\" width=\"\" /></a></p>\r\n\r\n<p><a href=\"https://gamek.mediacdn.vn/133514250583805952/2020/3/26/image023-15852119924751015313596.jpg\" target=\"_blank\" title=\"\"><img alt=\"Ngắm nhìn nàng Ciri của The Witcher phiên bản siêu chân dài gợi cảm và quyến rũ - Ảnh 6.\" height=\"\" src=\"https://gamek.mediacdn.vn/thumb_w/640/133514250583805952/2020/3/26/image023-15852119924751015313596.jpg\" title=\"Ngắm nhìn nàng Ciri của The Witcher phiên bản siêu chân dài gợi cảm và quyến rũ - Ảnh 6.\" width=\"\" /></a></p>\r\n\r\n<p><a href=\"https://gamek.mediacdn.vn/133514250583805952/2020/3/26/image027-15852119925831544647862.jpg\" target=\"_blank\" title=\"\"><img alt=\"Ngắm nhìn nàng Ciri của The Witcher phiên bản siêu chân dài gợi cảm và quyến rũ - Ảnh 7.\" height=\"\" src=\"https://gamek.mediacdn.vn/thumb_w/640/133514250583805952/2020/3/26/image027-15852119925831544647862.jpg\" title=\"Ngắm nhìn nàng Ciri của The Witcher phiên bản siêu chân dài gợi cảm và quyến rũ - Ảnh 7.\" width=\"\" /></a></p>', '10000', 'tw_22.jpg', 0, NULL, NULL),
(2, 8, 2, 'League Of Legends', 'Liên Minh Huyền Thoại là một trò chơi video đấu trường trận chiến trực tuyến nhiều người chơi được Riot Games phát triển và phát hành trên nền tảng Windows và MacOS, lấy cảm hứng từ bản mod Defense of the Ancients cho trò chơi video Warcraft III: Frozen Throne', '20000', 'ELCnykYXYAAs5ru_40.jpg', 0, NULL, NULL),
(3, 9, 5, 'Sword Art Online Alicization Lycoris', '<p><img alt=\"\" height=\"220\" src=\"https://static.bandainamcoent.eu/high/sword-art-online/sao-alicization-lycoris/00-page-setup/sao-al_logo.png\" width=\"300\" /></p>\r\n\r\n<h1>SWORD ART ONLINE ALICIZATION LYCORIS</h1>\r\n\r\n<p>Release Date :</p>\r\n\r\n<p>10/07/2020</p>\r\n\r\n<p>&nbsp;Genres:</p>\r\n\r\n<p>Jeux de r&ocirc;le</p>\r\n\r\n<p>&nbsp;Developer:</p>\r\n\r\n<p>Aquria</p>\r\n\r\n<p>SWORD ART ONLINE Alicization Lycoris, the latest game based on one of the most popular Anime stories ever made, will immerse you into the perfectly represented virtual world &ldquo;Underworld&rdquo; set in the Alicization arc.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Step into a world with the enhanced essence of JRPG visuals, and play as the protagonist Kirito.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Dive head first into this exciting seamless battle with highly evolved action features.</p>\r\n\r\n<h3>10/07/2020 :</h3>\r\n\r\n<p>PS4</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>PC</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>XBOX ONE</p>\r\n\r\n<p><a href=\"https://en.bandainamcoent.eu/sword-art-online/sword-art-online-alicization-lycoris#shop-now\">Preorder now</a></p>\r\n\r\n<h2>Key features</h2>\r\n\r\n<p><strong><img alt=\"\" height=\"20\" src=\"https://static.bandainamcoent.eu/high/sword-art-online/sao-alicization-lycoris/00-page-setup/sao-al_symbol.png\" width=\"20\" />&nbsp;THE FLOWER</strong></p>\r\n\r\n<p><br />\r\nLycoris is a species of flower growing in the South of Japan.<br />\r\nThe name means passion, sad memories, reunion and self-reliance. A meaning linked to the story of the game&hellip;&nbsp;&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong><img alt=\"\" height=\"20\" src=\"https://static.bandainamcoent.eu/high/sword-art-online/sao-alicization-lycoris/00-page-setup/sao-al_symbol.png\" width=\"20\" />&nbsp;FAITHFUL TO THE ORIGINAL WORK&nbsp;</strong></p>\r\n\r\n<p><br />\r\nKirito has awoken in an unknown virtual world but it feels familiar to him&hellip;<br />\r\nThis virtual world gives a misleading impression of reality where AI characters behave like humans&hellip;<br />\r\nIn this world, Kirito meets a young man, Eugeo. There is a promise in the depths of their hearts that entwines their destinies.<br />\r\nTo keep that promise and stay together, they must venture onwards&hellip;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong><img alt=\"\" height=\"20\" src=\"https://static.bandainamcoent.eu/high/sword-art-online/sao-alicization-lycoris/00-page-setup/sao-al_symbol.png\" width=\"20\" />&nbsp;MEET WITH YOUR FAVOURITE CHARACTERS</strong></p>\r\n\r\n<p><br />\r\nKirito, Alice, Eugeo but also Administrator will all be a part of this game.<br />\r\nExperience once more the story of Alicization with a JRPG essence and meet all the characters from the Anime series.</p>', '20000', 'sao_19.jpg', 0, NULL, NULL),
(4, 4, 4, 'Street Fighter 5', 'HaDOUKEN', '69000', 'Street-Fighter-5-Champion-Edition_optimized_95.jpg', 0, NULL, NULL),
(5, 9, 6, 'Genshin Impact', 'Iphone 8Plus SnapDragon 845 mới chơi dc nha :))', '1', 'genshin-impact_89.jpg', 0, NULL, NULL),
(6, 4, 7, 'Dead Or Alive 6', 'Dead or Alive 6 là một trò chơi chiến đấu được phát triển bởi Team Ninja và được xuất bản bởi Koei Tecmo trong loạt game Dead or Alive dưới dạng phần tiếp theo của Dead or Alive 5. Trò chơi được phát hành cho Microsoft Windows, PlayStation 4 và Xbox One vào ngày 1 tháng 3, 2019.', '2', 'dead-or-alive-6_50.jpg', 0, NULL, NULL),
(7, 9, 3, 'Epic 7', 'Game cho Dt', '30000', 'Wiki-logo_67.png', 0, NULL, NULL),
(8, 9, 4, 'Megaman X8', 'Game tuổi thơ', '50000', 'x8_65.jpg', 0, NULL, NULL),
(9, 7, 8, 'Need for speed Most Wanted', 'Need for Speed: Most Wanted là một trò chơi thể loại đua xe, thế giới mở được phát hành bởi Electronic Arts và phát triển bởi Criterion Games. Đây là phiên bản thêm thắt nhiều cải tiến hơn so với game Most Wanted năm 2005. Phiên bản mới có cải thiện về số lượng xe và diện tích bản đồ', '40000', 'NFS_13.jpg', 0, NULL, NULL),
(10, 10, 4, 'Resident Evil 2', 'Được dịch từ tiếng Anh-Resident Evil 2 là một game kinh dị sinh tồn được phát triển và phát hành bởi Capcom. Phiên bản làm lại của trò chơi cùng tên năm 1998, nó được phát hành cho Windows, PlayStation 4 và Xbox One vào ngày 25 tháng 1 năm 2019.', '69000', 'Resident-Evil-2_84.jpg', 0, NULL, NULL),
(11, 11, 9, 'Call of Duty: Warzone', 'Được dịch từ tiếng Anh-Call of Duty: Warzone là một trò chơi video battle royale miễn phí được phát hành vào ngày 10 tháng 3 năm 2020, dành cho Xbox One, PlayStation 4 và Microsoft Windows. Trò chơi là một phần của tựa game Call of Duty: Modern Warfare năm 2019 nhưng không yêu cầu phải mua nó.', '20000', 'COD_50.jpg', 0, NULL, NULL),
(12, 9, 10, 'World of Warcraft', 'World of Warcraft là một trò chơi trực tuyến nhập vai nhiều người chơi được Blizzard Entertainment tạo ra vào năm 2004. Nó là trò chơi thứ tư lấy bối cảnh trong vũ trụ Warcraft tưởng tượng, trong đó lần đầu tiên được Warcraft: Orcs & Humans giới thiệu vào năm 1994.', '50000', 'WoW_5.jpg', 0, NULL, NULL),
(13, 1, 11, 'Grand Theft Auto V', 'Grand Theft Auto V là trò chơi video được phát triển bởi Rockstar North thuộc hãng Rockstar Games. Là phiên bản thứ năm trong Dòng trò chơi Grand Theft Auto và là phần kế tiếp của Grand Theft Auto IV. Bản gốc của trò chơi chính thức được phát hành vào ngày 17 Tháng 9 năm 2013 cho phiên bản Xbox 360 và PlayStation 3.', '20000', 'gtaV_50.jpg', 0, NULL, NULL),
(14, 5, 12, 'Monument Valley', 'Monument Valley là một game giải đố độc lập được phát triển và phát hành bởi Ustwo Games. Người chơi dẫn dắt công chúa Ida qua những mê cung ảo ảnh quang học và những vật thể không thể trong khi điều khiển thế giới xung quanh để tiếp cận các nền tảng khác nhau', '60000', 'MMV_29.jpg', 0, NULL, NULL),
(15, 1, 6, 'Honkai Impact 3rd', 'Honkai Impact 3rd là một game mobile nhập vai 3D hành động miễn phí được phát triển bởi miHoYo. Đây là mục thứ ba trong sê-ri Honkai và là người kế thừa tinh thần của Honkai Gakuen, sử dụng nhiều nhân vật từ tựa game trước trong một câu chuyện hoàn toàn riêng biệt.', '999999', 'HI3_29.jpg', 0, NULL, NULL),
(16, 2, 13, 'Tomb Raider', 'Tomb Raider là sê-ri trò chơi, bao gồm truyện tranh, tiểu thuyết, phim ảnh, xoay quanh cuộc phiêu lưu của nhà khảo cổ học người Anh Lara Croft.', '44444', 'tomb-raider_32.jpg', 0, NULL, NULL),
(17, 5, 4, 'pikachu', 'game pikachu', '20000', 'HI3_21.jpg', 0, NULL, NULL),
(18, 4, 14, 'Metal Gear Solid V: The phantom pain', '<h1>Metal Gear Solid V: The Phantom Pain - Mộng ảo v&agrave; đau đớn</h1>\r\n\r\n<p><img src=\"https://s3-ap-southeast-1.amazonaws.com/img.spiderum.com/sp-images/417cef70209a11e9a3a0e19e9f3a19bf.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>B&agrave;i viết gốc: <a href=\"https://www.vinaludens.com/blog/mgsv-phantom-pain\" target=\"_blank\">https://www.vinaludens.com/blog/mgsv-phantom-pain</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><em>Metal Gear - c&aacute;i t&ecirc;n m&agrave; kh&ocirc;ng một game thủ ch&acirc;n ch&iacute;nh n&agrave;o kh&ocirc;ng biết, d&ugrave; c&oacute; thể chưa từng chơi qua. L&agrave; một trong những d&ograve;ng game cao tuổi nhất v&agrave; nổi tiếng nhất, l&agrave; d&ograve;ng game đ&atilde; khai sinh ra thể loại h&agrave;nh động l&eacute;n l&uacute;t v&agrave; biến Hideo Kojima trở th&agrave;nh một trong những nh&agrave; l&agrave;m game vĩ đại nhất. Sở hữu một phong c&aacute;ch kể chuyện rất ri&ecirc;ng, một lối thiết kế đặc biệt v&agrave; kh&aacute;c nhau ở từng phi&ecirc;n bản, mỗi một phi&ecirc;n bản lại l&agrave; một kiệt t&aacute;c - v&agrave; l&agrave; một mảnh gh&eacute;p trong một bức tranh tổng thể rất lớn. Một bức tranh m&agrave; phải mất đến 28 năm mới gh&eacute;p xong. V&agrave; mảnh gh&eacute;p cuối c&ugrave;ng trong bức tranh ấy, l&agrave; The Phantom Pain, l&agrave; một tựa game tr&agrave;n đầy những nỗi đau, v&agrave; những mộng ảo...</em></p>\r\n\r\n<hr />\r\n<p>Năm 2014, bốn năm đ&atilde; tr&ocirc;i qua kể từ khi Metal Gear Solid: Peace Walker ra đời, s&aacute;u năm, nếu như t&iacute;nh từ phi&ecirc;n bản lớn cuối c&ugrave;ng của d&ograve;ng game - Metal Gear Solid 4: Guns of the Patriots. Guns of the Patriots đ&atilde; kết th&uacute;c c&acirc;u chuyện của Solid Snake một c&aacute;ch trọn vẹn, từ những nhiệm vụ đầu ti&ecirc;n của ch&agrave;ng l&iacute;nh trẻ FOXHOUND tại Outer Heaven trong phi&ecirc;n bản Metal Gear &quot;cổ lỗ sĩ&quot; tr&ecirc;n hệ m&aacute;y MSX2 năm 1987, đến c&uacute; đột ph&aacute; về đồ họa, gameplay lẫn phong c&aacute;ch kể chuyện của Metal Gear Solid thời Playstation, v&agrave; cả những phi&ecirc;n bản sau n&agrave;y nữa. Solid Snake đ&atilde; c&oacute; một c&aacute;i kết vẹn to&agrave;n trong Guns of the Patriots... nhưng c&ograve;n Big Boss, c&ograve;n kẻ phản diện ch&iacute;nh m&agrave; ch&uacute;ng ta vẫn lu&ocirc;n phải đối đầu, c&acirc;u chuyện của &ocirc;ng dường như vẫn c&ograve;n nhiều lỗ hổng chưa được lấp hết. Peace Walker l&agrave; một mảnh gh&eacute;p quan trọng, d&ugrave; n&oacute; kh&ocirc;ng phải một phi&ecirc;n bản lớn. Cho d&ugrave; chỉ được ra mắt tr&ecirc;n một hệ m&aacute;y cầm tay - Playstation Portable với đồ họa c&ugrave;ng gameplay hạn chế, nhưng Peace Walker vẫn l&agrave; một phi&ecirc;n bản đ&aacute;ng gi&aacute;, kh&ocirc;ng chỉ về mặt cốt truyện, m&agrave; n&oacute; c&ograve;n tạo nền m&oacute;ng để ph&aacute;t triển gameplay của phi&ecirc;n bản lớn kế tiếp, phi&ecirc;n bản lớn cuối c&ugrave;ng, mảnh gh&eacute;p cuối c&ugrave;ng - Metal Gear Solid V.</p>\r\n\r\n<p><img src=\"https://s3-ap-southeast-1.amazonaws.com/img.spiderum.com/sp-images/6aeb2ac0209a11e993bc3f81a73f4b74.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Năm 2014, Ground Zeroes ra mắt với vai tr&ograve; như một bản demo lớn cho game ch&iacute;nh - một bản demo nhưng cũng l&agrave; prologue cho game, với một nhiệm vụ ch&iacute;nh v&agrave; bốn nhiệm vụ phụ. Ground Zeroes đ&atilde; khiến tất cả phải bất ngờ với nền tảng đồ họa đẹp mắt m&agrave; lại rất th&acirc;n thiện với phần cứng - FOX Engine. Một gameplay cuốn h&uacute;t, thử th&aacute;ch - Metal Gear vẫn lu&ocirc;n xứng đ&aacute;ng l&agrave; người anh cả của thể loại h&agrave;nh động l&eacute;n l&uacute;t, hay đối với bản th&acirc;n d&ograve;ng game n&agrave;y th&igrave; được gọi l&agrave; &quot;Tactical Espionage Action&quot; - &quot;H&agrave;nh động chiến thuật l&eacute;n l&uacute;t&quot;. Nhưng hơn cả gameplay, thứ hấp dẫn nhất ở Ground Zeroes, vẫn cứ l&agrave; cốt truyện. N&oacute; chỉ đ&oacute;ng vai tr&ograve; l&agrave; prologue cho cả một phần game lớn, nhưng chỉ cần như thế th&ocirc;i, Ground Zeroes đ&atilde; l&agrave;m tất cả phải đứng ngồi kh&ocirc;ng y&ecirc;n với một m&agrave;n set up ho&agrave;n hảo: c&acirc;u chuyện diễn ra chỉ một năm sau c&aacute;c sự kiện của Peace Walker, một nhiệm vụ giải cứu gần như bất khả thi - chuyện thường ng&agrave;y như ở huyện với Big Boss. Một c&aacute;i nhếch m&eacute;p cười v&agrave; c&acirc;u n&oacute;i bất hủ: &quot;Kept you waiting huh?&quot;, một kẻ th&ugrave; mới, b&ecirc;n cạnh kẻ th&ugrave; cũ lớn mạnh.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>V&agrave; một sự sụp đổ bất ngờ của MSF, của đội qu&acirc;n l&iacute;nh đ&aacute;nh thu&ecirc; m&agrave; Big Boss th&agrave;nh lập. Nhưng thế l&agrave; chưa đủ, Ground Zeroes c&ograve;n đẩy mọi thứ l&ecirc;n cao tr&agrave;o hơn nữa với tai nạn của Big Boss, v&agrave; d&ugrave; &ocirc;ng c&ograve;n sống, nhưng &ocirc;ng đ&atilde; trở th&agrave;nh kẻ bị cả thế giới săn đuổi.</p>\r\n\r\n<p>Một m&agrave;n dẫn chuyện qu&aacute; ho&agrave;n hảo cho The Phantom Pain.</p>\r\n\r\n<p><img src=\"https://s3-ap-southeast-1.amazonaws.com/img.spiderum.com/sp-images/c276d190209a11e993bc3f81a73f4b74.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Game thủ khắp thế giới &quot;chỉ&quot; phải chờ đợi một năm l&agrave; được tận tay rờ v&agrave;o The Phantom Pain - kiệt t&aacute;c cuối c&ugrave;ng của mối t&igrave;nh Kojima - Konami, sau bao nhi&ecirc;u l&ugrave;m x&ugrave;m, bao nhi&ecirc;u đổ vỡ để rồi kết cục l&agrave; Hideo Kojima dứt &aacute;o rời khỏi Konami, kh&ocirc;ng thể giữ lại đứa con tinh thần Metal Gear, c&ograve;n Konami, thẳng tay x&oacute;a bỏ t&ecirc;n của &ocirc;ng tr&ecirc;n b&igrave;a đĩa của The Phantom Pain, v&agrave; thậm ch&iacute; c&ograve;n kh&ocirc;ng cho ph&eacute;p &ocirc;ng đến nhận bất kỳ một giải thưởng n&agrave;o được trao tặng cho game.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Trong tất cả những rắc rối ấy, The Phantom Pain vẫn xuất hiện, v&agrave; những nghi vấn về game cứ ng&agrave;y một d&agrave;y th&ecirc;m, cho d&ugrave; tất cả những đoạn trailer hay gameplay reveal đều rất tuyệt, nhưng đ&acirc;u đ&oacute; vẫn c&oacute; những lo lắng, những ho&agrave;i nghi về chất lượng của game.</p>\r\n\r\n<p>Nếu như khi xưa, Metal Gear đ&atilde; cứu vớt cho cả sự nghiệp l&agrave;m game của Kojima th&igrave; nay, The Phantom Pain lại l&agrave; một lời gi&atilde; biệt đầy cảm x&uacute;c của &ocirc;ng đối với IP m&agrave; &ocirc;ng đ&atilde; gắn b&oacute; gần ba thập kỷ. The Phantom Pain, n&oacute; l&agrave; một tựa game kh&ocirc;ng ho&agrave;n hảo, nhưng l&agrave; một lời gi&atilde; biệt trọn vẹn. Nhưng tại sao n&oacute; lại kh&ocirc;ng ho&agrave;n hảo, n&oacute; kh&ocirc;ng ho&agrave;n hảo ở điểm n&agrave;o, v&agrave; l&yacute; do v&igrave; đ&acirc;u?</p>\r\n\r\n<p>Th&igrave; xin thưa, The Phantom Pain kh&ocirc;ng ho&agrave;n hảo ở... rất nhiều kh&iacute;a cạnh, nhưng xếp chung tất cả lại, ch&uacute;ng ta vẫn c&oacute; một si&ecirc;u phẩm h&agrave;nh động l&eacute;n l&uacute;t. Nghịch l&yacute; ư? Kh&ocirc;ng đ&acirc;u, v&agrave; ch&uacute;ng ta sẽ b&agrave;n kỹ về những điều kh&ocirc;ng ho&agrave;n hảo ấy sớm th&ocirc;i.</p>\r\n\r\n<p><img src=\"https://s3-ap-southeast-1.amazonaws.com/img.spiderum.com/sp-images/d69e1ed0209a11e99de6a5560626216f.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Nhưng trước đ&oacute;, ch&uacute;ng ta vẫn phải n&oacute;i đến những c&aacute;i hay của The Phantom Pain, m&agrave; đầu ti&ecirc;n, vẫn l&agrave; về gameplay.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Metal Gear l&agrave; kẻ khai sinh ra d&ograve;ng game h&agrave;nh động l&eacute;n l&uacute;t, mở đường cho những Splinter Cell, Hitman hay gần đ&acirc;y l&agrave; Dishonored. Tuy nhi&ecirc;n, gameplay của Metal Gear chưa bao giờ l&agrave; điểm mạnh nhất của game - n&oacute; hay, nhưng chưa đến mức xuất sắc kh&ocirc;ng c&ograve;n g&igrave; để ch&ecirc;, v&agrave; thực sự một số phi&ecirc;n bản như Portable Ops, Peace Walker hay thậm ch&iacute; l&agrave; Guns of the Patriots... kh&ocirc;ng giống h&agrave;nh động l&eacute;n l&uacute;t cho lắm - chưa kể đến phi&ecirc;n bản spin-off 100% kh&ocirc;ng li&ecirc;n quan g&igrave; đến h&agrave;nh động l&eacute;n l&uacute;t l&agrave; Metal Gear Rising: Revengeance. Trước khi Ground Zeroes v&agrave; The Phantom Pain ra đời, th&igrave; c&oacute; lẽ Metal Gear Solid 3: Snake Eater l&agrave; phi&ecirc;n bản c&oacute; gameplay h&agrave;nh động l&eacute;n l&uacute;t được đ&aacute;nh gi&aacute; cao nhất v&agrave; hay nhất.</p>\r\n\r\n<p>V&agrave; cho đến khi Ground Zeroes ra đời, người ta đ&atilde; thấy được b&oacute;ng d&aacute;ng của một tựa game h&agrave;nh động l&eacute;n l&uacute;t xuất sắc, rồi đến với The Phantom Pain, tất cả lại được một phen ngỡ ng&agrave;ng tiếp khi Kojima Productions đ&atilde; kết hợp hai yếu tố kh&ocirc;ng thật sự ph&ugrave; hợp lắm với nhau v&agrave;o trong The Phantom Pain: h&agrave;nh động l&eacute;n l&uacute;t chiến thuật + thế giới mở. Tất cả mọi phi&ecirc;n bản trước đ&acirc;y của d&ograve;ng game đều rất tuyến t&iacute;nh, v&agrave; khi chuyển m&igrave;nh ra thế giới mở, sẽ c&oacute; nhiều vấn đề: l&agrave;m sao để vẫn giữ được c&aacute;i hồn của &quot;Metal Gear&quot; ở trong đ&oacute;? Kojima Productions đ&atilde; giải quyết những vấn đề của game khi chuyển sang thế giới mở một c&aacute;ch kh&aacute; m&aacute;t tay. Với thế giới mở, giờ đ&acirc;y lựa chọn thực hiện nhiệm vụ kh&ocirc;ng c&ograve;n b&oacute; hẹp nữa - c&oacute; hằng h&agrave; sa số c&aacute;c c&aacute;ch để ho&agrave;n th&agrave;nh nhiệm vụ, v&agrave; c&aacute;ch chơi của người chơi sẽ ảnh hưởng đến những nhiệm vụ sau n&agrave;y, bởi v&igrave; AI của kẻ địch trong game c&oacute; khả năng tự học hỏi v&agrave; th&iacute;ch nghi với chiến thuật của người chơi. V&iacute; dụ, nếu bạn l&agrave; một chuy&ecirc;n gia headshot lu&ocirc;n lu&ocirc;n th&iacute;ch nhắm v&agrave;o đầu, th&igrave; dần d&agrave; ở những khu trại địch tiếp theo, qu&acirc;n l&iacute;nh sẽ được trang bị mũ bảo hộ chắc hơn. Nếu bạn kh&ocirc;ng th&iacute;ch phong c&aacute;ch l&eacute;n l&uacute;t m&agrave; th&iacute;ch &quot;ch&aacute;y nổ như phim Micheal Bay&quot;, c&aacute;c khu trại l&iacute;nh sẽ tăng th&ecirc;m số lượng l&iacute;nh canh g&aacute;c, vũ kh&iacute; ph&ograve;ng bị hạng nặng v&agrave; thậm ch&iacute; c&oacute; cả trực thăng tuần tra nữa. Điều n&agrave;y đ&atilde; buộc người chơi phải thường xuy&ecirc;n thay đổi c&aacute;ch thức l&agrave;m nhiệm vụ, nếu kh&ocirc;ng muốn bị rơi v&agrave;o thế kh&oacute; v&igrave; gặp phải qu&aacute; nhiều kẻ địch, ảnh hưởng đến nhiệm vụ v&agrave; đ&aacute;nh gi&aacute; chất lượng nhiệm vụ sau đ&oacute;.</p>\r\n\r\n<p>Tuy vậy, The Phantom Pain cũng kh&ocirc;ng đến mức qu&aacute; sức đ&aacute;nh đố người chơi. Với những người chơi non tay v&agrave; kh&ocirc;ng quen với kiểu chơi &quot;tự th&acirc;n vận động&quot;, game lu&ocirc;n cung cấp rất nhiều lựa chọn hỗ trợ. V&iacute; dụ như người chơi c&oacute; thể y&ecirc;u cầu kh&ocirc;ng k&iacute;ch từ trực thăng, thả phương tiện di chuyển - chiến đấu hoặc vũ kh&iacute; hạng nặng xuống để sử dụng, v&agrave; nhất l&agrave; game c&ograve;n cung cấp c&aacute;c trợ thủ rất đắc lực cho Big Boss. Trong game, Big Boss ban đầu sẽ c&oacute; một trợ thủ l&agrave; ch&uacute; ngựa D-Horse, chủ yếu d&ugrave;ng để di chuyển, sau đ&oacute;, trong qu&aacute; tr&igrave;nh chơi, Big Boss sẽ dần dần thu nạp th&ecirc;m c&aacute;c trợ thủ kh&aacute;c như ch&uacute; ch&oacute; D-Dog với vai tr&ograve; trinh s&aacute;t, thậm ch&iacute; &aacute;m s&aacute;t kẻ địch, c&ocirc; n&agrave;ng sniper n&oacute;ng bỏng chết người Quiet, cỗ m&aacute;y D-Walker. Mặc d&ugrave; game kh&ocirc;ng bắt người chơi phải sử dụng c&aacute;c trợ thủ, nhưng cả 4 trợ thủ đều rất hữu dụng v&agrave; c&oacute; &iacute;ch, đ&ocirc;i khi c&oacute; thể cứu mạng Big Boss, v&igrave; vậy, tội g&igrave; m&agrave; kh&ocirc;ng đem họ đi theo chứ?</p>\r\n\r\n<p><img src=\"https://s3-ap-southeast-1.amazonaws.com/img.spiderum.com/sp-images/fa0f7440209a11e9a3a0e19e9f3a19bf.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Một điểm s&aacute;ng nữa trong hệ thống gameplay của The Phantom Pain, đ&oacute; l&agrave; cơ chế x&acirc;y dựng v&agrave; quản l&yacute; căn cứ, vốn được cải tiến v&agrave; n&acirc;ng cấp rất nhiều từ Peace Walker. Game ban đầu sẽ giao cho người chơi một khu Mother Base kh&aacute; nhỏ với một v&agrave;i khu vực ch&iacute;nh như R&amp;D Platform v&agrave; Command Platform, sau đ&oacute;, trong qu&aacute; tr&igrave;nh l&agrave;m nhiệm vụ, Big Boss c&oacute; thể thu thập c&aacute;c nguy&ecirc;n liệu, kiếm tiền - đơn vị được sử dụng trong game l&agrave; GMP, bắt c&oacute;c qu&acirc;n l&iacute;nh, giải cứu t&ugrave; binh v&agrave; chi&ecirc;u mộ th&ecirc;m nh&acirc;n lực để mở rộng v&agrave; n&acirc;ng cấp th&ecirc;m c&aacute;c khu căn cứ kh&aacute;c cho Mother Base. Mother Base vừa l&agrave; ng&ocirc;i nh&agrave; cho đội qu&acirc;n Diamond Dogs của Big Boss, vừa l&agrave; nơi hỗ trợ, nghi&ecirc;n cứu v&agrave; n&acirc;ng cấp trang bị cho Big Boss trong c&aacute;c nhiệm vụ sau n&agrave;y. C&oacute; thể n&oacute;i hệ thống quản l&yacute; Mother Base trong The Phantom Pain l&agrave; rất chi tiết: ngo&agrave;i việc n&acirc;ng cấp trang bị, phương tiện cho Big Boss c&ugrave;ng c&aacute;c trợ thủ th&igrave; người chơi c&ograve;n c&oacute; thể sắp xếp lại nh&acirc;n sự giữa c&aacute;c khu vực, cử họ l&agrave;m c&aacute;c nhiệm vụ FOB để n&acirc;ng cấp căn cứ l&ecirc;n th&ecirc;m nữa. Ch&iacute;nh cơ chế n&agrave;y đ&atilde; khiến cho bản th&acirc;n người chơi &quot;h&ograve;a m&igrave;nh&quot; với Big Boss hơn v&agrave; thực sự cảm nhận được g&aacute;nh nặng của một người chỉ huy.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img src=\"https://s3-ap-southeast-1.amazonaws.com/img.spiderum.com/sp-images/0c8d5740209b11e9b5fb83a1df92857e.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img src=\"https://s3-ap-southeast-1.amazonaws.com/img.spiderum.com/sp-images/130bc930209b11e9bea95727b9344b74.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>', '700000', 'Metal_67.jpg', 0, NULL, NULL),
(19, 1, 8, 'Battlefield V', '<p>Trong khi kẻ th&ugrave; đầy duy&ecirc;n nợ, Call Of Duty : Black Ops 4 đang khiến c&aacute;c fan s&ocirc;i sục l&ecirc;n trong một chiến trường m&aacute;u lửa, th&igrave;&nbsp;<a href=\"https://gamek.vn/battlefield-v.htm\" target=\"_blank\" title=\"battlefield v\">Battlefield V</a>&nbsp;cũng sẵn s&agrave;ng ra qu&acirc;n v&agrave;o ng&agrave;y 19 th&aacute;ng 11 tới đ&acirc;y. Trước th&agrave;nh c&ocirc;ng ban đầu đầy &aacute;p đảo của COD, liệu Battlefield c&oacute; đủ sức so&aacute;n ng&ocirc;i. Đ&acirc;y l&agrave; c&acirc;u trả lời trung thực nhất cho c&aacute;c fan trước ng&agrave;y game l&ecirc;n kệ.</p>\r\n\r\n<p><a href=\"https://gamek.mediacdn.vn/2018/11/12/1-15419975801631476666889.jpg\" target=\"_blank\" title=\"\"><img alt=\"Đánh giá sớm Battlefield V: Thế chiến hai chưa bao giờ chân thực và hấp dẫn đến vậy - Ảnh 1.\" height=\"\" src=\"https://gamek.mediacdn.vn/thumb_w/640/2018/11/12/1-15419975801631476666889.jpg\" title=\"Đánh giá sớm Battlefield V: Thế chiến hai chưa bao giờ chân thực và hấp dẫn đến vậy - Ảnh 1.\" width=\"\" /></a></p>\r\n\r\n<p>Suốt một thời gian d&agrave;i, DICE đ&atilde; tận dụng slogan &ldquo;Only in Battlefield&rdquo; nhằm &aacute;m chỉ chiến trường v&agrave; lối chơi qu&acirc;n sự &ldquo;thật&rdquo; nhất chỉ c&oacute; trong tựa game của họ. Khẩu hiệu n&agrave;y c&ograve;n thể hiện sự tự h&agrave;o về lối chơi sandbox ti&ecirc;n phong đầy ấn tượng, hay những khoảnh khắc kinh điển nhất như l&agrave;m nổ tung cả một chiếc phản lực hoặc đ&aacute;nh sập cả một t&ograve;a nh&agrave;. Nhưng kể từ năm 2016, DICE đ&atilde; &acirc;m thầm ngừng quảng b&aacute; slogan tr&ecirc;n.</p>\r\n\r\n<p>C&oacute; lẽ điều n&agrave;y phản &aacute;nh thực tế rằng, trong qu&aacute; tr&igrave;nh ph&aacute;t triển, Battlefield đ&atilde; dần dần rời xa lối chơi sandbox qu&acirc;n sự đầy đặc trưng, v&agrave; trở th&agrave;nh một game nghi&ecirc;ng về d&agrave;n dựng nhiều hơn, tuy kh&ocirc;ng k&eacute;m phần linh hoạt. V&agrave; đ&oacute; l&agrave; những g&igrave; tạo n&ecirc;n Battlefield 5, một cuộc chiến tranh thế giới thứ 2 nhằm b&agrave;y tỏ l&ograve;ng k&iacute;nh trọng với khởi nguồn của cả series, đồng thời t&igrave;m ra những hướng đi kh&aacute;c cho Battlefield trong tương lai. Thật kh&ocirc;ng may, điều n&agrave;y đ&atilde; khiến Battlefield 5 mất đi những g&igrave; l&agrave;m cho series n&agrave;y trở n&ecirc;n đặc biệt, ngay cả khi vẫn giữ lại đ&ocirc;i ch&uacute;t, mở rộng th&ecirc;m v&agrave; cải thiện nhiều thứ kh&aacute;c.</p>\r\n\r\n<p>V&agrave; tin vui cho c&aacute;c fan, Battlefield 5 kh&ocirc;ng giẫm v&agrave;o vết xe đổ của Black Ops 4. Game vẫn c&oacute; chế độ Campaign kh&aacute; ho&agrave;n thiện đảm bảo ngốn của c&aacute;c game thủ từ 7 đến 8 giờ chơi li&ecirc;n tục. Sau phần Stories của Battlefield 1 chắc chắn DICE đ&atilde; t&igrave;m ra lối dẫn chuyện hợp l&yacute; đầy l&ocirc;i cuốn, vậy n&ecirc;n chắc chắn họ phải đem v&agrave;o trong Battlefield 5. Phần mở đầu ngoạn mục thật sự g&acirc;y ấn tượng với t&ocirc;i</p>\r\n\r\n<p><a href=\"https://gamek.mediacdn.vn/2018/11/12/2-15419975950422053028710.jpg\" target=\"_blank\" title=\"\"><img alt=\"Đánh giá sớm Battlefield V: Thế chiến hai chưa bao giờ chân thực và hấp dẫn đến vậy - Ảnh 2.\" height=\"\" src=\"https://gamek.mediacdn.vn/thumb_w/640/2018/11/12/2-15419975950422053028710.jpg\" title=\"Đánh giá sớm Battlefield V: Thế chiến hai chưa bao giờ chân thực và hấp dẫn đến vậy - Ảnh 2.\" width=\"\" /></a></p>\r\n\r\n<p>War Stories trong Battlefield 5 &iacute;t hơn nhưng thời lượng chơi lại d&agrave;i hơn so với Battlefield 1. Sự kh&ocirc;ng nhất qu&aacute;n trong c&aacute;ch xắp đặt đ&atilde; ảnh hưởng đến chất lượng tổng thể, nhưng n&oacute;i chung vẫn kh&aacute; hay. H&igrave;nh như Nordlys l&agrave; chapter được nhiều fan trong tr&ocirc;ng đợi. Chapter n&agrave;y tập trung v&agrave;o việc một người mẹ Nauy c&ugrave;ng c&ocirc; con g&aacute;i, trượt tuyết xung quanh map, lợi dụng khả năng th&ocirc;ng thuộc địa h&igrave;nh để chống qu&acirc;n Đức x&acirc;m lăng. Hay chapter Under No Flag, &aacute;m ảnh hơn, khốc liệt hơn, khi một cựu t&ugrave; nh&acirc;n kho&aacute;c &aacute;o l&iacute;nh chiến đấu theo lệnh của Cockney officer. Phần lồng tiếng ở đ&acirc;y thật sự qu&aacute; đạt, đủ khiến mọi fan r&ugrave;ng m&igrave;nh.</p>\r\n\r\n<p>Gameplay kh&aacute; th&ocirc;ng minh, tất cả ba War Stories đều cung cấp cho bạn từ hai đến ba giờ chơi tự do kh&aacute;m ph&aacute;, với một khu vực mở, nhiều mục ti&ecirc;u để di chuyển t&ugrave;y bạn chọn. Mặc d&ugrave; AI của kẻ th&ugrave; ở mức trung b&igrave;nh v&agrave; kh&ocirc;ng c&oacute; g&igrave; s&aacute;ng tạo trong nhiệm vụ, nhưng đ&acirc;y ch&iacute;nh l&agrave; training room cho chế độ PvP của Battlefield 5, bạn sẽ được tham khảo, kh&aacute;m ph&aacute; map trức khi kẻ th&ugrave; tr&ecirc;n mạng đổ bộ v&agrave;o.</p>\r\n\r\n<p><strong>Chiến trường vẫn chất</strong></p>\r\n\r\n<p>Nếu Battlefield 1 khiến c&aacute;c fan cảm thấy cho&aacute;ng ngợp với nhiều người chơi, th&igrave; Battlefield 5 l&agrave; một phần tiếp theo lặp lại th&agrave;nh c&ocirc;ng như l&agrave; một bản sửa đổi nhỏ kh&ocirc;ng qu&aacute; rập khu&ocirc;n. C&aacute;c nh&acirc;n vật di chuyển tự do hơn, b&acirc;y giờ bạn c&oacute; thể vừa chạy nước r&uacute;t vừa c&uacute;i m&igrave;nh, thực hiện c&aacute;c pha parkour đầy mạo hiểm, v&agrave; bị ch&aacute;y nơi rơi v&agrave;o lửa. Trong khi đ&oacute;, hệ thống Fortifications mới cho ph&eacute;p người chơi x&acirc;y dựng tuyến ph&ograve;ng thủ với bao c&aacute;t, d&acirc;y th&eacute;p gai, h&agrave;o v&agrave; nhiều thứ kh&aacute;c. Điều n&agrave;y v&ocirc; c&ugrave;ng tuyệt vời cho những gamer th&iacute;ch th&uacute; hơn c&ocirc;ng, đồng thời l&agrave;m thật hơn chiến trường vốn kh&ocirc;ng chỉ c&oacute; giết ch&oacute;c.</p>\r\n\r\n<p><a href=\"https://gamek.mediacdn.vn/2018/11/12/3-15419976070761849589288.png\" target=\"_blank\" title=\"\"><img alt=\"Đánh giá sớm Battlefield V: Thế chiến hai chưa bao giờ chân thực và hấp dẫn đến vậy - Ảnh 3.\" height=\"\" src=\"https://gamek.mediacdn.vn/thumb_w/640/2018/11/12/3-15419976070761849589288.png\" title=\"Đánh giá sớm Battlefield V: Thế chiến hai chưa bao giờ chân thực và hấp dẫn đến vậy - Ảnh 3.\" width=\"\" /></a></p>\r\n\r\n<p>Sự t&ugrave;y biến về đội h&igrave;nh v&agrave; c&aacute;c class nh&acirc;n vật, nhằm c&aacute; nh&acirc;n h&oacute;a qu&acirc;n đội vẫn c&ograve;n đ&oacute; tuy được đ&aacute;nh gi&aacute; cao, nhưng kh&oacute; m&agrave; so với Battlefield 4. Ở phần 4 ch&uacute;ng ta c&oacute; Levelution v&agrave; Battlefield 1 th&igrave; c&oacute; Behemoths đầy cảm hứng, trong khi Battlefield 5 lại giảm lược bớt kha kh&aacute;.</p>\r\n\r\n<p>T&aacute;m bản đồ c&oacute; sẵn l&uacute;c khởi động thường nhỏ hơn hoặc bằng phẳng hơn so với c&aacute;c tr&ograve; chơi trước. Phải n&oacute;i l&agrave; ch&uacute;ng thiếu đi độ s&acirc;u, qu&aacute; đơn giản v&agrave; kh&aacute; sặc sỡ. Nếu so với Wake Island, Monte Grappa, hoặc Siege của Shang Hai, t&ocirc;i kh&ocirc;ng thể t&igrave;m thấy bất kỳ bản đồ n&agrave;o của Battlefield 5 đủ tầm để trở th&agrave;nh kinh điển. Nhưng &iacute;t ra cảnh quan kh&aacute; xinh đẹp với những c&aacute;nh đồng Canola tươi s&aacute;ng của v&ugrave;ng Arras hay những đỉnh n&uacute;i tuyết của Narvik đủ nơi ấn n&aacute;u trong chiến trường nhiều người chơi.</p>\r\n\r\n<p>&Acirc;m thanh trong game qu&aacute; xuất sắc, đội sản xuất &acirc;m thanh đ&atilde; vượt qua ch&iacute;nh m&igrave;nh một lần nữa, với những bản OST như một phim điện ảnh chuy&ecirc;n nghiệp. Ch&uacute;ng được lồng gh&eacute;p h&agrave;i h&ograve;a với bối cảnh cổ điển của Battlefield. Nhạc nền lu&ocirc;n xuất hiện v&agrave;o đ&uacute;ng thời điểm, c&ugrave;ng với &acirc;m thanh của c&aacute;c hiệu ứng gợi l&ecirc;n tiếng ồn khủng khiếp, kh&ocirc;ng ngừng của chiến tranh. Những tiếng k&ecirc;u lặp đi lặp lại của binh l&iacute;nh Đức v&agrave; Anh nghẹn ng&agrave;o h&eacute;t l&ecirc;n &ldquo;Schizer!&rdquo; Hay &ldquo;Bloody Hell!&rdquo;, khiến t&iacute;nh nhập vai trong game ch&acirc;n thật hơn bao giờ hết.</p>\r\n\r\n<p>Đối với c&aacute;c chế độ chơi, th&igrave; Battlefield 5 c&oacute; rất nhiều, bao gồm Conquest, Team Deathmatch, v&agrave; Domination, nhưng hấp dẫn nhất l&agrave; Grand Operations. Đ&acirc;y l&agrave; sự n&acirc;ng cấp của Operations modeđược t&aacute;n dương từ Battlefield 1, Grand Operations l&agrave; một sự kiện đầy năng động, tổng hợp nhiều bản đồ v&agrave; chế độ chơi c&oacute; thể k&eacute;o d&agrave;i đến bốn giờ trong thời gian thực. Bạn h&atilde;y thử trải nghiệm từ đầu đến cuối một trận chiến trong Grand Operations. Đ&acirc;y chắc chắn l&agrave; đại diện s&aacute;ng gi&aacute; cho danh hiệu the best multiplayer experiences.</p>\r\n\r\n<p><a href=\"https://gamek.mediacdn.vn/2018/11/12/4-15419976219351677846561.jpg\" target=\"_blank\" title=\"\"><img alt=\"Đánh giá sớm Battlefield V: Thế chiến hai chưa bao giờ chân thực và hấp dẫn đến vậy - Ảnh 4.\" height=\"\" src=\"https://gamek.mediacdn.vn/thumb_w/640/2018/11/12/4-15419976219351677846561.jpg\" title=\"Đánh giá sớm Battlefield V: Thế chiến hai chưa bao giờ chân thực và hấp dẫn đến vậy - Ảnh 4.\" width=\"\" /></a></p>\r\n\r\n<p>Bạn sẽ bắt đầu tr&ecirc;n Airborne, khi một đội rơi xuống khu vực địch từ tr&ecirc;n cao, với nhiệm vụ lấy s&uacute;ng ph&aacute;o của đối phương, trước khi chuyển sang tấn c&ocirc;ng kiểu Rush đầy dồn dập trong Breakthrough hoặc Frontline v&agrave; cao tr&agrave;o cực điểm với Final Stand. Một cuộc chiến căng thẳng đến chết giữa hai đội trong một đấu trường thu hẹp dần, Final Stand được thiết kế để đem đến cho người chơi một ch&uacute;t hương vị từ mode Batlle Royale của Battlefield 5, Firestorm. Mode n&agrave;y sẽ được ph&aacute;t h&agrave;nh dưới dạng bản cập nhật miễn ph&iacute; v&agrave;o th&aacute;ng Ba. Cả ba chế độ n&agrave;y đều mang những n&eacute;t độc đ&aacute;o của ri&ecirc;ng m&igrave;nh, nhưng lại v&ocirc; c&ugrave;ng gắn kết v&agrave; h&ograve;a hợp trong Grand Operations. Điều n&agrave;y c&oacute; thể khiến bạn qu&ecirc;n mất kh&aacute;i niệm thời gian khi m&atilde;i lo sinh tồn.</p>\r\n\r\n<p><strong>Mặt trận cuối c&ugrave;ng</strong></p>\r\n\r\n<p>N&oacute;i về bản cập nhật miễn ph&iacute;, DICE đ&atilde; ho&agrave;n to&agrave;n cải tiến phương ph&aacute;p tiếp cận nội dung sau khi ra mắt Tides of War của Battlefield 5, r&otilde; r&agrave;ng họ đang mong muốn tr&aacute;nh một thất bại kh&aacute;c sau phản hồi đầy ti&ecirc;u cực v&agrave;o năm ngo&aacute;i d&agrave;nh cho Star Wars Battlefront 2. Bạn sẽ kh&ocirc;ng t&igrave;m thấy bất kỳ Thẻ Premium n&agrave;o, trả tiền cho DLC, hoặc hộp loot; thay v&agrave;o đ&oacute;, mọi bản cập nhật mới, được chia th&agrave;nh c&aacute;c chương theo m&ugrave;a, sẽ ho&agrave;n to&agrave;n miễn ph&iacute;, với nội dung trả ph&iacute; duy nhất bằng tiền thật l&agrave; trang phục v&agrave; c&aacute;c đồ trang tr&iacute; cho binh l&iacute;nh của bạn.</p>\r\n\r\n<p>Chương đầu ti&ecirc;n của Tides of War bắt đầu v&agrave;o th&aacute;ng 12 v&agrave; mang đến một bản đồ Chiến tranh, bản đồ nhiều người chơi v&agrave; Range Mode mới cho tr&ograve; chơi. Mặc d&ugrave; rất kh&oacute; để nhận x&eacute;t về nội dung chưa được đưa ph&aacute;t h&agrave;nh, nhưng đ&acirc;y sẽ l&agrave; tin tức đ&aacute;ng tin cậy d&agrave;nh cho người h&acirc;m mộ Battlefield. &ldquo;Battlefield 5 đang trở th&agrave;nh tr&ograve; chơi cải thiện v&agrave; mở rộng theo thời gian m&agrave; người chơi kh&ocirc;ng phải trả th&ecirc;m bất cứ chi ph&iacute; n&agrave;o .&rdquo;</p>\r\n\r\n<p><a href=\"https://gamek.mediacdn.vn/2018/11/12/5-15419976339921527518824.jpg\" target=\"_blank\" title=\"\"><img alt=\"Đánh giá sớm Battlefield V: Thế chiến hai chưa bao giờ chân thực và hấp dẫn đến vậy - Ảnh 5.\" height=\"\" src=\"https://gamek.mediacdn.vn/thumb_w/640/2018/11/12/5-15419976339921527518824.jpg\" title=\"Đánh giá sớm Battlefield V: Thế chiến hai chưa bao giờ chân thực và hấp dẫn đến vậy - Ảnh 5.\" width=\"\" /></a></p>\r\n\r\n<p>Nhưng những cải tiến n&agrave;y rất được hoan ngh&ecirc;nh bởi v&igrave;, hiện tại, Battlefield 5 l&agrave; tựa game gần như hay nhất trong series kể từ sau Hardline Battlefield 2015. Đ&acirc;y l&agrave; một game bắn s&uacute;ng mạnh mẽ, trực quan tuyệt đẹp v&agrave; ho&agrave;n to&agrave;n th&uacute; vị, nhưng nếu thiếu đi khả năng kinh doanh kh&eacute;o l&eacute;o, Battlefield 5 sẽ chết yểu v&agrave; kh&ocirc;ng n&acirc;ng cao danh tiếng của cả d&ograve;ng game. Sự hỗn loạn của chiến tranh mở ra tr&ecirc;n m&agrave;n h&igrave;nh trong thời gian ngắn, c&aacute;c vụ nổ dữ dội v&agrave; lối chơi tốt hơn bao giờ hết. Điều đ&aacute;ng ngạc nhi&ecirc;n l&agrave; sau hơn 15 giờ trong chế độ multiplayer, t&ocirc;i dần cảm nhận được tinh thần &ldquo;Only on Battlefield&rdquo; tưởng chừng như bị l&atilde;ng qu&ecirc;n.</p>\r\n\r\n<p>Tin vui l&agrave; đ&acirc;y chỉ l&agrave; khởi đầu m&agrave; DICE d&agrave;nh cho Battlefield 5. Ngay khi Tides of War vẫn chưa ra mắt, th&igrave; ch&uacute;ng ta đ&atilde; bắt đầu chờ đợi Firestorm, Combined Arms, Practice Range, The Last Tiger, v&agrave; to&agrave;n bộ nội dung đầy đủ của multiplayer mode tr&ecirc;n Battlefield 5. Tuy c&oacute; xuất ph&aacute;t điểm hơi thua thiệt so với c&aacute;c đối thủ, nhưng với tầm nh&igrave;n chiến lược của DICE, t&ocirc;i tin rằng ch&uacute;ng ta sẽ c&oacute; nhiều niềm vui hơn với Battlefield 5 v&agrave;o năm tới.</p>', '50000', 'BF5_49.jpg', 0, NULL, NULL);
INSERT INTO `tbl_product` (`product_id`, `category_id`, `publisher_id`, `product_name`, `product_content`, `product_price`, `product_image`, `product_status`, `created_at`, `updated_at`) VALUES
(20, 1, 4, 'Monster Hunter: World', '<h2>C&oacute; thể coi Monster Hunter World: Ice Borne như một tựa game độc lập lu&ocirc;n cũng được kh&ocirc;ng phải chỉ l&agrave; bản mở rộng, v&igrave; số lượng nội dung đồ sộ của n&oacute;.</h2>\r\n\r\n<p>Sau th&agrave;nh c&ocirc;ng rực rỡ của phi&ecirc;n bản gốc, Capcom tiếp tục tung ra bản mở rộng lớn đầu ti&ecirc;n Monster Hunter World: Ice Borne với h&agrave;ng tấn nội dung khổng lồ d&agrave;nh cho game thủ. Với số lượng ti&ecirc;u thụ l&ecirc;n tới 2,5 triệu bản chỉ sau v&agrave;i tuần ra mắt,&nbsp;<strong><a href=\"https://motgame.vn/monster-hunter-world.tag\" rel=\"noopener noreferrer\" target=\"_blank\">Monster Hunter World: Ice Borne</a></strong>&nbsp;tiếp tục cho thấy sức h&uacute;t khủng khiếp của n&oacute; đối với game thủ.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><a href=\"https://motgame.vn/monster-hunter-world-iceborne-toan-tap-ve-quai-vat-master-rank.game\" target=\"_blank\"><img alt=\"\" height=\"207\" sizes=\"(max-width: 368px) 100vw, 368px\" src=\"https://motgame.vn/wp-content/uploads/2019/09/vuhoang/monster-hunter-world-iceborne-2-368x207.jpg\" srcset=\"https://motgame.vn/wp-content/uploads/2019/09/vuhoang/monster-hunter-world-iceborne-2-368x207.jpg 368w, https://motgame.vn/wp-content/uploads/2019/09/vuhoang/monster-hunter-world-iceborne-2-300x169.jpg 300w, https://motgame.vn/wp-content/uploads/2019/09/vuhoang/monster-hunter-world-iceborne-2-768x432.jpg 768w, https://motgame.vn/wp-content/uploads/2019/09/vuhoang/monster-hunter-world-iceborne-2-128x72.jpg 128w, https://motgame.vn/wp-content/uploads/2019/09/vuhoang/monster-hunter-world-iceborne-2-192x108.jpg 192w, https://motgame.vn/wp-content/uploads/2019/09/vuhoang/monster-hunter-world-iceborne-2.jpg 800w\" width=\"368\" /></a><a href=\"https://motgame.vn/monster-hunter-world-iceborne-toan-tap-ve-quai-vat-master-rank.game\" target=\"_blank\">Monster Hunter World: Iceborne: To&agrave;n tập về qu&aacute;i vật Master Rank</a></p>\r\n\r\n<p>Master Rank l&agrave; những con qu&aacute;i vật chỉ xuất hiện trong Monster Hunter World: Iceborne, ch&uacute;ng mạnh hơn v&agrave; kh&oacute; chịu hơn gấp tỷ lần đ&aacute;m l&iacute;t nh&iacute;t Hight Rank.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Monster Hunter World: Ice Borne l&agrave; phần nối tiếp của phi&ecirc;n bản gốc, tức l&agrave; người chơi cần phải ho&agrave;n th&agrave;nh phần cốt truyện ch&iacute;nh mới c&oacute; thể tiếp cận c&aacute;c nội dung mới trong bản mở rộng n&agrave;y. Cốt truyện của game vẫn tiếp tục xoay quanh h&agrave;nh tr&igrave;nh kh&aacute;m ph&aacute; thế giới của hội thợ săn, nhưng lần n&agrave;y họ đ&atilde; bị một con rồng thượng cổ b&iacute; ẩn ngăn cản lại, cũng như sự xuất hiện của h&agrave;ng loạt qu&aacute;i vật mới tại v&ugrave;ng đất băng tuyết Hoarfrost Reach.</p>\r\n\r\n<p>Tr&ecirc;n thực tế th&igrave; cốt truyện chưa bao giờ l&agrave; thứ cần phải quan t&acirc;m đối với Monster Hunter World, do đ&oacute; người chơi sẽ rất nhanh c&oacute; thể bỏ qua vấn đề n&agrave;y m&agrave; lao v&agrave;o những cuộc săn qu&aacute;i vật mới. Cũng giống như ở bản gốc, c&aacute;c bạn sẽ lần lượt trải qua c&aacute;c nhiệm vụ từ dễ tới kh&oacute; cho tới khi l&agrave;m gỏi hết đ&aacute;m rồng thượng cổ ở thế giới mới, n&oacute; về cơ bản kh&ocirc;ng kh&aacute;c g&igrave; phi&ecirc;n bản gốc cả, nhưng lối chơi của Monster Hunter World: Ice Borne mới l&agrave; thứ đ&aacute;ng n&oacute;i.</p>\r\n\r\n<p><img alt=\"Đánh giá Monster Hunter World: Ice Borne - Một thế giới quái vật điên rồ\" height=\"360\" sizes=\"(max-width: 640px) 100vw, 640px\" src=\"https://media.motgame.vn/2019/09/vuhoang/monster-hunter-world-iceborne-s.jpg\" srcset=\"https://motgame.vn/wp-content/uploads/2019/09/vuhoang/monster-hunter-world-iceborne-s.jpg 640w, https://motgame.vn/wp-content/uploads/2019/09/vuhoang/monster-hunter-world-iceborne-s-300x169.jpg 300w, https://motgame.vn/wp-content/uploads/2019/09/vuhoang/monster-hunter-world-iceborne-s-128x72.jpg 128w, https://motgame.vn/wp-content/uploads/2019/09/vuhoang/monster-hunter-world-iceborne-s-192x108.jpg 192w, https://motgame.vn/wp-content/uploads/2019/09/vuhoang/monster-hunter-world-iceborne-s-368x207.jpg 368w\" width=\"640\" /></p>\r\n\r\n<p>Do l&agrave; một bản mở rộng với nội dung nối ngay sau phần cuối game, n&ecirc;n độ kh&oacute; của Monster Hunter World: Ice Borne cũng được tăng l&ecirc;n tương ứng với việc n&acirc;ng cấp l&ecirc;n Master Rank. C&oacute; thể hiểu đơn giản Master Rank cũng giống như l&uacute;c bạn từ Low Rank l&ecirc;n High Rank vậy, tức l&agrave; to&agrave;n bộ đồ đạc v&agrave; vũ kh&iacute; đang c&oacute; gần như l&agrave; v&ocirc; t&aacute;c dụng với đ&aacute;m qu&aacute;i vật mới. Bất kể bạn c&oacute; những set trang bị b&aacute; đạo ra sao hay Decoration được đeo đầy người thế n&agrave;o, th&igrave; ch&uacute;ng vẫn yếu ớt một c&aacute;ch thảm hại ở Master Rank.</p>\r\n\r\n<p>Điều n&agrave;y ch&iacute;nh l&agrave; thứ bắt buộc game thủ phải một lần nữa c&agrave;y cuốc lại từ đầu, y hệt như hồi mới bắt đầu chơi game hạ xong con qu&aacute;i n&agrave;o l&agrave; lột da n&oacute; l&agrave;m &aacute;o gi&aacute;p rồi chiến tiếp lu&ocirc;n. Việc n&agrave;y thực sự rất tốn thời gian nhưng cũng cực kỳ g&acirc;y nghiện, v&igrave; khi bạn kh&aacute;m ph&aacute; mọi thứ lại từ đầu th&igrave; bạn sẽ lại phải bỏ thời gian ra để nghĩ ra những kiểu kết hợp trang bị mới cũng như cảm nhận lại việc m&igrave;nh mạnh l&ecirc;n theo thời gian để rồi trở n&ecirc;n b&aacute; đạo như cũ.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><a href=\"https://motgame.vn/huong-dan-monster-hunter-world-iceborne-cach-de-mo-khoa-4-o-trong-thuc-vat.game\" target=\"_blank\"><img alt=\"\" height=\"207\" sizes=\"(max-width: 368px) 100vw, 368px\" src=\"https://motgame.vn/wp-content/uploads/2019/09/vuhoang/monster-hunter-world-iceborne-eeqw-368x207.jpg\" srcset=\"https://motgame.vn/wp-content/uploads/2019/09/vuhoang/monster-hunter-world-iceborne-eeqw-368x207.jpg 368w, https://motgame.vn/wp-content/uploads/2019/09/vuhoang/monster-hunter-world-iceborne-eeqw-300x169.jpg 300w, https://motgame.vn/wp-content/uploads/2019/09/vuhoang/monster-hunter-world-iceborne-eeqw-768x432.jpg 768w, https://motgame.vn/wp-content/uploads/2019/09/vuhoang/monster-hunter-world-iceborne-eeqw-800x450.jpg 800w, https://motgame.vn/wp-content/uploads/2019/09/vuhoang/monster-hunter-world-iceborne-eeqw-128x72.jpg 128w, https://motgame.vn/wp-content/uploads/2019/09/vuhoang/monster-hunter-world-iceborne-eeqw-192x108.jpg 192w, https://motgame.vn/wp-content/uploads/2019/09/vuhoang/monster-hunter-world-iceborne-eeqw.jpg 960w\" width=\"368\" /></a><a href=\"https://motgame.vn/huong-dan-monster-hunter-world-iceborne-cach-de-mo-khoa-4-o-trong-thuc-vat.game\" target=\"_blank\">Hướng dẫn Monster Hunter World: Iceborne: C&aacute;ch để mở kh&oacute;a 4 &ocirc; trồng thực vật</a></p>\r\n\r\n<p>Trong Monster Hunter World: Iceborne th&igrave; bạn c&oacute; thể n&acirc;ng số &ocirc; trồng c&acirc;y nu&ocirc;i bọ từ 3 l&ecirc;n 4, cũng như mở kh&oacute;a được một số loại thực vật đa dạng kh&aacute;c.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Đối với c&aacute;c fan cũ của Monster Hunter World, th&igrave; cơ chế Master Rank l&uacute;c đầu sẽ hơi kh&oacute; chịu khi n&oacute; bắt buộc họ phải bỏ đi c&aacute;c m&oacute;n vũ kh&iacute; mạnh nhất để sử dụng một thứ ất ơ n&agrave;o đ&oacute; với chỉ số cao hơn. Nhưng c&agrave;ng về sau th&igrave; mọi thứ sẽ c&agrave;ng ổn v&igrave; d&ugrave; sao bạn cũng kh&ocirc;ng phải tốn thời gian m&ograve; mẫm kỹ năng như trước, chưa kể vũ kh&iacute; cũng được định h&igrave;nh lu&ocirc;n rồi.</p>\r\n\r\n<p><img alt=\"Đánh giá Monster Hunter World: Ice Borne - Một thế giới quái vật điên rồ\" height=\"361\" sizes=\"(max-width: 640px) 100vw, 640px\" src=\"https://media.motgame.vn/2019/09/vuhoang/monster-hunter-world-iceborne-s-as.jpg\" srcset=\"https://motgame.vn/wp-content/uploads/2019/09/vuhoang/monster-hunter-world-iceborne-s-as.jpg 640w, https://motgame.vn/wp-content/uploads/2019/09/vuhoang/monster-hunter-world-iceborne-s-as-300x169.jpg 300w, https://motgame.vn/wp-content/uploads/2019/09/vuhoang/monster-hunter-world-iceborne-s-as-128x72.jpg 128w, https://motgame.vn/wp-content/uploads/2019/09/vuhoang/monster-hunter-world-iceborne-s-as-192x108.jpg 192w, https://motgame.vn/wp-content/uploads/2019/09/vuhoang/monster-hunter-world-iceborne-s-as-368x207.jpg 368w\" width=\"640\" /></p>\r\n\r\n<p><iframe frameborder=\"0\" height=\"90\" id=\"google_ads_iframe_/282580923/motgame.vn/pc.motgame.vn.detail.large1_0\" name=\"google_ads_iframe_/282580923/motgame.vn/pc.motgame.vn.detail.large1_0\" scrolling=\"no\" title=\"3rd party ad content\" width=\"728\"></iframe></p>\r\n\r\n<p>Monster Hunter World: Ice Borne giới thiệu rất nhiều cơ chế chiến đấu mới, mặc d&ugrave; vẫn l&agrave; 14 m&oacute;n vũ kh&iacute; như cũ nhưng giờ đ&acirc;y người chơi đ&atilde; c&oacute; th&ecirc;m một trang bị mới l&agrave; Clutch Claw, thứ đồ chơi n&agrave;y c&oacute; thể ph&oacute;ng v&agrave; gi&uacute;p cho nh&acirc;n vật b&aacute;m l&ecirc;n một điểm bất kỳ tr&ecirc;n người qu&aacute;i vật. Khi đ&atilde; b&aacute;m d&iacute;nh v&agrave;o rồi th&igrave; bạn c&oacute; ra đ&ograve;n ch&eacute;m xuống hoặc d&ugrave;ng Claw đập v&agrave;o đầu ch&uacute;ng, đặc biệt hơn l&agrave; Clutch Claw c&oacute; thể bắn to&agrave;n bộ số đạn n&aacute; để khiến qu&aacute;i vật bị mất đ&agrave; rồi t&ocirc;ng v&agrave;o v&aacute;ch n&uacute;i dẫn tới cho&aacute;ng tạm thời.</p>\r\n\r\n<p>To&agrave;n bộ tương t&aacute;c mới của Monster Hunter World: Ice Borne xoay quanh Clutch Claw v&agrave; c&aacute;c vi&ecirc;n đạn n&aacute;, v&igrave; giờ đ&acirc;y đạn n&aacute; được tăng sức mạnh khủng khiếp chứ kh&ocirc;ng phải đơn thuần chỉ l&agrave; thứ bắn ra cho vui nữa. N&oacute; c&oacute; thể được kết hợp với c&aacute;c combo vũ kh&iacute;, tạo ra những chuỗi ra đ&ograve;n ngắt nhịp qu&aacute;i vật, di chuyển hoặc n&eacute; đ&ograve;n cực kỳ m&atilde;n nh&atilde;n&hellip; kết hợp với Clutch Claw để tăng độ cơ động th&igrave; chẳng kh&aacute;c g&igrave; bay lượn tr&ecirc;n kh&ocirc;ng cả. C&aacute;c vũ kh&iacute; cũng c&oacute; th&ecirc;m nhiều chi&ecirc;u thức hữu dụng hơn, chủ yếu l&agrave; để tương t&aacute;c c&ugrave;ng đạn n&aacute;. Ngay cả 2 khẩu bow gun v&agrave; heavy bow gun cũng c&oacute; th&ecirc;m mod mới, nh&igrave;n chung l&agrave; bạn sẽ phải tốn th&ecirc;m một khoảng thời gian khổng lồ nếu muốn l&agrave;m quen to&agrave;n bộ ch&uacute;ng.</p>\r\n\r\n<p><img alt=\"Đánh giá Monster Hunter World: Ice Borne  - Một thế giới quái vật điên rồ\" height=\"360\" sizes=\"(max-width: 640px) 100vw, 640px\" src=\"https://media.motgame.vn/2019/09/vuhoang/monster-hunter-world-iceborne-as.jpg\" srcset=\"https://motgame.vn/wp-content/uploads/2019/09/vuhoang/monster-hunter-world-iceborne-as.jpg 640w, https://motgame.vn/wp-content/uploads/2019/09/vuhoang/monster-hunter-world-iceborne-as-300x169.jpg 300w, https://motgame.vn/wp-content/uploads/2019/09/vuhoang/monster-hunter-world-iceborne-as-128x72.jpg 128w, https://motgame.vn/wp-content/uploads/2019/09/vuhoang/monster-hunter-world-iceborne-as-192x108.jpg 192w, https://motgame.vn/wp-content/uploads/2019/09/vuhoang/monster-hunter-world-iceborne-as-368x207.jpg 368w\" width=\"640\" /></p>\r\n\r\n<p>Đ&aacute;m qu&aacute;i vật Master Rank &ndash; linh hồn của Monster Hunter World: Ice Borne cũng được thiết kế v&ocirc; c&ugrave;ng ngon l&agrave;nh. Ngo&agrave;i những thể loại mới ho&agrave;n to&agrave;n v&agrave; v&agrave;i con rồng thượng cổ nguy&ecirc;n tố để h&agrave;nh hạ người chơi th&igrave; c&oacute; rất nhiều qu&aacute;i vật cũ với chủng mới được th&ecirc;m v&agrave;o, th&iacute; dụ như Shrieking Legiana, Ebony Odogaron hay Seething Bazelgeuse&hellip; ch&uacute;ng c&oacute; thể coi l&agrave; bản n&acirc;ng cấp với ngoại h&igrave;nh đi c&ugrave;ng số lượng đ&ograve;n đ&aacute;nh nguy&ecirc;n tố kh&aacute;c hẳn.</p>\r\n\r\n<p>Một điều nữa khiến Master Rank trở n&ecirc;n kh&oacute; nhằn v&igrave; qu&aacute;i vật giờ đ&acirc;y kh&ocirc;ng tr&acirc;u ch&oacute; hơn, m&agrave; ch&uacute;ng c&ograve;n kh&aacute;ng hiệu ứng một c&aacute;ch đ&aacute;ng kinh ngạc. Sẽ kh&ocirc;ng c&ograve;n những m&agrave;n bắn Flash Pod h&agrave;nh hạ những con qu&aacute;i bay lượn tr&ecirc;n kh&ocirc;ng nữa, m&agrave; ch&uacute;ng sẽ chỉ bị cho&aacute;ng nhẹ dẫn tới việc giờ đ&acirc;y bạn phải thực sự thuần thục vũ kh&iacute; để khỏi bị ăn h&agrave;nh.</p>\r\n\r\n<p>C&aacute;c con rồng thượng cổ cũng được n&acirc;ng cấp cả về kỹ năng lẫn sức mạnh, h&atilde;y thử th&aacute;ch với Master rank Kushala Daora để tận hưởng cảm gi&aacute;c bị gi&oacute; thổi tung nồi cả trận, hay đến với Blackveil Vaal Hazak với m&agrave;n phun độc to&agrave;n m&agrave;n h&igrave;nh v&agrave; h&uacute;t m&aacute;u từ xa&hellip; mỗi trận đ&aacute;nh trong Monster Hunter World: Ice Borne giờ đ&acirc;y l&agrave; một cuộc chơi đặc biệt cảm gi&aacute;c mạnh, khi qu&aacute;i vật kh&ocirc;ng những mạnh hơn m&agrave; c&ograve;n kh&ocirc;n hơn nữa.</p>\r\n\r\n<p><img alt=\"monster hunter world iceborne s\" height=\"360\" sizes=\"(max-width: 640px) 100vw, 640px\" src=\"https://media.motgame.vn/2019/09/vuhoang/monster-hunter-world-iceborne-ee.jpg\" srcset=\"https://motgame.vn/wp-content/uploads/2019/09/vuhoang/monster-hunter-world-iceborne-ee.jpg 800w, https://motgame.vn/wp-content/uploads/2019/09/vuhoang/monster-hunter-world-iceborne-ee-300x169.jpg 300w, https://motgame.vn/wp-content/uploads/2019/09/vuhoang/monster-hunter-world-iceborne-ee-768x432.jpg 768w, https://motgame.vn/wp-content/uploads/2019/09/vuhoang/monster-hunter-world-iceborne-ee-128x72.jpg 128w, https://motgame.vn/wp-content/uploads/2019/09/vuhoang/monster-hunter-world-iceborne-ee-192x108.jpg 192w, https://motgame.vn/wp-content/uploads/2019/09/vuhoang/monster-hunter-world-iceborne-ee-368x207.jpg 368w\" width=\"640\" /></p>\r\n\r\n<p>Với đ&aacute;m qu&aacute;i vật được n&acirc;ng cấp sức mạnh, th&igrave; ngoại h&igrave;nh của ch&uacute;ng cũng hầm hố hơn hẳn v&agrave; giờ đ&acirc;y bạn sẽ thấy đ&aacute;m rồng thượng cổ thực sự chơi đ&ugrave;a với nguy&ecirc;n tố ra sao. Những m&agrave;n đ&aacute; rơi, tuyết lở, băng nổ đ&ugrave;ng đ&ugrave;ng tr&ecirc;n đầu hay cả một c&aacute;i địa ngục lửa vần vũ khắp nơi&hellip; hiệu ứng thị gi&aacute;c đặc biệt m&atilde;n nh&atilde;n v&agrave; n&oacute; v&ocirc; c&ugrave;ng hủy thi&ecirc;n diệt địa đ&uacute;ng nghĩa v&igrave; chỉ cần đi lơ ngơ một ph&aacute;t th&ocirc;i l&agrave; toi đời lu&ocirc;n.</p>\r\n\r\n<p>Monster Hunter World: Ice Borne c&oacute; thể coi như l&agrave; một tựa game độc lập chứ kh&ocirc;ng chỉ g&oacute;i gọn l&agrave; bản mở rộng, n&oacute; xứng đ&aacute;ng tới từng giờ c&agrave;y cuốc v&agrave; chắc chắn sẽ khiến c&aacute;c fan của seri n&agrave;y thỏa m&atilde;n một c&aacute;ch ho&agrave;n hảo.</p>', '40000', 'MHWice_96.jpg', 0, NULL, NULL),
(21, 2, 1, 'Red Dead Redemption 2', '<h2>Với những g&igrave; m&agrave; Rockstar đ&atilde; đ&aacute;nh gi&aacute; Red Dead Redemption 2, th&igrave; c&oacute; lẽ danh hiệu Game Of The Year lần n&agrave;y kh&oacute; m&agrave; vuột tay bọn họ được.</h2>\r\n\r\n<p>Bom tấn của năm, si&ecirc;u phẩm thế kỷ hay tựa game vĩ đại nhất lịch sử&hellip; l&agrave; những g&igrave; m&agrave; người ta đ&aacute;nh gi&aacute; Red Dead Redemption 2&nbsp;.Những lời khen n&agrave;y kh&ocirc;ng phải l&agrave; kh&ocirc;ng c&oacute; căn cứ, khi con cưng của Rockstar đ&atilde; ph&aacute; mọi kỷ lục về doanh số, thời gian v&agrave; cả lợi nhuận ngay từ khi n&oacute; vừa ra mắt.</p>\r\n\r\n<p>C&oacute; thể n&oacute;i&nbsp;<a href=\"https://motgame.vn/red-dead-redemption-2.tag\"><strong>Red Dead Redemption 2</strong></a>&nbsp;kh&ocirc;ng phải chỉ đơn giản l&agrave; một tựa game hay, n&oacute; c&ograve;n như một cuốn tiểu thuyết đỉnh cao, với đầy đủ c&aacute;c n&uacute;t thắt n&uacute;t mở khiến người đọc phải thảng thốt kinh ngạc. Si&ecirc;u phẩm của si&ecirc;u phẩm, c&oacute; lẽ l&agrave; từ ngợi ca ch&iacute;nh x&aacute;c nhất c&oacute; thể d&agrave;nh cho Red Dead Redemption 2.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Như đ&atilde; n&oacute;i từ trước, Red Dead Redemption 2 lấy mốc thời gian trước c&aacute;c sự kiện xảy ra trong phần một, vậy c&acirc;u hỏi ở đ&acirc;y l&agrave; bạn c&oacute; cần phải chơi Red Dead Redemption trước th&igrave; mới hiểu được c&aacute;c t&igrave;nh tiết trong game? C&acirc;u trả lời l&agrave; kh&ocirc;ng, v&igrave; nh&acirc;n vật ch&iacute;nh l&uacute;c n&agrave;y l&agrave; Arthur Morgan &ndash; một người gần như ho&agrave;n to&agrave;n chưa được nhắc tới, cộng th&ecirc;m l&agrave; tuyến thời gian kh&aacute;c hẳn v&agrave; c&aacute;c nh&acirc;n vật phụ mới ho&agrave;n to&agrave;n.</p>\r\n\r\n<p>Ch&uacute;ng ta sẽ đến miền viễn T&acirc;y những năm 1899 &ndash; mốc cuối c&ugrave;ng của những kẻ sống ngo&agrave;i v&ograve;ng ph&aacute;p luật, l&uacute;c huy ho&agrave;ng cực thịnh của băng Van der Linde do Dutch cầm đầu. Thời điểm diễn ra c&aacute;c sự kiện trong Red Dead Redemption 2 xảy ra khi băng Van der Linde vừa l&agrave;m một phi vụ động trời tại Blackwater, dẫn đến sự truy s&aacute;t của ch&iacute;nh quyền li&ecirc;n bang.</p>\r\n\r\n<p>Cốt truyện Red Dead Redemption 2 mang đậm m&agrave;u sắc l&atilde;ng mạng, khi Dutch ng&agrave;y đ&oacute; vẫn mang d&aacute;ng v&oacute;c của một qu&yacute; &ocirc;ng, với m&aacute;u hiệp sĩ v&agrave; ảo tưởng về một miền đất tự do của m&igrave;nh l&agrave;m chủ tại miền T&acirc;y. L&yacute; tưởng của &ocirc;ng ta xung đột nặng nề với ch&iacute;nh phủ Mỹ &ndash; những người tin rằng c&aacute;c băng nh&oacute;m như vậy đ&atilde; kh&ocirc;ng c&ograve;n đất sống trong thế giới hiện đại nữa.</p>\r\n\r\n<p><img alt=\"Đánh giá Red Dead Redemption 2: Miền Viễn Tây buồn thăm thẳm\" height=\"360\" sizes=\"(max-width: 640px) 100vw, 640px\" src=\"https://media.motgame.vn/2018/11/vuhoang/red-dead-redemption-2g.jpg\" srcset=\"https://motgame.vn/wp-content/uploads/2018/11/vuhoang/red-dead-redemption-2g.jpg 640w, https://motgame.vn/wp-content/uploads/2018/11/vuhoang/red-dead-redemption-2g-300x169.jpg 300w, https://motgame.vn/wp-content/uploads/2018/11/vuhoang/red-dead-redemption-2g-128x72.jpg 128w, https://motgame.vn/wp-content/uploads/2018/11/vuhoang/red-dead-redemption-2g-192x108.jpg 192w, https://motgame.vn/wp-content/uploads/2018/11/vuhoang/red-dead-redemption-2g-368x207.jpg 368w\" width=\"640\" /></p>\r\n\r\n<p>Người chơi sẽ v&agrave;o vai Arthur Morgan &ndash; c&aacute;nh tay phải của Dutch v&agrave; l&agrave; th&agrave;nh vi&ecirc;n giỏi nhất trong băng Van der Linde, anh ta bị giằng x&eacute; giữa l&ograve;ng trung th&agrave;nh với Dutch v&agrave; c&aacute;c gi&aacute; trị của bản th&acirc;n. Cốt truyện trong Red Dead Redemption 2 như một h&agrave;nh tr&igrave;nh d&agrave;i v&agrave; đượm buồn của những con người bị bỏ lại trong d&ograve;ng ph&aacute;t triển của nước Mỹ, về thời đại mới m&agrave; ph&aacute;p luật thay thế cho s&uacute;ng đạn v&agrave; c&aacute;c băng nh&oacute;m như Van der Linde kh&ocirc;ng c&ograve;n được ph&eacute;p tồn tại nữa.</p>\r\n\r\n<p>Suốt qu&aacute; tr&igrave;nh chơi Red Dead Redemption 2, bạn sẽ đi theo ch&acirc;n của Arthur trong h&agrave;nh tr&igrave;nh c&ugrave;ng băng Van der Linde, từ l&uacute;c&nbsp;băng n&agrave;y&nbsp;chạy trốn ch&iacute;nh quyền cho tới khi sụp đổ. C&aacute;c nh&acirc;n vật được khắc họa r&otilde; n&eacute;t t&iacute;nh c&aacute;ch, mục ti&ecirc;u v&agrave; tư duy sống của họ &ndash; đặc biệt l&agrave; Dutch. &Ocirc;ng ta như hiện th&acirc;n của một con người bị phản bội bởi ch&iacute;nh l&yacute; tưởng của m&igrave;nh, một mặt Dutch muốn dẫn người ta tới một v&ugrave;ng đất hứa tự do, nhưng một mặt kh&aacute;c lại kh&ocirc;ng bỏ được bản t&iacute;nh hoang d&atilde; của một t&ecirc;n cướp.</p>\r\n\r\n<blockquote>\r\n<p><em>&ndash; Đến cuối c&ugrave;ng, ch&uacute;ng ta vẫn lu&ocirc;n l&agrave; những kẻ nằm ngo&agrave;i r&igrave;a ph&aacute;p luật</em></p>\r\n</blockquote>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><a href=\"https://motgame.vn/nhung-ly-do-de-khong-choi-red-dead-redemption-2.game\" target=\"_blank\"><img alt=\"Những lý do để KHÔNG chơi Red Dead Redemption 2\" height=\"207\" sizes=\"(max-width: 368px) 100vw, 368px\" src=\"https://motgame.vn/wp-content/uploads/2018/10/vuhoang/red-dead-redemption-2-5-1-368x207.jpg\" srcset=\"https://motgame.vn/wp-content/uploads/2018/10/vuhoang/red-dead-redemption-2-5-1-368x207.jpg 368w, https://motgame.vn/wp-content/uploads/2018/10/vuhoang/red-dead-redemption-2-5-1-300x169.jpg 300w, https://motgame.vn/wp-content/uploads/2018/10/vuhoang/red-dead-redemption-2-5-1-768x432.jpg 768w, https://motgame.vn/wp-content/uploads/2018/10/vuhoang/red-dead-redemption-2-5-1-800x450.jpg 800w, https://motgame.vn/wp-content/uploads/2018/10/vuhoang/red-dead-redemption-2-5-1-128x72.jpg 128w, https://motgame.vn/wp-content/uploads/2018/10/vuhoang/red-dead-redemption-2-5-1-192x108.jpg 192w, https://motgame.vn/wp-content/uploads/2018/10/vuhoang/red-dead-redemption-2-5-1.jpg 960w\" width=\"368\" /></a><a href=\"https://motgame.vn/nhung-ly-do-de-khong-choi-red-dead-redemption-2.game\" target=\"_blank\">Những l&yacute; do để KH&Ocirc;NG n&ecirc;n chơi Red Dead Redemption 2</a></p>\r\n\r\n<p>KH&Ocirc;NG n&ecirc;n chơi Red Dead Redemption 2 đối với những fan ham m&ecirc; thể loại h&agrave;nh động, hoặc c&aacute;c game thủ kh&ocirc;ng th&iacute;ch việc nh&agrave;n nh&atilde; ngắm cảnh.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Lối chơi của Red Dead Redemption 2 thi&ecirc;n ho&agrave;n to&agrave;n về mặt kh&aacute;m ph&aacute; thế giới v&agrave; thưởng thức cốt truyện, n&oacute; l&agrave; một game &ldquo;nhập vai &ndash; phi&ecirc;u lưu&rdquo; nhiều hơn l&agrave; &ldquo;nhập vai &ndash; h&agrave;nh động&rdquo;. N&oacute; c&oacute; rất nhiều thứ hạn chế những game thủ n&agrave;o muốn rush cốt truyện như: Fast Travel kh&oacute; khăn, bản đồ rộng nhưng chỉ c&oacute; thể đi bộ l&agrave; ch&iacute;nh, c&aacute;c sự kiện ngẫu nhi&ecirc;n nhiều v&agrave; số lượng nhiệm vụ phụ khủng bố&hellip;</p>\r\n\r\n<p>Red Dead Redemption 2 giống như c&aacute;ch m&agrave; bạn đọc một cuốn tiểu thuyết vậy, chậm chậm thưởng thức n&oacute; v&agrave; chi&ecirc;m nghiệm c&acirc;u truyện, v&igrave; l&yacute; do n&agrave;y m&agrave; nhịp game của n&oacute; cực chậm, thậm ch&iacute; l&agrave; chậm tới mức c&oacute; thể khiến người ta ngủ gục. Red Dead Redemption 2 kh&ocirc;ng d&agrave;nh cho những ai ưa th&iacute;ch thể loại h&agrave;nh động, v&igrave; cơ chế chiến đấu của game rất b&igrave;nh thường. Gần như tất cả c&aacute;c trận đấu s&uacute;ng đều diễn ra với một kịch bản duy nhất, đ&oacute; l&agrave; Arthur n&uacute;p l&ugrave;m bắn từng kẻ th&ugrave; một, c&ograve;n kh&ocirc;ng th&igrave; d&ugrave;ng t&iacute;nh năng l&agrave;m chậm thời gian (Dead Eyes) để xử đẹp hết.</p>\r\n\r\n<p>Số lượng s&uacute;ng trong Red Dead Redemption 2 kh&aacute; nhiều (gần 60 khẩu), nhưng như đ&atilde; n&oacute;i ở tr&ecirc;n th&igrave; ch&uacute;ng kh&ocirc;ng c&oacute; t&aacute;c dụng r&otilde; rệt nhiều lắm. Gần như người chơi c&oacute; thể d&ugrave;ng khẩu s&uacute;ng lục ban đầu xử l&yacute; hết mọi thứ nếu thanh Dead Eyes đang đầy, game cũng kh&ocirc;ng c&oacute; c&aacute;c m&agrave;n đ&aacute;nh tr&ugrave;m ho&agrave;nh tr&aacute;ng g&igrave; cả &ndash; tất cả để người chơi tập trung v&agrave;o việc trải nghiệm cốt truyện v&agrave; thế giới mở của n&oacute;.</p>\r\n\r\n<p><img alt=\"Đánh giá Red Dead Redemption 2: Miền Viễn Tây buồn thăm thẳm\" height=\"360\" sizes=\"(max-width: 640px) 100vw, 640px\" src=\"https://media.motgame.vn/2018/11/vuhoang/red-dead-redemption-2-3-1-800x450.jpg\" srcset=\"https://motgame.vn/wp-content/uploads/2018/11/vuhoang/red-dead-redemption-2-3-1-800x450.jpg 800w, https://motgame.vn/wp-content/uploads/2018/11/vuhoang/red-dead-redemption-2-3-1-300x169.jpg 300w, https://motgame.vn/wp-content/uploads/2018/11/vuhoang/red-dead-redemption-2-3-1-768x432.jpg 768w, https://motgame.vn/wp-content/uploads/2018/11/vuhoang/red-dead-redemption-2-3-1-128x72.jpg 128w, https://motgame.vn/wp-content/uploads/2018/11/vuhoang/red-dead-redemption-2-3-1-192x108.jpg 192w, https://motgame.vn/wp-content/uploads/2018/11/vuhoang/red-dead-redemption-2-3-1-368x207.jpg 368w, https://motgame.vn/wp-content/uploads/2018/11/vuhoang/red-dead-redemption-2-3-1.jpg 960w\" width=\"640\" /></p>\r\n\r\n<p>N&oacute;i về thế giới mở của Red Dead Redemption 2 th&igrave; chỉ c&oacute; 2 từ l&agrave; &ldquo;v&ocirc; đối&rdquo;, c&oacute; thể n&oacute;i tới hiện tại th&igrave; chắc chắn l&agrave; chưa từng c&oacute; tựa game n&agrave;o x&acirc;y dựng c&aacute;c sự kiện ngẫu nhi&ecirc;n tốt như Red Dead Redemption 2. Gần như bất kỳ NPC n&agrave;o, bất kỳ địa điểm n&agrave;o v&agrave; bất kỳ qu&atilde;ng thời gian n&agrave;o bạn cũng c&oacute; thể gặp thứ g&igrave; đ&oacute; kh&ocirc;ng lường trước được, th&iacute; dụ như khi bạn cứu một người đi đường bị rắn cắn th&igrave; về sau anh ta sẽ trả ơn bằng c&aacute;ch miễn ph&iacute; một m&oacute;n đồ trong shop, nếu giết một người đi đường th&igrave; cả nh&agrave; anh ta sẽ đuổi bạn tới chết, hoặc đ&aacute;m tang xảy ra v&agrave; Arthur bị nguyền rủa tới bến.</p>\r\n\r\n<p>Trong Red Dead Redemption 2 c&oacute; hệ thống vinh danh Thiện &ndash; &Aacute;c dựa tr&ecirc;n c&aacute;c h&agrave;nh động của Arthur, n&oacute; ảnh hưởng trực tiếp tới thế giới quan trong game. Nếu l&agrave;m nhiều việc &ldquo;Thiện&rdquo; như gi&uacute;p người đi đường, bắt bọn tội phạm hay cho tiền ăn m&agrave;y th&igrave; Arthur sẽ được k&iacute;nh trọng hơn, giảm gi&aacute; tiền trong shop v&agrave; mở kh&oacute;a nhiều trang bị mới. Ngược lại khi chọn l&agrave;m &ldquo;&Aacute;c&rdquo; nhiều th&igrave; c&aacute;i đầu của bạn sẽ treo thưởng cao, bị truy đuổi khắp c&aacute;c bang v&agrave; đi tới đ&acirc;u cũng c&oacute; khả năng bị giết chết.</p>', '90000', 'RedDead_75.jpg', 0, NULL, NULL),
(22, 2, 2, 'Ori and the Will of the Wisps', '<p>Thế giới của<strong><em>&nbsp;Ori and the Will of the Wisps</em></strong>&nbsp;giữ nguy&ecirc;n tinh thần của game tiền nhiệm khi vẫn lung linh, tr&aacute;ng lệ đến cho&aacute;ng ngợp!</p>\r\n\r\n<p>Từng nh&agrave;nh c&acirc;y, ngọn cỏ của game được vẽ tay v&agrave; điểm s&aacute;ng cực k&igrave; tinh tế v&agrave; sống động c&ugrave;ng h&igrave;nh ảnh nền kh&ocirc;ng k&eacute;m phần chi tiết, v&agrave; sự đa dạng của phong c&aacute;ch h&igrave;nh ảnh game c&agrave;ng khiến trải nghiệm trực quan của&nbsp;<strong><em>Ori and the Will of the Wisps</em></strong>&nbsp;thực sự đặc biệt hơn nữa.</p>\r\n\r\n<p>Game l&agrave; một bản đồ rộng lớn với nhiều ph&acirc;n đoạn, v&agrave; mỗi ph&acirc;n đoạn c&oacute; một phong c&aacute;ch h&igrave;nh ảnh đặc trưng đầy th&uacute; vị, lấy v&iacute; dụ như ph&acirc;n đoạn m&agrave; người viết th&iacute;ch nhất l&agrave; Baur&rsquo;s Reach, một khu vực tuyết phủ trắng x&oacute;a.</p>\r\n\r\n<p>Khu vực n&agrave;y chiếm chủ yếu bởi những gam m&agrave;u lạnh v&agrave; m&agrave;u trắng của tuyết, nhưng được &ldquo;t&ocirc; điểm&rdquo; bằng những c&agrave;nh l&aacute; v&agrave;ng v&agrave; những chiếc lồng đ&egrave;n ch&aacute;y &acirc;m ỉ, khiến bức tranh to&agrave;n cảnh tr&ocirc;ng thực sự đầm ấm, như một quang cảnh thi&ecirc;n nhi&ecirc;n m&agrave; người chơi c&ugrave;ng Ori được h&ograve;a m&igrave;nh v&agrave;o kh&aacute;m ph&aacute;, phi&ecirc;u lưu, điều n&agrave;y t&aacute;ch biệt với rừng c&acirc;y xanh ngắt v&agrave; đầy sức sống ở những m&agrave;n chơi kh&aacute;c, khiến cho m&igrave;nh thực sự h&agrave;o hứng mỗi khi &ldquo;t&igrave;m ra&rdquo; khu vực mới n&agrave;y.</p>\r\n\r\n<p><img alt=\"Will of the Wisps\" sizes=\"(max-width: 1000px) 100vw, 1000px\" src=\"https://i1.wp.com/cdn.vietgame.asia/wp-content/uploads/20200319111218/ori-and-the-will-of-the-wisps-danh-gia-game-4.jpg?ssl=1\" srcset=\"https://cdn.vietgame.asia/wp-content/uploads/20200319111218/ori-and-the-will-of-the-wisps-danh-gia-game-4.jpg 1920w, https://cdn.vietgame.asia/wp-content/uploads/20200319111218/ori-and-the-will-of-the-wisps-danh-gia-game-4.jpg 500w, https://cdn.vietgame.asia/wp-content/uploads/20200319111218/ori-and-the-will-of-the-wisps-danh-gia-game-4.jpg 1140w, https://cdn.vietgame.asia/wp-content/uploads/20200319111218/ori-and-the-will-of-the-wisps-danh-gia-game-4.jpg 768w, https://cdn.vietgame.asia/wp-content/uploads/20200319111218/ori-and-the-will-of-the-wisps-danh-gia-game-4.jpg 1536w\" /></p>\r\n\r\n<p>Tất nhi&ecirc;n người viết sẽ kh&ocirc;ng tiết lộ th&ecirc;m những quang cảnh th&uacute; vị kh&aacute;c trong game, điều đ&oacute; c&aacute;c bạn sẽ phải tự kh&aacute;m ph&aacute;, nhưng h&atilde;y mong đợi một sự đa dạng trong phong c&aacute;ch h&igrave;nh ảnh lung linh, tr&aacute;ng lệ v&agrave; hết sức thần ti&ecirc;n của game!</p>\r\n\r\n<p>Tuy lung linh v&agrave; tr&aacute;ng lệ như vậy, nhưng game kh&ocirc;ng &ldquo;qu&ecirc;n&rdquo; vai tr&ograve; ch&iacute;nh của game l&agrave; gi&uacute;p người chơi vượt qua những thử th&aacute;ch m&igrave;nh đặt ra, v&igrave; vậy, game đ&atilde; hết sức tinh tế d&ugrave;ng mặt h&igrave;nh ảnh để cho người chơi biết đ&acirc;u l&agrave; nguy hiểm, đ&acirc;u l&agrave; lối đi bằng phong c&aacute;ch tr&aacute;ng lệ của m&igrave;nh, cũng kh&ocirc;ng qu&ecirc;n &ldquo;ngầm&rdquo; hướng dẫn người chơi những lối đi kh&aacute;m ph&aacute; b&iacute; mật bằng phong c&aacute;ch h&igrave;nh ảnh tr&aacute;ng lệ của m&igrave;nh, khiến cho c&aacute;i đẹp của&nbsp;<strong><em>Ori and the Will of the Wisps</em></strong>&nbsp;hiếm khi n&agrave;o c&oacute; cảm gi&aacute;c &ldquo;thừa th&atilde;i&rdquo; hay ph&ocirc; trương kh&ocirc;ng cần thiết, m&agrave; l&agrave; một nh&acirc;n tố quan trọng đồng h&agrave;nh c&ugrave;ng người chơi trong chuyến phi&ecirc;u lưu của m&igrave;nh.</p>\r\n\r\n<p>c&aacute;i đẹp của&nbsp;<em><strong>Ori and the Will of the Wisps</strong></em>&nbsp;hiếm khi n&agrave;o c&oacute; cảm gi&aacute;c &ldquo;thừa th&atilde;i&rdquo; hay kh&ocirc;ng cần thiết</p>\r\n\r\n<p><img alt=\"Will of the Wisps\" sizes=\"(max-width: 1000px) 100vw, 1000px\" src=\"https://i0.wp.com/cdn.vietgame.asia/wp-content/uploads/20200319111236/ori-and-the-will-of-the-wisps-danh-gia-game-5.jpg?ssl=1\" srcset=\"https://cdn.vietgame.asia/wp-content/uploads/20200319111236/ori-and-the-will-of-the-wisps-danh-gia-game-5.jpg 1920w, https://cdn.vietgame.asia/wp-content/uploads/20200319111236/ori-and-the-will-of-the-wisps-danh-gia-game-5.jpg 500w, https://cdn.vietgame.asia/wp-content/uploads/20200319111236/ori-and-the-will-of-the-wisps-danh-gia-game-5.jpg 1140w, https://cdn.vietgame.asia/wp-content/uploads/20200319111236/ori-and-the-will-of-the-wisps-danh-gia-game-5.jpg 768w, https://cdn.vietgame.asia/wp-content/uploads/20200319111236/ori-and-the-will-of-the-wisps-danh-gia-game-5.jpg 1536w\" /></p>\r\n\r\n<p>Tất cả sự diệu k&igrave; về mặt h&igrave;nh ảnh đ&oacute;, h&ograve;a với bản soundtrack tuyệt hảo từ nh&agrave; soạn nhạc t&agrave;i ba Gareth Coker l&agrave; một trải nghiệm thực sự đặc biệt.</p>\r\n\r\n<p>Những ph&acirc;n đoạn gay cấn được đệm c&aacute;c bản nhạc th&iacute;nh ph&ograve;ng ho&agrave;nh tr&aacute;ng v&agrave; dồn dập, những ph&acirc;n đoạn chậm hơn th&igrave; tiết tấu nhạc chậm lại, du dương v&agrave; k&eacute;o người chơi v&agrave;o thế giới lung linh đ&oacute;, khiến cho người chơi c&agrave;ng h&agrave;o hứng kh&aacute;m ph&aacute; hơn.</p>\r\n\r\n<hr />\r\n<p><img alt=\"\" sizes=\"(max-width: 1000px) 100vw, 1000px\" src=\"https://i1.wp.com/cdn.vietgame.asia/wp-content/uploads/20200319111313/ori-and-the-will-of-the-wisps-danh-gia-game-7.jpg?ssl=1\" srcset=\"https://cdn.vietgame.asia/wp-content/uploads/20200319111313/ori-and-the-will-of-the-wisps-danh-gia-game-7.jpg 1920w, https://cdn.vietgame.asia/wp-content/uploads/20200319111313/ori-and-the-will-of-the-wisps-danh-gia-game-7.jpg 500w, https://cdn.vietgame.asia/wp-content/uploads/20200319111313/ori-and-the-will-of-the-wisps-danh-gia-game-7.jpg 1140w, https://cdn.vietgame.asia/wp-content/uploads/20200319111313/ori-and-the-will-of-the-wisps-danh-gia-game-7.jpg 768w, https://cdn.vietgame.asia/wp-content/uploads/20200319111313/ori-and-the-will-of-the-wisps-danh-gia-game-7.jpg 1536w\" /></p>\r\n\r\n<h3>CẠM BẪY V&Agrave; NGUY HIỂM</h3>\r\n\r\n<p>Về mặt h&igrave;nh ảnh v&agrave; &acirc;m thanh,&nbsp;<em><strong>Ori and the Will of the Wisps</strong></em>&nbsp;đ&atilde; kh&ocirc;ng khiến người h&acirc;m mộ thất vọng trong việc truyền tải, vậy c&ograve;n lối chơi của game th&igrave; sao?</p>\r\n\r\n<p>May mắn thay, những ưu điểm của phi&ecirc;n bản trước đ&oacute; được game ph&aacute;t huy tối đa, c&ograve;n những khuyết điểm th&igrave; được &ldquo;sửa&rdquo; một c&aacute;ch kĩ lưỡng.</p>\r\n\r\n<p>Lối chơi của game c&oacute; hai nh&acirc;n tố ch&iacute;nh l&agrave; phần &ldquo;platforming&rdquo; &ndash; đi cảnh v&agrave; chiến đấu, v&agrave; game y&ecirc;u cầu người chơi phải thuần thục v&agrave; ch&iacute;nh x&aacute;c trong cả hai nh&acirc;n tố đ&oacute;.</p>\r\n\r\n<p>Trước ti&ecirc;n, h&atilde;y n&oacute;i về đi cảnh &ndash; platforming.</p>\r\n\r\n<p>Tương tự với phần đầu, phần di chuyển của game vẫn rất phức tạp, nhưng giờ được th&ecirc;m nhiều kĩ năng mới, bao gồm Grapple &ndash; Ori tung ra một sợi d&acirc;y v&agrave; &ldquo;k&eacute;o&rdquo; m&igrave;nh về ph&iacute;a những mục ti&ecirc;u định trước, Dash &ndash; Ori ph&oacute;ng m&igrave;nh về ph&iacute;a trước một khoảng d&agrave;i, kể cả ở tr&ecirc;n kh&ocirc;ng trung, Glide &ndash; lượn tr&ecirc;n kh&ocirc;ng v&agrave; Burrow &ndash; Ori đ&agrave;o một đường hầm xuống l&ograve;ng đất v&agrave; li&ecirc;n tục di chuyển về ph&iacute;a trước.</p>\r\n\r\n<p>Tất cả những kĩ năng n&agrave;y kết hợp c&ugrave;ng với những kĩ năng đ&atilde; c&oacute; từ bản đầu như Bash, nhảy đ&uacute;p&hellip; khiến cho giờ đ&acirc;y sự đa dạng của c&aacute;c c&acirc;u đố đi cảnh được n&acirc;ng l&ecirc;n một tầm cao mới.</p>\r\n\r\n<p>To&agrave;n bộ c&aacute;c kĩ năng cần thiết m&agrave; người chơi cần để tịnh tiến trong game thường sẽ được &ldquo;mở kh&oacute;a&rdquo; trong 4 tiếng đầu chơi game, sau đ&oacute; sẽ c&oacute; một số kĩ năng nhất định m&agrave; bạn phải tới một &ldquo;v&ugrave;ng&rdquo; nhất định mới c&oacute;.</p>\r\n\r\n<p>Từ đ&oacute; khiến cho việc di chuyển từ nơi A đến nơi B của&nbsp;<strong><em>Ori and the Will of the Wisps&nbsp;</em></strong>thực sự th&uacute; vị.</p>\r\n\r\n<p><img alt=\"\" sizes=\"(max-width: 1000px) 100vw, 1000px\" src=\"https://i2.wp.com/cdn.vietgame.asia/wp-content/uploads/20200319111328/ori-and-the-will-of-the-wisps-danh-gia-game-8.jpg?ssl=1\" srcset=\"https://cdn.vietgame.asia/wp-content/uploads/20200319111328/ori-and-the-will-of-the-wisps-danh-gia-game-8.jpg 1920w, https://cdn.vietgame.asia/wp-content/uploads/20200319111328/ori-and-the-will-of-the-wisps-danh-gia-game-8.jpg 500w, https://cdn.vietgame.asia/wp-content/uploads/20200319111328/ori-and-the-will-of-the-wisps-danh-gia-game-8.jpg 1140w, https://cdn.vietgame.asia/wp-content/uploads/20200319111328/ori-and-the-will-of-the-wisps-danh-gia-game-8.jpg 768w, https://cdn.vietgame.asia/wp-content/uploads/20200319111328/ori-and-the-will-of-the-wisps-danh-gia-game-8.jpg 1536w\" /></p>\r\n\r\n<p>Hiếm khi n&agrave;o người chơi phải kết hợp to&agrave;n bộ kĩ năng lại với nhau, nhưng việc di chuyển b&igrave;nh thường cũng đ&ocirc;i l&uacute;c khiến người chơi đau đầu &ldquo;x&acirc;u chuỗi&rdquo; những ph&acirc;n đoạn kết hợp kĩ năng lại, tuy nhi&ecirc;n ch&uacute;ng cũng xen kẽ k&egrave;m theo những ph&acirc;n đoạn đầy ch&ocirc;ng gai (theo nghĩa đen!) y&ecirc;u cầu người chơi phải nghĩ thật nhanh để c&oacute; thể kết hợp những kĩ năng đ&oacute; một c&aacute;ch ch&iacute;nh x&aacute;c để c&oacute; thể vượt qua.</p>\r\n\r\n<p>Cao tr&agrave;o nhất l&agrave; những ph&acirc;n đoạn rượt đuổi căng thẳng giữa Ori v&agrave; tr&ugrave;m, y&ecirc;u cầu người chơi phải phản ứng nhanh trong việc x&acirc;u chuỗi kĩ năng, khiến những m&agrave;n rượt đuổi n&agrave;y trở th&agrave;nh một b&agrave;i kiểm tra kĩ năng của người chơi, y&ecirc;u cầu họ phải nghĩ nhanh, phản ứng thật nhanh v&agrave; ch&iacute;nh x&aacute;c, như phần của lại của game, nhưng giờ đ&acirc;y dưới &acirc;m nhạc dồn dập v&agrave; một con qu&aacute;i vật khổng lồ rượt theo!</p>\r\n\r\n<p>điểm s&aacute;ng lớn nhất của&nbsp;<em><strong>Ori and the Will of the Wisps</strong></em>&nbsp;lại l&agrave; những m&agrave;n đấu tr&ugrave;m</p>\r\n\r\n<p>Một trong những ph&agrave;n n&agrave;n thường thấy về phi&ecirc;n bản&nbsp;<em>Ori and the Blind Forest</em>&nbsp;l&agrave; dường như cơ chế chiến đấu v&agrave; kẻ th&ugrave; của game c&oacute; phần nhạt nh&ograve;a qu&aacute;, dường như nghe được điều n&agrave;y, Moon Studio đ&atilde; biến hậu bản trở th&agrave;nh một tựa game&nbsp;<em>Castlevania</em>&nbsp;ch&iacute;nh hiệu dưới phong c&aacute;ch của ri&ecirc;ng họ, khi giờ đ&acirc;y, chiến đấu được đầu tư kĩ lưỡng kh&ocirc;ng k&eacute;m g&igrave; c&aacute;c tựa game phong c&aacute;ch Metroidvania kh&aacute;c hiện nay.</p>\r\n\r\n<p>Điểm đổi mới đầu ti&ecirc;n l&agrave; giờ đ&acirc;y người chơi được cung cấp rất nhiều,&hellip; vũ kh&iacute;!</p>\r\n\r\n<p>Từ thanh gươm &aacute;nh s&aacute;ng Spirit Edge, tới ngọn gi&aacute;o Spike, hay sự trở lại của ch&uacute; tinh linh bắn ra những tia s&aacute;ng khi đi c&ugrave;ng Ori&hellip;</p>\r\n\r\n<p><img alt=\"Will of the Wisps\" sizes=\"(max-width: 1000px) 100vw, 1000px\" src=\"https://i1.wp.com/cdn.vietgame.asia/wp-content/uploads/20200319111352/ori-and-the-will-of-the-wisps-danh-gia-game.jpg?ssl=1\" srcset=\"https://cdn.vietgame.asia/wp-content/uploads/20200319111352/ori-and-the-will-of-the-wisps-danh-gia-game.jpg 1600w, https://cdn.vietgame.asia/wp-content/uploads/20200319111352/ori-and-the-will-of-the-wisps-danh-gia-game.jpg 500w, https://cdn.vietgame.asia/wp-content/uploads/20200319111352/ori-and-the-will-of-the-wisps-danh-gia-game.jpg 1140w, https://cdn.vietgame.asia/wp-content/uploads/20200319111352/ori-and-the-will-of-the-wisps-danh-gia-game.jpg 768w, https://cdn.vietgame.asia/wp-content/uploads/20200319111352/ori-and-the-will-of-the-wisps-danh-gia-game.jpg 1536w\" /></p>\r\n\r\n<p>Những vũ kh&iacute; n&agrave;y được cung cấp cho người chơi th&ocirc;ng qua c&aacute;c Spirit Tree hoặc người chơi mua bằng điểm spirit ở một NPC c&oacute; t&ecirc;n l&agrave; Opher, v&agrave; người chơi được chọn tối đa 3 kĩ năng một lần.</p>\r\n\r\n<p>Sở dĩ bộ kĩ năng của Ori được trau chuốt đến như vậy v&igrave; thiết kế kẻ th&ugrave; của game đ&atilde; được n&acirc;ng tầm l&ecirc;n rất nhiều.</p>\r\n\r\n<p>Kẻ th&ugrave; trong game rất nhiều v&agrave; rất hung h&atilde;n, ch&uacute;ng sẽ lao đến, nhảy l&ecirc;n hoặc bay tới chỗ Ori li&ecirc;n tục, y&ecirc;u cầu người chơi phải nghĩ nhanh giữa việc sử dụng những kĩ năng điều khiển đ&aacute;m đ&ocirc;ng, hoặc c&oacute; tầm xa hoặc s&aacute;t thương cao để xử l&yacute; những kẻ th&ugrave; n&agrave;y, cộng th&ecirc;m việc hầu hết c&aacute;c kĩ năng di chuyển của game đều c&oacute; thể &aacute;p dụng v&agrave;o chiến đấu một c&aacute;ch ho&agrave;n hảo, như Bash để biến đ&ograve;n đ&aacute;nh của kẻ th&ugrave; th&agrave;nh một vũ kh&iacute; của Ori, hay Dash để n&eacute; khỏi nguy hiểm.</p>\r\n\r\n<p>Cơ chế chiến đấu trong game thực sự c&oacute; chiều s&acirc;u v&agrave; khiến người viết h&agrave;o hứng với mọi cuộc đụng độ, v&igrave; đ&acirc;y l&agrave; những thử th&aacute;ch thực sự y&ecirc;u cầu người chơi phải linh hoạt v&agrave; thuần thục trong việc sử dụng v&agrave; kết hợp kĩ năng chiến đấu, c&ugrave;ng với việc tung hứng giữa c&aacute;c kĩ năng di chuyển</p>\r\n\r\n<p><img alt=\"\" sizes=\"(max-width: 1000px) 100vw, 1000px\" src=\"https://i0.wp.com/cdn.vietgame.asia/wp-content/uploads/20200319111413/ori-and-the-will-of-the-wisps-danh-gia-game-1.jpg?ssl=1\" srcset=\"https://cdn.vietgame.asia/wp-content/uploads/20200319111413/ori-and-the-will-of-the-wisps-danh-gia-game-1.jpg 1920w, https://cdn.vietgame.asia/wp-content/uploads/20200319111413/ori-and-the-will-of-the-wisps-danh-gia-game-1.jpg 500w, https://cdn.vietgame.asia/wp-content/uploads/20200319111413/ori-and-the-will-of-the-wisps-danh-gia-game-1.jpg 1140w, https://cdn.vietgame.asia/wp-content/uploads/20200319111413/ori-and-the-will-of-the-wisps-danh-gia-game-1.jpg 768w, https://cdn.vietgame.asia/wp-content/uploads/20200319111413/ori-and-the-will-of-the-wisps-danh-gia-game-1.jpg 1536w\" /></p>\r\n\r\n<p>Tuy nhi&ecirc;n, điểm s&aacute;ng lớn nhất của&nbsp;<em><strong>Ori and the</strong></em>&nbsp;<em><strong>Will of the Wisps</strong></em>&nbsp;lại l&agrave; những m&agrave;n đấu tr&ugrave;m.</p>\r\n\r\n<p>Những con tr&ugrave;m to lớn chiếm nửa m&agrave;n h&igrave;nh với v&ocirc; số đ&ograve;n đ&aacute;nh &ldquo;hủy diệt&rdquo; thực sự mới l&agrave; thử th&aacute;ch kh&oacute; nhằn, với sự thuần thục trong việc kết hợp kĩ năng chiến đấu của người chơi, cũng như c&aacute;c m&agrave;n tr&ugrave;m rượt đuổi l&agrave; thử th&aacute;ch số một trong việc kết hợp kĩ năng di chuyển vậy.</p>\r\n\r\n<p>Tất cả ch&uacute;ng, đều c&oacute; một bộ kĩ năng hết sức đặc trưng!</p>\r\n\r\n<hr />\r\n<p><img alt=\"\" sizes=\"(max-width: 1000px) 100vw, 1000px\" src=\"https://i2.wp.com/cdn.vietgame.asia/wp-content/uploads/20200319111427/ori-and-the-will-of-the-wisps-danh-gia-game-2.jpg?ssl=1\" srcset=\"https://cdn.vietgame.asia/wp-content/uploads/20200319111427/ori-and-the-will-of-the-wisps-danh-gia-game-2.jpg 1920w, https://cdn.vietgame.asia/wp-content/uploads/20200319111427/ori-and-the-will-of-the-wisps-danh-gia-game-2.jpg 500w, https://cdn.vietgame.asia/wp-content/uploads/20200319111427/ori-and-the-will-of-the-wisps-danh-gia-game-2.jpg 1140w, https://cdn.vietgame.asia/wp-content/uploads/20200319111427/ori-and-the-will-of-the-wisps-danh-gia-game-2.jpg 768w, https://cdn.vietgame.asia/wp-content/uploads/20200319111427/ori-and-the-will-of-the-wisps-danh-gia-game-2.jpg 1536w\" /></p>\r\n\r\n<h3>N&Agrave;O TA C&Ugrave;NG KH&Aacute;M PH&Aacute;!</h3>\r\n\r\n<p>V&igrave; l&agrave; một game theo phong c&aacute;ch Metroidvania, n&ecirc;n việc kh&aacute;m ph&aacute; trong&nbsp;<strong><em>Ori and the Will of the Wisps&nbsp;</em></strong>đ&oacute;ng vai tr&ograve; hết sức quan trọng, người chơi sẽ phải li&ecirc;n tục đi t&igrave;m những n&acirc;ng cấp cho nh&acirc;n vật cũng như &ldquo;phần thưởng&rdquo; được bố tr&iacute; rải r&aacute;c khắp bản đồ.</p>\r\n\r\n<p>Vậy điều đ&oacute; ảnh hưởng đến nhịp độ game ra sao?</p>\r\n\r\n<p>Người viết rất vui khi được n&oacute;i với c&aacute;c bạn rằng nhịp độ của game l&agrave; HO&Agrave;N HẢO!</p>\r\n\r\n<p>Một trong những điều kh&ocirc;ng ưng &yacute; lớn nhất của người viết thường thấy với game c&oacute; phong c&aacute;ch &ldquo;metroidvania&rdquo;: nhịp game thường bị hẫng đi mỗi khi người chơi muốn kh&aacute;m ph&aacute; lại một khu vực cũ.</p>\r\n\r\n<p>Việc n&agrave;y xảy ra trong Ori kh&aacute; nhiều, nhưng lần n&agrave;y, với bộ kĩ năng kh&aacute; phức tạp, cộng th&ecirc;m nh&agrave; ph&aacute;t triển &ldquo;đo&aacute;n&rdquo; được hướng đi kh&aacute;m ph&aacute; lại của người chơi n&ecirc;n họ đ&atilde; đặt những lối đi cực k&igrave; tinh tế l&agrave;m cho nhịp độ game kh&ocirc;ng bao giờ bị hẫng, những ph&acirc;n kh&uacute;c tr&ugrave;m/cao tr&agrave;o được giữ nhịp v&agrave; x&acirc;y dựng phải n&oacute;i l&agrave; ho&agrave;n hảo, khiến cảm gi&aacute;c h&agrave;o hứng sau mỗi ph&acirc;n đoạn kh&aacute;m ph&aacute;/chiến đấu của người viết kh&ocirc;ng bao giờ bị &ldquo;nhạt nh&ograve;a&rdquo; khi chơi game.</p>\r\n\r\n<p>Nh&agrave; ph&aacute;t triển game thực sự &yacute; thức được người chơi muốn l&agrave;m g&igrave; v&agrave; sẽ l&agrave;m g&igrave; chứ kh&ocirc;ng bỏ c&aacute;c phần thưởng rải r&aacute;c cho c&oacute;.&nbsp;&nbsp;</p>\r\n\r\n<p>C&ugrave;ng với việc game &ldquo;th&ecirc;m&rdquo; một nh&acirc;n vật mới c&oacute; t&ecirc;n Lupo, người sẽ &ldquo;b&aacute;n&rdquo; cho Ori những tấm bản đồ của khu vực đ&oacute; c&agrave;ng khiến cho sự kh&aacute;m ph&aacute; của game như dễ d&agrave;ng hơn.</p>\r\n\r\n<p>nhịp độ game kh&ocirc;ng bao giờ bị hẫng, những ph&acirc;n kh&uacute;c tr&ugrave;m/cao tr&agrave;o được giữ nhịp v&agrave; x&acirc;y dựng phải n&oacute;i l&agrave; ho&agrave;n hảo</p>', '240000', 'ori_53.jpg', 0, NULL, NULL);
INSERT INTO `tbl_product` (`product_id`, `category_id`, `publisher_id`, `product_name`, `product_content`, `product_price`, `product_image`, `product_status`, `created_at`, `updated_at`) VALUES
(23, 4, 5, 'Naruto Shippuden: Ultimate Ninja Storm 4', '<p>Sau hơn một năm kể từ khi Bandai Namco ch&iacute;nh thức x&aacute;c nhận đang ph&aacute;t triển &quot;Naruto Storm 4&quot; th&igrave; cuối c&ugrave;ng, người h&acirc;m mộ cũng đ&atilde; thỏa niềm mong ước khi được trải nghiệm phi&ecirc;n bản kết th&uacute;c chuyến phi&ecirc;u lưu c&ograve;n đang dang dở của Naruto. Liệu đ&acirc;y c&oacute; phải l&agrave; một kết th&uacute;c c&oacute; hậu đối với series gần 10 năm tuổi n&agrave;y?</p>\r\n\r\n<p><a href=\"javascript:void();\"><img alt=\"Đánh giá - Naruto Shippuden: Ultimate Ninja Storm 4: Truyền kỳ về một Ninja\" src=\"https://image.thanhnien.vn/660/uploaded/game/upload/image/article/2016/02/15/306d422856f5f803b4017c02c003c164.jpg\" /></a></p>\r\n\r\n<p>[mecloud]WGV6Nxl0hD[/mecloud]</p>\r\n\r\n<p><em>Boruto v&agrave; Sadara, 2 nh&acirc;n vật độc quyền d&agrave;nh cho c&aacute;c game thủ đặt trước game</em></p>\r\n\r\n<ul>\r\n	<li>Ph&aacute;t triển: CyberConnect2</li>\r\n	<li>Ph&aacute;t h&agrave;nh: Bandai Namco Games</li>\r\n	<li>Ng&agrave;y ph&aacute;t h&agrave;nh: 5.2.2016</li>\r\n	<li>Thể loại: Đối kh&aacute;ng</li>\r\n	<li>Hệ m&aacute;y: PC, Xbox One v&agrave; PS4</li>\r\n</ul>\r\n\r\n<p><em>*Game được Thanh Ni&ecirc;n Game trải nghiệm tr&ecirc;n hệ m&aacute;y PS4*</em></p>\r\n\r\n<p>Trước đ&oacute;, Bandai Namco đ&atilde; ra mắt phi&ecirc;n bản&nbsp;<em><strong><a href=\"http://game.thanhnien.com.vn/bai-viet/2014/08/13/naruto-shippuden-ban-pc-an-dinh-ngay-ra-mat.3039.html\" rel=\"\" target=\"_blank\">Naruto Shippuden: Ultimate Ninja Storm Revolution</a></strong></em>&nbsp;v&agrave;o cuối năm 2014 nhưng kh&ocirc;ng th&agrave;nh c&ocirc;ng như mong đợi. Thậm ch&iacute; nhiều người c&ograve;n cho rằng tựa game n&agrave;y được l&agrave;m ra với mục đ&iacute;ch duy nhất l&agrave; để &quot;m&oacute;c v&iacute;&quot; người h&acirc;m mộ.</p>\r\n\r\n<p>Tuy nhi&ecirc;n, bỏ qua mọi ấn tượng xấu từ bản 2014, c&aacute;c fan của anh ch&agrave;ng ninja &quot;lắm lời&quot; Naruto vẫn rất mong chờ v&agrave; kỳ vọng v&agrave;o phần mới nhất:<em>&nbsp;Naruto Shippuden: Ultimate Ninja Storm 4.&nbsp;</em>Nhất l&agrave; sau khi đ&atilde; được&nbsp;<a href=\"http://game.thanhnien.vn/tags/CyberConnect2_t2981.html\" rel=\"\" target=\"_blank\">CyberConnect2</a>&nbsp;hứa hẹn đem tới những trận đ&aacute;nh tr&ugrave;m (boss) v&ocirc; c&ugrave;ng ho&agrave;nh tr&aacute;ng trong Story Mode (phần chơi theo cốt truyện).</p>\r\n\r\n<h3>Cốt truyện hay, nhưng chưa c&oacute; nhiều đổi mới</h3>\r\n\r\n<p>Cốt truyện trong game tiếp nối cuộc đại chiến ninja lần thứ 4 c&ograve;n đang dang dở ở phi&ecirc;n bản&nbsp;<em>Naruto Shippuden: Ultimate Ninja Storm 3</em>&nbsp;ra mắt 2013.</p>\r\n\r\n<p>Phần chơi n&agrave;y được chia l&agrave;m 5 chương ch&iacute;nh, nối tiếp nhau theo tr&igrave;nh tự thời gian. Khi chơi cốt truyện ch&iacute;nh, bạn sẽ đồng thời gặp một số nhiệm vụ phụ, kh&ocirc;ng ảnh hưởng nhiều tới mạch truyện nhưng ch&uacute;ng đều chứa đựng những g&oacute;c nh&igrave;n kh&aacute;c rất th&uacute; vị về cuộc chiến của một số nh&acirc;n vật trong Naruto.</p>\r\n\r\n<p><a href=\"http://st.game.thanhnien.vn/image/777/2016/nhatanh/NARUTO%20SHIPPUDEN%E2%84%A2_%20Ultimate%20Ninja%C2%AE%20STORM%204_20160214095754.jpg\" rel=\"\"><img alt=\"Đánh giá - Naruto Shippuden: Ultimate Ninja Storm 4: Truyền kỳ về một Ninja - ảnh 1\" height=\"338\" src=\"https://image.thanhnien.vn/660/uploaded/game/st.game.thanhnien.vn/image/777/2016/nhatanh/naruto%20shippuden%e2%84%a2_%20ultimate%20ninja%c2%ae%20storm%204_20160214095754.jpg\" width=\"600\" /></a></p>\r\n\r\n<p>Đ&uacute;ng như những g&igrave; CyberConnect2 đ&atilde; hứa hẹn từ trước,&nbsp;<em>Naruto Shippuden: Ultimate Ninja Storm 4&nbsp;</em>thực sự đ&atilde; mang đến một phần chơi cốt truyện rất c&oacute; đầu tư v&agrave; được chăm ch&uacute;t một c&aacute;ch kĩ c&agrave;ng.</p>\r\n\r\n<p>Những trận đấu boss m&atilde;n nh&atilde;n khi kết hợp phong c&aacute;ch đ&aacute;nh đối kh&aacute;ng chủ đạo b&ecirc;n cạnh những trường đoạn Quick Time Events (ấn ph&iacute;m theo ngữ cảnh) - vốn đ&atilde; l&agrave; thương hiệu của d&ograve;ng game vẫn lu&ocirc;n đem đến một trải nghiệm tuyệt vời cho người chơi.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><a href=\"http://st.game.thanhnien.vn/image/777/2016/nhatanh/NARUTO%20SHIPPUDEN%E2%84%A2_%20Ultimate%20Ninja%C2%AE%20STORM%204_20160214091026.jpg\" rel=\"\"><img alt=\"Đánh giá - Naruto Shippuden: Ultimate Ninja Storm 4: Truyền kỳ về một Ninja - ảnh 2\" height=\"338\" src=\"https://image.thanhnien.vn/660/uploaded/game/st.game.thanhnien.vn/image/777/2016/nhatanh/naruto%20shippuden%e2%84%a2_%20ultimate%20ninja%c2%ae%20storm%204_20160214091026.jpg\" width=\"600\" /></a></p>\r\n\r\n<p>Hơi tiếc một ch&uacute;t khi game c&oacute; sự đầu tư v&agrave; chuẩn bị kỹ c&agrave;ng hơn phi&ecirc;n bản tiền nhiệm, nhưng CyberConnect2 vẫn chưa thể đem lại cảm gi&aacute;c mới lạ tới cho phần cốt truyện. To&agrave;n bộ những sự kiện trong game được &quot;b&ecirc;&quot; nguy&ecirc;n xi từ bộ manga c&ugrave;ng t&ecirc;n s&aacute;ng t&aacute;c bởi t&aacute;c giả&nbsp;Kishimoto Masashi, nếu c&oacute; th&ecirc;m phần ngoại truyện như một tựa kh&aacute;c của của Bandai Namco l&agrave;&nbsp;<a href=\"http://game.thanhnien.vn/game-offline/Danh-gia-Dragon-Ball-Xenoverse-Chinh-sua-dong-thoi-gian-6319.html\" rel=\"\" target=\"_blank\"><em>Dragon Ball Xenoverse</em></a>&nbsp;chẳng hạn, th&igrave; game sẽ c&ograve;n tuyệt vời hơn nữa.</p>\r\n\r\n<h3>Lối chơi với nhiều cải tiến th&uacute; vị</h3>\r\n\r\n<p>Vẫn mang trong m&igrave;nh một cơ chế chiến đấu đơn giản, dễ l&agrave;m quen đối với người mới nhưng v&ocirc; c&ugrave;ng kh&oacute; để &quot;master&quot; c&aacute;c kỹ năng n&agrave;y,&nbsp;<a href=\"http://game.thanhnien.vn/game-offline/Chiem-nguong-tran-thu-hung-giua-Rin-va-Obito-trong-Ultimate-Ninja-Storm-4-12677.html\" rel=\"\" target=\"_blank\"><em>Naruto Shippuden: Ultimate Ninja Storm 4&nbsp;</em></a>dễ d&agrave;ng thu h&uacute;t người chơi với những đ&ograve;n đ&aacute;nh đẹp mắt, kết hợp c&ugrave;ng những đ&ograve;n thế &quot;ninjutsu&quot; v&ocirc; c&ugrave;ng &quot;ngầu&quot;.</p>\r\n\r\n<p><a href=\"http://st.game.thanhnien.vn/image/777/2016/nhatanh/20160221012503.jpg\" rel=\"\"><img alt=\"Đánh giá - Naruto Shippuden: Ultimate Ninja Storm 4: Truyền kỳ về một Ninja - ảnh 3\" height=\"338\" src=\"https://image.thanhnien.vn/660/uploaded/game/st.game.thanhnien.vn/image/777/2016/nhatanh/20160221012503.jpg\" width=\"600\" /></a></p>\r\n\r\n<p><em>Những pha Ninjutsu trong game rất đ&atilde; mắt.</em></p>\r\n\r\n<p>B&ecirc;n cạnh những cơ chế quen thuộc từ bản trước như Ultimate Jutsu Team, Counter Attack.... phi&ecirc;n bản lần n&agrave;y c&ograve;n c&oacute; th&ecirc;m những cải tiến mới rất đ&aacute;ng ch&uacute; &yacute;, đặc biệt nhất l&agrave; khả năng Link&nbsp;Awakening v&agrave; Change Team Leader.</p>\r\n\r\n<p>Với Link Awakening (chỉ sử dụng được trong phần đấu team), người chơi giờ đ&acirc;y kh&ocirc;ng những một, m&agrave; c&oacute; thể h&oacute;a &quot;chaos&quot; cho to&agrave;n bộ c&aacute;c nh&acirc;n vật m&agrave; m&igrave;nh đ&atilde; chọn. Thử tưởng tượng ba nh&acirc;n vật bạn chọn l&agrave; Sasuke, Itachi v&agrave; Shisui, c&ugrave;ng với Link Awakening được k&iacute;ch hoạt th&igrave; giờ đ&acirc;y bạn sẽ c&oacute; tr&ecirc;n s&acirc;n.... 3 con Susanoo thay phi&ecirc;n nhau &quot;gi&atilde;&quot; đối thủ ra b&atilde;.</p>\r\n\r\n<p><a href=\"http://st.game.thanhnien.vn/image/777/2016/nhatanh/naruto5.jpg\" rel=\"\"><img alt=\"Đánh giá - Naruto Shippuden: Ultimate Ninja Storm 4: Truyền kỳ về một Ninja - ảnh 4\" height=\"338\" src=\"https://image.thanhnien.vn/660/uploaded/game/st.game.thanhnien.vn/image/777/2016/nhatanh/naruto5.jpg\" width=\"600\" /></a></p>\r\n\r\n<p><em>3 &quot;anh&quot; Susanoo đứng trước mặt thế n&agrave;y c&ograve;n muốn &quot;chiến&quot; nữa kh&ocirc;ng Madara?</em></p>\r\n\r\n<p>Đến với cơ chế Change Team Leader, bạn sẽ kh&ocirc;ng c&ograve;n bị g&oacute;i gọn v&agrave;o việc điều khiển duy nhất một nh&acirc;n vật ch&iacute;nh tr&ecirc;n s&acirc;n c&ugrave;ng tối đa hai nh&acirc;n vật hỗ trợ nữa. Ngược lại, bạn sẽ ho&agrave;n to&agrave;n được tự do, thoải m&aacute;i lu&acirc;n chuyển cả ba nh&acirc;n vật n&agrave;y c&ugrave;ng l&uacute;c sao cho ph&ugrave; hợp với ho&agrave;n cảnh của trận đấu.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><a href=\"http://st.game.thanhnien.vn/image/777/2016/nhatanh/20160221013101(1).jpg\" rel=\"\"><img alt=\"Đánh giá - Naruto Shippuden: Ultimate Ninja Storm 4: Truyền kỳ về một Ninja - ảnh 5\" height=\"338\" src=\"https://image.thanhnien.vn/660/uploaded/game/st.game.thanhnien.vn/image/777/2016/nhatanh/20160221013101(1).jpg\" width=\"600\" /></a></p>\r\n\r\n<p>Ngo&agrave;i ra, CyberConnect2 cũng mang trở lại kỹ năng &quot;combat tr&ecirc;n tường&quot; vốn bị lược bỏ đi một c&aacute;ch kh&oacute; hiểu từ bản<em>&nbsp;<em><em>Ultimate Ninja Storm 3.</em></em></em></p>\r\n\r\n<p>[mecloud]OI9Tu98UbF[/mecloud]</p>\r\n\r\n<p><em><em>Gameplay hấp dẫn của&nbsp;Naruto Shippuden: Ultimate Ninja Storm 4</em></em></p>\r\n\r\n<h3>&Acirc;m thanh tuyệt vời, đồ họa kh&ocirc;ng nhiều thay đổi</h3>\r\n\r\n<p>Nếu c&aacute;c bạn l&agrave; những fan gạo cội của bộ anime Naruto Shippuden, th&igrave; chắc chắn kh&ocirc;ng lạ g&igrave; với những bản nhạc tuyệt vời, thực sự để lại cảm x&uacute;c s&acirc;u nặng trong l&ograve;ng người nghe của bộ series n&agrave;y.</p>\r\n\r\n<p>Với<a href=\"http://game.thanhnien.vn/game-offline/Xem-Boruto-chien-dau-trong-Naruto-Shippuden-Ultimate-Ninja-Storm-4-12382.html\" rel=\"\" target=\"_blank\">&nbsp;<em>Naruto Shippuden: Ultimate Ninja Storm 4&nbsp;</em></a>cũng vậy. C&aacute;c đoạn nhạc trong game được lồng gh&eacute;p một c&aacute;ch kh&eacute;o l&eacute;o, ph&ugrave; hợp với bối cảnh v&agrave; từng trường đoạn của tr&ograve; chơi.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><a href=\"http://st.game.thanhnien.vn/image/777/2016/nhatanh/naruto1.jpg\" rel=\"\"><img alt=\"Đánh giá - Naruto Shippuden: Ultimate Ninja Storm 4: Truyền kỳ về một Ninja - ảnh 6\" height=\"338\" src=\"https://image.thanhnien.vn/660/uploaded/game/st.game.thanhnien.vn/image/777/2016/nhatanh/naruto1.jpg\" width=\"600\" /></a></p>\r\n\r\n<p>Mảng đồ họa của game gần như kh&ocirc;ng c&oacute; nhiều kh&aacute;c biệt so với c&aacute;c phi&ecirc;n bản trước. Đặc biệt l&agrave; trong c&aacute;c cảnh phim, hoạt động v&agrave; cử động của nh&acirc;n vật đ&ocirc;i khi c&ograve;n bị cứng, dễ g&acirc;y kh&oacute; chịu cho người chơi. Nguy&ecirc;n do ch&iacute;nh c&oacute; lẽ l&agrave; bởi CyberConnect2 muốn giữ nguy&ecirc;n được c&aacute;i chất anime - vốn cũng đ&atilde; th&agrave;nh thương hiệu của d&ograve;ng game.</p>\r\n\r\n<h3>Hệ thống m&aacute;y chủ tệ hại</h3>\r\n\r\n<p>Nếu bạn đọc c&oacute; &yacute; định mua tựa game n&agrave;y về với mục đ&iacute;ch ....&quot;củ h&agrave;nh&quot; c&aacute;c game thủ nước ngo&agrave;i th&igrave; n&ecirc;n sớm từ bỏ mong muốn đ&oacute; đi. Bản th&acirc;n người viết mặc d&ugrave; đang sở hữu đường truyền tương đối ổn định (với g&oacute;i cước 30mbs) nhưng vẫn kh&ocirc;ng tr&aacute;nh khỏi c&aacute;c t&igrave;nh huống game bị &quot;delay&quot; đến mức g&acirc;y kh&oacute; chịu v&agrave; kh&ocirc;ng thể chơi nổi.</p>\r\n\r\n<p><a href=\"http://st.game.thanhnien.vn/image/777/2016/nhatanh/naruto4.jpg\" rel=\"\"><img alt=\"Đánh giá - Naruto Shippuden: Ultimate Ninja Storm 4: Truyền kỳ về một Ninja - ảnh 7\" height=\"338\" src=\"https://image.thanhnien.vn/660/uploaded/game/st.game.thanhnien.vn/image/777/2016/nhatanh/naruto4.jpg\" width=\"600\" /></a></p>\r\n\r\n<p><em>C&aacute;c trận đấu trong chế độ online g&acirc;y kh&oacute; chịu v&igrave; hệ thống m&aacute;y chủ &quot;lởm&quot;.</em></p>\r\n\r\n<p>Hi vọng rằng trong tương lai,&nbsp;<a href=\"http://game.thanhnien.vn/tags/CyberConnect2_t2981.html\" rel=\"\" target=\"_blank\">CyberConnect2</a>&nbsp;sẽ cải thiện được hệ thống m&aacute;y chủ - vốn đang l&agrave; điểm yếu lớn nhất của họ từ xưa tới nay.</p>\r\n\r\n<h3>Bản &quot;port&quot; l&ecirc;n PC si&ecirc;u &quot;lởm&quot;</h3>\r\n\r\n<p>Trong khi c&aacute;c game thủ tr&ecirc;n console c&oacute; lẽ đ&atilde; cảm thấy &quot;ấm l&ograve;ng&quot; với phi&ecirc;n bản của m&igrave;nh th&igrave; ngược lại, người d&ugrave;ng PC c&oacute; l&iacute; do để cảm thấy m&igrave;nh đang bị đối xử một c&aacute;ch rất bất c&ocirc;ng. Thật vậy, tr&ograve; chơi gặp vấn đề về khung h&igrave;nh ngay cả với những chiếc PC tầm kh&aacute;; nhiều người chơi cho biết rằng, mỗi lần đến c&aacute;c cảnh phim l&agrave; số khung h&igrave;nh (FPS) của họ lại tụt th&ecirc; thảm đến mức kh&ocirc;ng thể chơi nổi, thậm ch&iacute; c&ograve;n g&acirc;y... văng game hay bị khởi động lại m&aacute;y.</p>\r\n\r\n<p><a href=\"http://st.game.thanhnien.vn/image/777/2016/nhatanh/naruto.png\" rel=\"\"><img alt=\"Đánh giá - Naruto Shippuden: Ultimate Ninja Storm 4: Truyền kỳ về một Ninja - ảnh 8\" height=\"332\" src=\"https://image.thanhnien.vn/660/uploaded/game/st.game.thanhnien.vn/image/777/2016/nhatanh/naruto.png\" width=\"600\" /></a></p>\r\n\r\n<p><em>Tr&ograve; chơi bị xếp loại &quot;Mixed&quot; tr&ecirc;n Steam</em></p>\r\n\r\n<p>Điều đ&aacute;ng n&oacute;i ở đ&acirc;y l&agrave; trước khi<em>&nbsp;Naruto Shippuden: Ultimate Ninja Storm 4</em>&nbsp;được ph&aacute;t h&agrave;nh, đại diện của CyberConnect2 đ&atilde; khẳng định rằng họ sẽ l&agrave;m một bản r&agrave;nh ri&ecirc;ng cho người d&ugrave;ng PC chứ kh&ocirc;ng đơn thuần l&agrave; &quot;port&quot; từ console l&ecirc;n nữa. Nhưng xem ra, đ&acirc;y chỉ l&agrave; một lời n&oacute;i dối trắng trợn h&ograve;ng l&agrave;m y&ecirc;n l&ograve;ng c&aacute;c &quot;gamer&quot; PC m&agrave; th&ocirc;i.</p>\r\n\r\n<h3>Tổng kết</h3>\r\n\r\n<p>Mặc d&ugrave; vẫn c&ograve;n những &quot;hạt sạn&quot; kh&ocirc;ng đ&aacute;ng c&oacute; c&ugrave;ng một bản game tệ hại tr&ecirc;n PC, nhưng nh&igrave;n chung,<em>&nbsp;Naruto Shippuden: Ultimate Ninja Storm 4</em>&nbsp;vẫn l&agrave; tựa game tr&ecirc;n console đ&aacute;ng chơi nhất thời điểm qu&yacute; 1.2016. Game sẽ l&agrave; m&oacute;n ăn tinh thần kh&ocirc;ng thể thiếu d&agrave;nh cho c&aacute;c fan l&acirc;u năm của Naruto.</p>', '80000', 'Naruto_67.jpg', 0, NULL, NULL),
(24, 1, 1, 'AAA', '<p>asdsada</p>', '10000', '1_24.jpg', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_publisher`
--

CREATE TABLE `tbl_publisher` (
  `publisher_id` int(10) UNSIGNED NOT NULL,
  `publisher_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `publisher_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `publisher_status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_publisher`
--

INSERT INTO `tbl_publisher` (`publisher_id`, `publisher_name`, `publisher_desc`, `publisher_status`, `created_at`, `updated_at`) VALUES
(1, 'CD Projekt RED', 'CD Projekt S.A. là nhà phát triển, nhà phát hành và phân phối trò chơi video của Ba Lan có trụ sở tại Warsaw, được thành lập vào tháng 5 năm 1994 bởi Marcin Iwiński và Michał Kiciński.', 0, NULL, NULL),
(2, 'Riot Games', 'Riot Games là một hãng phát hành trò chơi điện tử Hoa Kỳ được thành lập năm 2006. Trụ sở chính của hãng ở Tây Los Angeles, California. Công ty còn có các trụ sở khác ở Berlin, Dublin, Hồng Kông, Istanbul, Mexico City, Moskva, New York, St. Louis, Santiago de Chile, São Paulo, Seoul, Thượng Hải, Singapore,TP.Hồ  Chí Minh', 0, NULL, NULL),
(3, 'SmileGate', 'Được dịch từ tiếng Anh-Smilegate là nhà phát triển và phát hành trò chơi video của Hàn Quốc, chuyên phát triển, xuất bản và dịch vụ trò chơi trực tuyến trên thiết bị di động và PC. Nó có năm lĩnh vực kinh doanh cốt lõi - phát triển trò chơi, xuất bản, nền tảng, đầu tư và đóng góp xã hội', 0, NULL, NULL),
(4, 'Capcom', 'Capcom Co., Ltd. là một công ty phát triển và phát hành trò chơi điện tử Nhật Bản được biết đến với việc tạo ra rất nhiều thương hiệu game bán chạy, bao gồm Street Fighter, Mega Man, Resident Evil, Devil May Cry, Ace Attorney, Monster Hunter, Dead Rising, Breath of Fire,', 0, NULL, NULL),
(5, 'Bandai Namco Entertainment', 'Bandai Namco Entertainment, Inc. là một nhà phát triển và phát hành trò chơi điện tử đa quốc gia của Nhật Bản, có trụ sở tại Minato, Tokyo. Các chi nhánh quốc tế của công ty, Bandai Namco Entertainment America và Bandai Namco Entertainment Europe, lần lượt có trụ sở tại Santa Clara, California và Lyon, Pháp.', 0, NULL, NULL),
(6, 'Mihoyo', 'miHoYo là một công ty chuyên sản xuất phần mềm trò chơi trên nhiều nền tảng khác nhau. miHoYo được thành lập bởi 3 sinh viên đến từ Đại học Jiao Tong, Thượng Hải. Công ty có trụ sở chính nằm ở Thượng Hải, Trung Quốc.', 0, NULL, NULL),
(7, 'Team Ninja', 'Được dịch từ tiếng Anh-Team Ninja là nhà phát triển trò chơi video của Nhật Bản và là một bộ phận của Koei Tecmo, được thành lập vào năm 1995 như một phần của Tecmo.', 0, NULL, NULL),
(8, 'EA Sports', 'Vampire', 0, NULL, NULL),
(9, 'Activision', 'Activision là một hãng phát hành và phát triển video game của Mỹ, phần lớn sở hữu bởi tập đoàn Pháp: Vivendi SA. Hiên tại tổng giám đốc và chủ tịch hội đồng quản trị là Bobby Kotick. Hãng được thành lập vào 1/10/1979 và trở thành hãng độc lập đầu tiên phát triển và phân phối trò chơi điện tử cho các hệ máy chơi game.', 0, NULL, NULL),
(10, 'Blizzard Entertainment', 'Blizzard Entertainment, Inc. một công ty phát triển và phát hành trò chơi điện tử của Mỹ được thành lập tháng 2 năm 1991 với tên Silicon & Synapse bởi ba cử nhân của UCLA, Michael Morhaime, Allen Adham và Frank Pearce', 0, NULL, NULL),
(11, 'Rockstar Games', 'Rockstar Games là nhà phát triển và phát hành video game đa quốc gia có trụ sở ở thành phố New York, sở hữu bởi Take-Two Interactive, sau khi Take-Two mua lại công ty phát hành game ở Anh là BMG Interactive.', 0, NULL, NULL),
(12, 'ustwo', 'Ustwo Fampany Limited là một studio phát triển phần mềm có trụ sở tại London tập trung vào thiết kế kỹ thuật số, như giao diện người dùng sạch sẽ và thanh lịch.', 0, NULL, NULL),
(13, 'Ubisoft', 'Ubisoft Entertainment S.A. là một hãng chuyên phát hành và phát triển game đa hệ máy, với trụ sở đặt tại Montreuil-sous-Bois, Pháp. Ubisoft là một hãng toàn cầu với các studio phát triển game trên 17 quốc gia và các công ty con tại 28 quốc gia.', 0, NULL, NULL),
(14, 'Konami', 'Konami Holdings Corporation, thường được gọi là Konami, là một công ty giải trí Nhật Bản và tập đoàn sản xuất game. Công ty phân phối sản phẩm, nhà phát triển video game và là nhà sản xuất. Cũng như điều hành các câu lạc bộ thể dục thể chất và sức khỏe trên khắp Nhật Bản.', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Dinh Kha', 'example@123', '2020-06-14 03:26:39', '123456', NULL, NULL, NULL);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_category_product`
--
ALTER TABLE `tbl_category_product`
  ADD PRIMARY KEY (`category_id`);

--
-- Chỉ mục cho bảng `tbl_code_games`
--
ALTER TABLE `tbl_code_games`
  ADD PRIMARY KEY (`codegames_id`);

--
-- Chỉ mục cho bảng `tbl_customers`
--
ALTER TABLE `tbl_customers`
  ADD PRIMARY KEY (`customer_id`);

--
-- Chỉ mục cho bảng `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`order_id`);

--
-- Chỉ mục cho bảng `tbl_order_details`
--
ALTER TABLE `tbl_order_details`
  ADD PRIMARY KEY (`order_details_id`);

--
-- Chỉ mục cho bảng `tbl_payment`
--
ALTER TABLE `tbl_payment`
  ADD PRIMARY KEY (`pay_id`);

--
-- Chỉ mục cho bảng `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`product_id`);

--
-- Chỉ mục cho bảng `tbl_publisher`
--
ALTER TABLE `tbl_publisher`
  ADD PRIMARY KEY (`publisher_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT cho bảng `tbl_category_product`
--
ALTER TABLE `tbl_category_product`
  MODIFY `category_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `tbl_code_games`
--
ALTER TABLE `tbl_code_games`
  MODIFY `codegames_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=140;

--
-- AUTO_INCREMENT cho bảng `tbl_customers`
--
ALTER TABLE `tbl_customers`
  MODIFY `customer_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `order_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT cho bảng `tbl_order_details`
--
ALTER TABLE `tbl_order_details`
  MODIFY `order_details_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT cho bảng `tbl_payment`
--
ALTER TABLE `tbl_payment`
  MODIFY `pay_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `product_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT cho bảng `tbl_publisher`
--
ALTER TABLE `tbl_publisher`
  MODIFY `publisher_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
