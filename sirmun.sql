/*
 Navicat Premium Data Transfer

 Source Server         : local
 Source Server Type    : MySQL
 Source Server Version : 80030
 Source Host           : localhost:3306
 Source Schema         : sirmun

 Target Server Type    : MySQL
 Target Server Version : 80030
 File Encoding         : 65001

 Date: 25/10/2023 07:09:13
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for abouts
-- ----------------------------
DROP TABLE IF EXISTS `abouts`;
CREATE TABLE `abouts`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` enum('0','1') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of abouts
-- ----------------------------
INSERT INTO `abouts` VALUES (1, 'Yayasan Sirojul Munir Sri Purnomo', 'Pondok Pesantren Tahfidzul Qur’an Sirojul Munir  Sri Purnomo tepatnya berada di desa Sri Purnomo yang didirikan oleh KH. Kholil Anwar da 	n Pujiati Munawaroh menjadi cikal bakal berdirinya Yayasan Sirojul Munir Sri Purnomo.', '1696036300_gedung.png', '0', '2023-09-28 14:46:15', '2023-09-30 01:12:56');

-- ----------------------------
-- Table structure for authors
-- ----------------------------
DROP TABLE IF EXISTS `authors`;
CREATE TABLE `authors`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `authors_name_unique`(`name` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of authors
-- ----------------------------

-- ----------------------------
-- Table structure for bank_accounts
-- ----------------------------
DROP TABLE IF EXISTS `bank_accounts`;
CREATE TABLE `bank_accounts`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint UNSIGNED NOT NULL,
  `account_number` bigint UNSIGNED NOT NULL,
  `account_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `bank_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_primary` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `bank_accounts_user_id_foreign`(`user_id` ASC) USING BTREE,
  CONSTRAINT `bank_accounts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of bank_accounts
-- ----------------------------

-- ----------------------------
-- Table structure for banks
-- ----------------------------
DROP TABLE IF EXISTS `banks`;
CREATE TABLE `banks`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `sandi_bank` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_bank` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 147 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of banks
-- ----------------------------
INSERT INTO `banks` VALUES (1, '002', 'Bank BRI');
INSERT INTO `banks` VALUES (2, '008', 'Bank Mandiri');
INSERT INTO `banks` VALUES (3, '009', 'Bank BNI');
INSERT INTO `banks` VALUES (4, '427', 'Bank Syariah Indonesia (Eks. BNI Syariah)');
INSERT INTO `banks` VALUES (5, '451', 'Bank Syariah Indonesia (Eks. Bank Syariah Mandiri, BSM)');
INSERT INTO `banks` VALUES (6, '422', 'Bank Syariah Indonesia (Eks. BRI Syariah)');
INSERT INTO `banks` VALUES (7, '200', 'Bank BTN');
INSERT INTO `banks` VALUES (8, '022', 'Bank CIMB');
INSERT INTO `banks` VALUES (9, '022', 'Bank CIMB Niaga Syariah');
INSERT INTO `banks` VALUES (10, '147', 'Bank Muamalat');
INSERT INTO `banks` VALUES (11, '213', 'Bank BTPN');
INSERT INTO `banks` VALUES (12, '547', 'Bank BTPN Syariah');
INSERT INTO `banks` VALUES (13, '213', 'Bank Jenius');
INSERT INTO `banks` VALUES (14, '013', 'Bank Permata');
INSERT INTO `banks` VALUES (15, '013', 'Bank Permata Syariah');
INSERT INTO `banks` VALUES (16, '046', 'Bank DBS Indonesia');
INSERT INTO `banks` VALUES (17, '046', 'Digibank');
INSERT INTO `banks` VALUES (18, '011', 'BANK DANAMON');
INSERT INTO `banks` VALUES (19, '016', 'BANK MAYBANK (BII)');
INSERT INTO `banks` VALUES (20, '426', 'BANK MEGA');
INSERT INTO `banks` VALUES (21, '153', 'BANK SINARMAS');
INSERT INTO `banks` VALUES (22, '950', 'BANK COMMONWEALTH');
INSERT INTO `banks` VALUES (23, '028', 'BANK OCBC NISP');
INSERT INTO `banks` VALUES (24, '441', 'BANK BUKOPIN');
INSERT INTO `banks` VALUES (25, '521', 'BANK BUKOPIN SYARIAH');
INSERT INTO `banks` VALUES (26, '536', 'BANK BCA SYARIAH');
INSERT INTO `banks` VALUES (27, '026', 'BANK LIPPO');
INSERT INTO `banks` VALUES (28, '031', 'CITIBANK');
INSERT INTO `banks` VALUES (29, '789', 'INDOSAT DOMPETKU');
INSERT INTO `banks` VALUES (30, '911', 'LINKAJA');
INSERT INTO `banks` VALUES (31, '023', 'Bank UOB Indonesia');
INSERT INTO `banks` VALUES (32, '023', 'TMRW by UOB Indonesia');
INSERT INTO `banks` VALUES (33, '542', 'Bank Jago (Bank Artos Indonesia)');
INSERT INTO `banks` VALUES (34, '490', 'Bank NEO Commerce (Akulaku)');
INSERT INTO `banks` VALUES (35, '110', 'BANK JABAR BJB (JAWA BARAT)');
INSERT INTO `banks` VALUES (36, '425', 'BANK JABAR BJB SYARIAH (JAWA BARAT)');
INSERT INTO `banks` VALUES (37, '111', 'BANK DKI JAKARTA');
INSERT INTO `banks` VALUES (38, '112', 'BPD DIY (YOGYAKARTA)');
INSERT INTO `banks` VALUES (39, '113', 'BANK JATENG (JAWA TENGAH)');
INSERT INTO `banks` VALUES (40, '114', 'BANK JATIM (JAWA TIMUR)');
INSERT INTO `banks` VALUES (41, '115', 'BANK JAMBI');
INSERT INTO `banks` VALUES (42, '116', 'BANK ACEH');
INSERT INTO `banks` VALUES (43, '116', 'BANK ACEH SYARIAH');
INSERT INTO `banks` VALUES (44, '117', 'BANK SUMUT');
INSERT INTO `banks` VALUES (45, '118', 'BANK NAGARI (BANK SUMBAR)');
INSERT INTO `banks` VALUES (46, '119', 'BANK RIAU KEPRI');
INSERT INTO `banks` VALUES (47, '120', 'BANK SUMSEL BABEL (SUMATERA SELATAN BANGKA BELITUNG)');
INSERT INTO `banks` VALUES (48, '121', 'BANK LAMPUNG');
INSERT INTO `banks` VALUES (49, '122', 'BANK KALSEL (BANK KALIMANTAN SELATAN)');
INSERT INTO `banks` VALUES (50, '123', 'BANK KALBAR (BANK KALIMANTAN BARAT)');
INSERT INTO `banks` VALUES (51, '124', 'BANK KALTIMTARA (BANK KALIMANTAN TIMUR DAN UTARA)');
INSERT INTO `banks` VALUES (52, '125', 'BANK KALTENG (BANK KALIMANTAN TENGAH)');
INSERT INTO `banks` VALUES (53, '126', 'BANK SULSELBAR (BANK SULAWESI SELATAN DAN BARAT)');
INSERT INTO `banks` VALUES (54, '127', 'BANK SULUTGO (BANK SULAWESI UTARA DAN GORONTALO)');
INSERT INTO `banks` VALUES (55, '128', 'BANK NTB');
INSERT INTO `banks` VALUES (56, '128', 'BANK NTB SYARIAH');
INSERT INTO `banks` VALUES (57, '129', 'BANK BPD BALI');
INSERT INTO `banks` VALUES (58, '130', 'BANK NTT');
INSERT INTO `banks` VALUES (59, '131', 'BANK MALUKU MALUT');
INSERT INTO `banks` VALUES (60, '132', 'BANK PAPUA');
INSERT INTO `banks` VALUES (61, '133', 'BANK BENGKULU');
INSERT INTO `banks` VALUES (62, '134', 'BANK SULTENG (BANK SULAWESI TENGAH)');
INSERT INTO `banks` VALUES (63, '135', 'BANK SULTRA (BANK SULAWESI TENGGARA)');
INSERT INTO `banks` VALUES (64, '137', 'BANK BANTEN');
INSERT INTO `banks` VALUES (65, '003', 'BANK EKSPOR INDONESIA');
INSERT INTO `banks` VALUES (66, '019', 'BANK PANIN');
INSERT INTO `banks` VALUES (67, '517', 'BANK PANIN DUBAI SYARIAH');
INSERT INTO `banks` VALUES (68, '020', 'BANK ARTA NIAGA KENCANA');
INSERT INTO `banks` VALUES (69, '030', 'AMERICAN EXPRESS BANK LTD');
INSERT INTO `banks` VALUES (70, '031', 'CITIBANK');
INSERT INTO `banks` VALUES (71, '032', 'JP. MORGAN CHASE BANK, N.A.');
INSERT INTO `banks` VALUES (72, '033', 'BANK OF AMERICA, N.A');
INSERT INTO `banks` VALUES (73, '034', 'ING INDONESIA BANK');
INSERT INTO `banks` VALUES (74, '036', 'BANK CCB INDONESIA');
INSERT INTO `banks` VALUES (75, '037', 'BANK ARTHA GRAHA INTERNASIONAL');
INSERT INTO `banks` VALUES (76, '039', 'BANK CREDIT AGRICOLE INDOSUEZ');
INSERT INTO `banks` VALUES (77, '040', 'THE BANGKOK BANK COMP. LTD');
INSERT INTO `banks` VALUES (78, '042', 'MUFG BANK');
INSERT INTO `banks` VALUES (79, '045', 'BANK SUMITOMO MITSUI INDONESIA');
INSERT INTO `banks` VALUES (80, '047', 'BANK RESONA PERDANIA');
INSERT INTO `banks` VALUES (81, '048', 'BANK MIZUHO INDONESIA');
INSERT INTO `banks` VALUES (82, '050', 'STANDARD CHARTERED BANK');
INSERT INTO `banks` VALUES (83, '052', 'BANK ABN AMRO');
INSERT INTO `banks` VALUES (84, '053', 'BANK KEPPEL TATLEE BUANA');
INSERT INTO `banks` VALUES (85, '054', 'BANK CAPITAL INDONESIA');
INSERT INTO `banks` VALUES (86, '057', 'BANK BNP PARIBAS INDONESIA');
INSERT INTO `banks` VALUES (87, '059', 'KOREA EXCHANGE BANK DANAMON');
INSERT INTO `banks` VALUES (88, '060', 'RABOBANK INTERNASIONAL INDONESIA');
INSERT INTO `banks` VALUES (89, '061', 'BANK ANZ INDONESIA');
INSERT INTO `banks` VALUES (90, '069', 'BANK OF CHINA');
INSERT INTO `banks` VALUES (91, '076', 'BANK BUMI ARTA');
INSERT INTO `banks` VALUES (92, '087', 'BANK HSBC INDONESIA');
INSERT INTO `banks` VALUES (93, '087', 'BANK EKONOMI (Lebur dengan Bank HSBC)');
INSERT INTO `banks` VALUES (94, '088', 'BANK ANTARDAERAH');
INSERT INTO `banks` VALUES (95, '089', 'BANK HAGA');
INSERT INTO `banks` VALUES (96, '093', 'BANK IFI');
INSERT INTO `banks` VALUES (97, '095', 'BANK J TRUST INDONESIA');
INSERT INTO `banks` VALUES (98, '097', 'BANK MAYAPADA');
INSERT INTO `banks` VALUES (99, '145', 'BANK NUSANTARA PARAHYANGAN');
INSERT INTO `banks` VALUES (100, '146', 'BANK SWADESI (BANK OF INDIA INDONESIA)');
INSERT INTO `banks` VALUES (101, '151', 'BANK MESTIKA');
INSERT INTO `banks` VALUES (102, '152', 'BANK SHINHAN INDONESIA (BANK METRO EXPRESS)');
INSERT INTO `banks` VALUES (103, '157', 'BANK MASPION INDONESIA');
INSERT INTO `banks` VALUES (104, '159', 'BANK HAGAKITA');
INSERT INTO `banks` VALUES (105, '161', 'BANK GANESHA');
INSERT INTO `banks` VALUES (106, '162', 'BANK WINDU KENTJANA');
INSERT INTO `banks` VALUES (107, '164', 'BANK ICBC INDONESIA (HALIM INDONESIA BANK)');
INSERT INTO `banks` VALUES (108, '166', 'BANK HARMONI INTERNATIONAL');
INSERT INTO `banks` VALUES (109, '167', 'BANK QNB INDONESIA');
INSERT INTO `banks` VALUES (110, '212', 'BANK WOORI SAUDARA');
INSERT INTO `banks` VALUES (111, '405', 'BANK VICTORIA SYARIAH');
INSERT INTO `banks` VALUES (112, '459', 'BANK BISNIS INTERNASIONAL');
INSERT INTO `banks` VALUES (113, '466', 'BANK SRI PARTHA');
INSERT INTO `banks` VALUES (114, '472', 'BANK JASA JAKARTA');
INSERT INTO `banks` VALUES (115, '484', 'BANK HANA (KEB HANA BANK)');
INSERT INTO `banks` VALUES (116, '485', 'BANK MNC');
INSERT INTO `banks` VALUES (117, '490', 'BANK YUDHA BHAKTI');
INSERT INTO `banks` VALUES (118, '491', 'BANK MITRANIAGA');
INSERT INTO `banks` VALUES (119, '494', 'BANK BRI AGRO');
INSERT INTO `banks` VALUES (120, '498', 'BANK SBI INDONESIA (BANK INDOMONEX)');
INSERT INTO `banks` VALUES (121, '501', 'BANK DIGITAL BCA (BCA DIGITAL)');
INSERT INTO `banks` VALUES (122, '503', 'BANK NATIONAL NOBU (BANK ALFINDO)');
INSERT INTO `banks` VALUES (123, '506', 'BANK MEGA SYARIAH');
INSERT INTO `banks` VALUES (124, '513', 'BANK INA PERDANA');
INSERT INTO `banks` VALUES (125, '517', 'BANK PANIN DUBAI SYARIAH');
INSERT INTO `banks` VALUES (126, '520', 'PRIMA MASTER BANK');
INSERT INTO `banks` VALUES (127, '521', 'BANK PERSYARIKATAN INDONESIA');
INSERT INTO `banks` VALUES (128, '525', 'BANK AKITA');
INSERT INTO `banks` VALUES (129, '526', 'BANK DINAR INDONESIA');
INSERT INTO `banks` VALUES (130, '531', 'ANGLOMAS INTERNASIONAL BANK');
INSERT INTO `banks` VALUES (131, '523', 'BANK SAHABAT SAMPEORNA (BANK DIPO INTERNATIONAL)');
INSERT INTO `banks` VALUES (132, '535', 'BANK KESEJAHTERAAN EKONOMI');
INSERT INTO `banks` VALUES (133, '548', 'BANK MULTIARTA SENTOSA');
INSERT INTO `banks` VALUES (134, '553', 'BANK MAYORA INDONESIA');
INSERT INTO `banks` VALUES (135, '555', 'BANK INDEX SELINDO');
INSERT INTO `banks` VALUES (136, '558', 'BANK EKSEKUTIF');
INSERT INTO `banks` VALUES (137, '559', 'CENTRATAMA NASIONAL BANK');
INSERT INTO `banks` VALUES (138, '562', 'BANK FAMA INTERNASIONAL');
INSERT INTO `banks` VALUES (139, '564', 'BANK MANDIRI TASPEN POS (BANK SINAR HARAPAN BALI)');
INSERT INTO `banks` VALUES (140, '566', 'BANK VICTORIA INTERNATIONAL');
INSERT INTO `banks` VALUES (141, '567', 'BANK HARDA INTERNASIONAL');
INSERT INTO `banks` VALUES (142, '945', 'IBK BANK INDONESIA');
INSERT INTO `banks` VALUES (143, '946', 'BANK MERINCORP');
INSERT INTO `banks` VALUES (144, '947', 'BANK MAYBANK INDOCORP');
INSERT INTO `banks` VALUES (145, '949', 'BANK CTBC INDONESIA (CHINA TRUST)');
INSERT INTO `banks` VALUES (146, '688', 'BPR KS (KARYAJATNIKA SEDAYA)');

-- ----------------------------
-- Table structure for beritas
-- ----------------------------
DROP TABLE IF EXISTS `beritas`;
CREATE TABLE `beritas`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `kategori_id` int NOT NULL,
  `thumbnail` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` enum('0','1') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_by` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `beritas_title_unique`(`title` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of beritas
-- ----------------------------
INSERT INTO `beritas` VALUES (1, 'keseharian santri', 'keseharian-santri', 'eheraherjtk', 1, '1695911787_logo_smd_newew.png', '0', 1, '2023-09-28 14:36:27', '2023-09-28 14:36:27');
INSERT INTO `beritas` VALUES (2, 'ahuuu', 'ahuuu', 'eayer yereh', 1, '1695912603_footer.png', '0', 1, '2023-09-28 14:50:03', '2023-09-28 14:50:03');

-- ----------------------------
-- Table structure for berkas_murids
-- ----------------------------
DROP TABLE IF EXISTS `berkas_murids`;
CREATE TABLE `berkas_murids`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  `kartu_keluarga` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `akte_kelahiran` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `surat_kelakuan_baik` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `surat_sehat` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `surat_tidak_buta_warna` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `rapor` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `foto` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `ijazah` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of berkas_murids
-- ----------------------------
INSERT INTO `berkas_murids` VALUES (1, 9, '1695969623_logo_smd_newew.png', '1695969623_logo_smd_newew.png', '1695969623_Cuplikan layar 2023-09-29 071532.png', '1695969623_footer.png', '1695969623_dns.png', '1695969623_Cuplikan layar 2023-09-29 071532.png', '1695969623_dns.png', '1695969623_logo_smd_newew.png', '2023-09-29 06:39:58', '2023-09-29 06:40:23');

-- ----------------------------
-- Table structure for books
-- ----------------------------
DROP TABLE IF EXISTS `books`;
CREATE TABLE `books`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `book_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumbnail` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint UNSIGNED NOT NULL,
  `author_id` bigint UNSIGNED NOT NULL,
  `publisher_id` bigint UNSIGNED NOT NULL,
  `publication_year` year NOT NULL,
  `isbn` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `stock` int NOT NULL,
  `is_available` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `books_book_code_unique`(`book_code` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of books
-- ----------------------------

-- ----------------------------
-- Table structure for borrowings
-- ----------------------------
DROP TABLE IF EXISTS `borrowings`;
CREATE TABLE `borrowings`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `borrow_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `member_id` bigint UNSIGNED NOT NULL,
  `book_id` bigint UNSIGNED NOT NULL,
  `borrow_date` date NOT NULL,
  `return_date` date NOT NULL,
  `lateness` date NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `borrowings_borrow_code_unique`(`borrow_code` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of borrowings
-- ----------------------------

-- ----------------------------
-- Table structure for categories
-- ----------------------------
DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `categories_name_unique`(`name` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of categories
-- ----------------------------

-- ----------------------------
-- Table structure for data_jurusans
-- ----------------------------
DROP TABLE IF EXISTS `data_jurusans`;
CREATE TABLE `data_jurusans`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `jurusan_id` bigint UNSIGNED NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `data_jurusans_jurusan_id_foreign`(`jurusan_id` ASC) USING BTREE,
  CONSTRAINT `data_jurusans_jurusan_id_foreign` FOREIGN KEY (`jurusan_id`) REFERENCES `jurusans` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of data_jurusans
-- ----------------------------
INSERT INTO `data_jurusans` VALUES (1, 1, '1695980723_logoo.png', 'penghafal Al-Qur\'an', '2023-09-29 09:45:23', '2023-09-29 09:45:23');

-- ----------------------------
-- Table structure for data_murids
-- ----------------------------
DROP TABLE IF EXISTS `data_murids`;
CREATE TABLE `data_murids`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  `nis` bigint NULL DEFAULT NULL,
  `nisn` bigint NULL DEFAULT NULL,
  `tempat_lahir` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `tgl_lahir` date NULL DEFAULT NULL,
  `agama` enum('Islam','Kristen Katolik','Kristen Protestan','Hindu','Budha','Konghucu') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `telp` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `whatsapp` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `alamat` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `asal_sekolah` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `proses` enum('Pendaftaran','Berkas','Murid','Ditolak') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Pendaftaran',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of data_murids
-- ----------------------------
INSERT INTO `data_murids` VALUES (1, 5, NULL, NULL, NULL, NULL, NULL, NULL, '2352362362', NULL, 'Wonosobo', 'Pendaftaran', '2023-09-29 03:46:51', '2023-09-29 03:46:51');
INSERT INTO `data_murids` VALUES (2, 7, NULL, NULL, NULL, NULL, NULL, NULL, '23523623623', NULL, 'Wonosobo', 'Pendaftaran', '2023-09-29 06:37:12', '2023-09-29 06:37:12');
INSERT INTO `data_murids` VALUES (3, 9, 353472437, 3164364, 'wonosobo', '2000-09-05', 'Islam', '082225562607', '323472', 'Jl. Pramuka, 1 Kalibeber, Kec. Mojotengah,', 'Wonosobo', 'Murid', '2023-09-29 06:38:01', '2023-09-29 06:42:06');

-- ----------------------------
-- Table structure for data_orang_tuas
-- ----------------------------
DROP TABLE IF EXISTS `data_orang_tuas`;
CREATE TABLE `data_orang_tuas`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  `nama_ayah` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `pendidikan_ayah` enum('SD','SMP','SMA/SMK','S1','S2','S3') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `telp_ayah` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `pekerjaan_ayah` enum('Wiraswasta','Wirausaha','ASN','Buruh') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `alamat_ayah` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `nama_ibu` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `pendidikan_ibu` enum('SD','SMP','SMA/SMK','S1','S2','S3') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `telp_ibu` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `pekerjaan_ibu` enum('Ibu Rumah Tangga','Wiraswasta','Wirausaha','ASN','Buruh') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `alamat_ibu` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of data_orang_tuas
-- ----------------------------
INSERT INTO `data_orang_tuas` VALUES (1, 9, 'agus', 'SMA/SMK', '4375285688', 'Wiraswasta', 'agus', 'sri', 'S1', '7574254', 'Ibu Rumah Tangga', 'sri', '2023-09-29 06:39:06', '2023-09-29 06:39:58');

-- ----------------------------
-- Table structure for detail_payment_spps
-- ----------------------------
DROP TABLE IF EXISTS `detail_payment_spps`;
CREATE TABLE `detail_payment_spps`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `payment_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `sender` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `bank_sender` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `destination_bank` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `month` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` bigint NOT NULL,
  `status` enum('paid','unpaid') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `date_file` date NULL DEFAULT NULL,
  `approve_by` bigint UNSIGNED NULL DEFAULT NULL,
  `approve_date` date NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `detail_payment_spps_user_id_foreign`(`user_id` ASC) USING BTREE,
  INDEX `detail_payment_spps_payment_id_foreign`(`payment_id` ASC) USING BTREE,
  CONSTRAINT `detail_payment_spps_payment_id_foreign` FOREIGN KEY (`payment_id`) REFERENCES `payment_spps` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `detail_payment_spps_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of detail_payment_spps
-- ----------------------------
INSERT INTO `detail_payment_spps` VALUES (1, 1, 9, NULL, NULL, NULL, 'September', 300983, 'unpaid', NULL, NULL, NULL, NULL, '2023-09-29 06:42:06', '2023-09-29 06:42:06');

-- ----------------------------
-- Table structure for events
-- ----------------------------
DROP TABLE IF EXISTS `events`;
CREATE TABLE `events`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumbnail` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `acara` datetime NOT NULL,
  `lokasi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` enum('0','1') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `events_title_unique`(`title` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of events
-- ----------------------------
INSERT INTO `events` VALUES (1, 'Lomba Tartil', 'lomba', 'lomba-tartil', 'mari berlomba', '1695983737_404.png', '2023-10-18 17:35:00', 'Aula', '0', '2023-09-29 10:35:37', '2023-09-29 10:35:37');

-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `failed_jobs_uuid_unique`(`uuid` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of failed_jobs
-- ----------------------------

-- ----------------------------
-- Table structure for footers
-- ----------------------------
DROP TABLE IF EXISTS `footers`;
CREATE TABLE `footers`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `facebook` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `instagram` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `twitter` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `youtube` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `telp` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `whatsapp` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of footers
-- ----------------------------
INSERT INTO `footers` VALUES (1, 'wfe', 'gege', 'ewg', 'WG', '1695972244_SIMUNIR.png', '54725257257', '3435372572', 'galihanggara475@gmail.com', 'Yayasan Pendidikan Islam Sirojul Munir Sri Purnomo', '2023-09-29 07:21:43', '2023-09-29 07:25:21');

-- ----------------------------
-- Table structure for image_sliders
-- ----------------------------
DROP TABLE IF EXISTS `image_sliders`;
CREATE TABLE `image_sliders`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `desc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `urutan` int NOT NULL,
  `is_active` enum('0','1') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of image_sliders
-- ----------------------------
INSERT INTO `image_sliders` VALUES (1, '1698131536_galihs.jpg', 'Gedung Baru', 'Rancangan Gedung Baru', 0, '0', '2023-09-28 14:47:07', '2023-10-24 07:12:16');
INSERT INTO `image_sliders` VALUES (2, '1698131501_download.jpeg', 'Gedung Utama', 'Gedung Serbaguna', 1, '0', '2023-09-29 06:49:47', '2023-10-24 07:11:41');
INSERT INTO `image_sliders` VALUES (3, '1696036130_des gedung.jpeg', 'Gedung 2', 'Gedung Madrasah Diniyah', 2, '0', '2023-09-30 01:08:50', '2023-09-30 01:08:50');

-- ----------------------------
-- Table structure for jurusans
-- ----------------------------
DROP TABLE IF EXISTS `jurusans`;
CREATE TABLE `jurusans`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `singkatan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` enum('0','1') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `jurusans_nama_unique`(`nama` ASC) USING BTREE,
  UNIQUE INDEX `jurusans_slug_unique`(`slug` ASC) USING BTREE,
  UNIQUE INDEX `jurusans_singkatan_unique`(`singkatan` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of jurusans
-- ----------------------------
INSERT INTO `jurusans` VALUES (1, 'Tahfidzul Qur\'an', 'TQ', 'tahfidzul-quran', '0', '2023-09-29 09:45:23', '2023-09-29 09:45:23');

-- ----------------------------
-- Table structure for kategori_beritas
-- ----------------------------
DROP TABLE IF EXISTS `kategori_beritas`;
CREATE TABLE `kategori_beritas`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` enum('0','1') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `kategori_beritas_nama_unique`(`nama` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of kategori_beritas
-- ----------------------------
INSERT INTO `kategori_beritas` VALUES (1, 'Santri', '0', '2023-09-28 14:35:58', '2023-09-28 14:35:58');

-- ----------------------------
-- Table structure for kegiatans
-- ----------------------------
DROP TABLE IF EXISTS `kegiatans`;
CREATE TABLE `kegiatans`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `imagas` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` enum('0','1') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `kegiatans_nama_unique`(`nama` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of kegiatans
-- ----------------------------
INSERT INTO `kegiatans` VALUES (1, 'Komputer learn', 'komputer-learn', '1695911642_about.png', NULL, 'sdgearherj', '0', '2023-09-28 14:34:02', '2023-09-28 14:34:02');

-- ----------------------------
-- Table structure for members
-- ----------------------------
DROP TABLE IF EXISTS `members`;
CREATE TABLE `members`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `member_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `members_member_code_unique`(`member_code` ASC) USING BTREE,
  UNIQUE INDEX `members_user_id_unique`(`user_id` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of members
-- ----------------------------

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 42 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (1, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (2, '2014_10_12_100000_create_password_resets_table', 1);
INSERT INTO `migrations` VALUES (3, '2019_08_19_000000_create_failed_jobs_table', 1);
INSERT INTO `migrations` VALUES (4, '2019_12_14_000001_create_personal_access_tokens_table', 1);
INSERT INTO `migrations` VALUES (5, '2021_08_08_100000_create_banks_tables', 1);
INSERT INTO `migrations` VALUES (6, '2022_03_20_132856_create_jurusans_table', 1);
INSERT INTO `migrations` VALUES (7, '2022_03_20_133244_create_data_jurusans_table', 1);
INSERT INTO `migrations` VALUES (8, '2022_03_22_182953_create_kegiatans_table', 1);
INSERT INTO `migrations` VALUES (9, '2022_03_23_040838_create_image_sliders_table', 1);
INSERT INTO `migrations` VALUES (10, '2022_03_23_052723_add_field_to_image_sliders_table', 1);
INSERT INTO `migrations` VALUES (11, '2022_03_23_065335_create_abouts_table', 1);
INSERT INTO `migrations` VALUES (12, '2022_03_23_074809_create_videos_table', 1);
INSERT INTO `migrations` VALUES (13, '2022_03_24_075737_create_kategori_beritas_table', 1);
INSERT INTO `migrations` VALUES (14, '2022_03_24_075900_create_beritas_table', 1);
INSERT INTO `migrations` VALUES (15, '2022_03_24_105758_create_events_table', 1);
INSERT INTO `migrations` VALUES (16, '2022_03_24_201826_add_field_to_events_table', 1);
INSERT INTO `migrations` VALUES (17, '2022_03_24_204322_create_footers_table', 1);
INSERT INTO `migrations` VALUES (18, '2022_03_25_102915_create_permission_tables', 1);
INSERT INTO `migrations` VALUES (19, '2022_03_27_074151_create_users_details_table', 1);
INSERT INTO `migrations` VALUES (20, '2022_03_27_094236_create_data_murids_table', 1);
INSERT INTO `migrations` VALUES (21, '2022_03_28_154339_create_profile_sekolahs_table', 1);
INSERT INTO `migrations` VALUES (22, '2022_03_28_161701_create_visimisis_table', 1);
INSERT INTO `migrations` VALUES (23, '2022_03_30_084531_create_data_orang_tuas_table', 1);
INSERT INTO `migrations` VALUES (24, '2022_03_30_172737_add_value_role_in_users_table', 1);
INSERT INTO `migrations` VALUES (25, '2022_03_30_194727_add_value_role_in_users_details_table', 1);
INSERT INTO `migrations` VALUES (26, '2022_04_01_190600_add_field_to_data_murids', 1);
INSERT INTO `migrations` VALUES (27, '2022_04_01_191038_create_berkas_murids_table', 1);
INSERT INTO `migrations` VALUES (28, '2022_05_20_062053_create_authors_table', 1);
INSERT INTO `migrations` VALUES (29, '2022_05_20_062103_create_publishers_table', 1);
INSERT INTO `migrations` VALUES (30, '2022_05_20_062130_create_categories_table', 1);
INSERT INTO `migrations` VALUES (31, '2022_05_20_062140_create_books_table', 1);
INSERT INTO `migrations` VALUES (32, '2022_05_20_062219_create_members_table', 1);
INSERT INTO `migrations` VALUES (33, '2022_05_20_062236_create_borrowings_table', 1);
INSERT INTO `migrations` VALUES (34, '2022_07_16_094123_create_bank_accounts_table', 1);
INSERT INTO `migrations` VALUES (35, '2022_07_16_094821_create_payment_spps_table', 1);
INSERT INTO `migrations` VALUES (36, '2022_07_16_100447_create_detail_payment_spps_table', 1);
INSERT INTO `migrations` VALUES (37, '2022_07_16_145332_add_value_role_bendahara_in_users_table', 1);
INSERT INTO `migrations` VALUES (38, '2022_07_16_145418_add_value_role_bendahara_in_users_details_table', 1);
INSERT INTO `migrations` VALUES (39, '2022_07_29_072220_add_column_account_name_in_bank_accounts_table', 1);
INSERT INTO `migrations` VALUES (40, '2022_07_29_081354_add_column_in_detail_payment_spps_table', 1);
INSERT INTO `migrations` VALUES (41, '2022_08_01_080614_create_settings_table', 1);

-- ----------------------------
-- Table structure for model_has_permissions
-- ----------------------------
DROP TABLE IF EXISTS `model_has_permissions`;
CREATE TABLE `model_has_permissions`  (
  `permission_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL,
  PRIMARY KEY (`permission_id`, `model_id`, `model_type`) USING BTREE,
  INDEX `model_has_permissions_model_id_model_type_index`(`model_id` ASC, `model_type` ASC) USING BTREE,
  CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of model_has_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for model_has_roles
-- ----------------------------
DROP TABLE IF EXISTS `model_has_roles`;
CREATE TABLE `model_has_roles`  (
  `role_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL,
  PRIMARY KEY (`role_id`, `model_id`, `model_type`) USING BTREE,
  INDEX `model_has_roles_model_id_model_type_index`(`model_id` ASC, `model_type` ASC) USING BTREE,
  CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of model_has_roles
-- ----------------------------
INSERT INTO `model_has_roles` VALUES (1, 'App\\Models\\User', 1);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 2);
INSERT INTO `model_has_roles` VALUES (2, 'App\\Models\\User', 3);
INSERT INTO `model_has_roles` VALUES (10, 'App\\Models\\User', 4);
INSERT INTO `model_has_roles` VALUES (4, 'App\\Models\\User', 5);
INSERT INTO `model_has_roles` VALUES (9, 'App\\Models\\User', 6);
INSERT INTO `model_has_roles` VALUES (7, 'App\\Models\\User', 7);
INSERT INTO `model_has_roles` VALUES (4, 'App\\Models\\User', 9);
INSERT INTO `model_has_roles` VALUES (2, 'App\\Models\\User', 10);
INSERT INTO `model_has_roles` VALUES (2, 'App\\Models\\User', 11);
INSERT INTO `model_has_roles` VALUES (2, 'App\\Models\\User', 12);
INSERT INTO `model_has_roles` VALUES (2, 'App\\Models\\User', 13);

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets`  (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  INDEX `password_resets_email_index`(`email` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of password_resets
-- ----------------------------

-- ----------------------------
-- Table structure for payment_spps
-- ----------------------------
DROP TABLE IF EXISTS `payment_spps`;
CREATE TABLE `payment_spps`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint UNSIGNED NOT NULL,
  `year` bigint NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `January` enum('paid','unpaid','free') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unpaid',
  `February` enum('paid','unpaid','free') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unpaid',
  `March` enum('paid','unpaid','free') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unpaid',
  `April` enum('paid','unpaid','free') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unpaid',
  `May` enum('paid','unpaid','free') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unpaid',
  `June` enum('paid','unpaid','free') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unpaid',
  `July` enum('paid','unpaid','free') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unpaid',
  `August` enum('paid','unpaid','free') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unpaid',
  `September` enum('paid','unpaid','free') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unpaid',
  `October` enum('paid','unpaid','free') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unpaid',
  `November` enum('paid','unpaid','free') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unpaid',
  `December` enum('paid','unpaid','free') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unpaid',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `payment_spps_user_id_foreign`(`user_id` ASC) USING BTREE,
  CONSTRAINT `payment_spps_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of payment_spps
-- ----------------------------
INSERT INTO `payment_spps` VALUES (1, 9, 2023, 1, 'unpaid', 'unpaid', 'unpaid', 'unpaid', 'unpaid', 'unpaid', 'unpaid', 'unpaid', 'unpaid', 'unpaid', 'unpaid', 'unpaid', '2023-09-29 06:42:06', '2023-09-29 06:42:06');

-- ----------------------------
-- Table structure for permissions
-- ----------------------------
DROP TABLE IF EXISTS `permissions`;
CREATE TABLE `permissions`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `permissions_name_guard_name_unique`(`name` ASC, `guard_name` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of permissions
-- ----------------------------

-- ----------------------------
-- Table structure for personal_access_tokens
-- ----------------------------
DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE `personal_access_tokens`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `personal_access_tokens_token_unique`(`token` ASC) USING BTREE,
  INDEX `personal_access_tokens_tokenable_type_tokenable_id_index`(`tokenable_type` ASC, `tokenable_id` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of personal_access_tokens
-- ----------------------------

-- ----------------------------
-- Table structure for profile_sekolahs
-- ----------------------------
DROP TABLE IF EXISTS `profile_sekolahs`;
CREATE TABLE `profile_sekolahs`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of profile_sekolahs
-- ----------------------------
INSERT INTO `profile_sekolahs` VALUES (1, 'PONDOK PESANTREN TAHFIDZUL QUR’AN', 'Pondok Pesantren Tahfidzul Qur’an Sirojul Munir  Sri Purnomo tepatnya berada di desa Sri Purnomo yang didirikan oleh KH. Kholil Anwar da 	n Pujiati Munawaroh menjadi cikal bakal berdirinya Yayasan Sirojul Munir Sri Purnomo.\r\nYayasan Sirojul Munir Sri Purnomo berangkat dari pondok pesantren Sirojul Munir Sri Purnomo, sebelum berdirinya Yayasan sudah ada terlebih dahulu yaitu Pondok Pesantren Tahfidzul Qur’an Sri Purnomo. Kemudian dengan adanya peraturan bahwa pesantren harus di bawah naungan Yayasan kemudian Pondok Pesantren Tahfidzul Qur’an Sirojul Munir mengumpulkan para sesepuh untuk disusun pengurusan Yayasan Sirojul Munir.\r\nKemudian pada tahun 2019 terbentuklah Yayasan Sirojul Munir Sri Purnomo yang berada di Sri Purnomo, Kalirejo, Sri Mulyo, Kec. Kalirejo, Kabupaten Lampung Tengah, Lampung. Yayasan Sirojul Munir mulai berkembang pada tahun 2020. Mulai tahun 2021 Yayasan Sirojul Munir Sri Purnomo mulai terjun ke dunia formal yaitu merintis SMA Sains Al-Qur’an di Sri Purnomo.', '1696037139_ASRAMA-AULA-BERGAYA-MEDITERAN-1.jpg', '2023-09-28 14:48:00', '2023-09-30 01:25:39');

-- ----------------------------
-- Table structure for publishers
-- ----------------------------
DROP TABLE IF EXISTS `publishers`;
CREATE TABLE `publishers`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `publishers_name_unique`(`name` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of publishers
-- ----------------------------

-- ----------------------------
-- Table structure for role_has_permissions
-- ----------------------------
DROP TABLE IF EXISTS `role_has_permissions`;
CREATE TABLE `role_has_permissions`  (
  `permission_id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL,
  PRIMARY KEY (`permission_id`, `role_id`) USING BTREE,
  INDEX `role_has_permissions_role_id_foreign`(`role_id` ASC) USING BTREE,
  CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of role_has_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for roles
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `roles_name_guard_name_unique`(`name` ASC, `guard_name` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of roles
-- ----------------------------
INSERT INTO `roles` VALUES (1, 'Admin', 'web', '2023-09-28 14:32:06', '2023-09-28 14:32:06');
INSERT INTO `roles` VALUES (2, 'Guru', 'web', '2023-09-28 14:32:06', '2023-09-28 14:32:06');
INSERT INTO `roles` VALUES (3, 'Staf', 'web', '2023-09-28 14:32:06', '2023-09-28 14:32:06');
INSERT INTO `roles` VALUES (4, 'Murid', 'web', '2023-09-28 14:32:06', '2023-09-28 14:32:06');
INSERT INTO `roles` VALUES (5, 'Orang Tua', 'web', '2023-09-28 14:32:06', '2023-09-28 14:32:06');
INSERT INTO `roles` VALUES (6, 'Alumni', 'web', '2023-09-28 14:32:06', '2023-09-28 14:32:06');
INSERT INTO `roles` VALUES (7, 'Guest', 'web', '2023-09-28 14:32:06', '2023-09-28 14:32:06');
INSERT INTO `roles` VALUES (8, 'Perpustakaan', 'web', '2023-09-28 14:32:07', '2023-09-28 14:32:07');
INSERT INTO `roles` VALUES (9, 'PPDB', 'web', '2023-09-28 14:32:07', '2023-09-28 14:32:07');
INSERT INTO `roles` VALUES (10, 'Bendahara', 'web', '2023-09-28 14:32:07', '2023-09-28 14:32:07');

-- ----------------------------
-- Table structure for settings
-- ----------------------------
DROP TABLE IF EXISTS `settings`;
CREATE TABLE `settings`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `isEmail` tinyint(1) NOT NULL DEFAULT 0,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `settings_user_id_foreign`(`user_id` ASC) USING BTREE,
  CONSTRAINT `settings_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of settings
-- ----------------------------
INSERT INTO `settings` VALUES (1, 0, NULL, 1, '2023-09-28 14:32:07', '2023-09-28 14:32:07');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` enum('Admin','Guru','Staf','Murid','Orang Tua','Alumni','Guest','Perpustakaan','PPDB','Bendahara') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `status` enum('Aktif','Tidak Aktif') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto_profile` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_username_unique`(`username` ASC) USING BTREE,
  UNIQUE INDEX `users_email_unique`(`email` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'Galih Susilo', 'kepsek', 'kepsek@sch.id', 'Admin', 'Aktif', NULL, NULL, '$2y$10$ILZaLkGz5N8.BsFvMOTrF.tTfO265.I3u0OjFCyCR3KHg.e7odJWu', NULL, '2023-09-28 14:32:07', '2023-09-30 01:02:37');
INSERT INTO `users` VALUES (2, 'Galih', 'galih53', 'galihanggara475@gmail.com', 'Staf', 'Aktif', '1695912713_about.png', NULL, '$2y$10$1uZyt0GJ69BT0Y4EtPc6l.7nlVvcz8SX/MrIlKcrICAWRixrchSPm', NULL, '2023-09-28 14:51:54', '2023-09-28 14:51:54');
INSERT INTO `users` VALUES (3, 'Dul Jaelani', 'dul00', 'galihsfaagara475@gmail.com', 'Guru', 'Aktif', '1696036740_profile 1.png', NULL, '$2y$10$sHmU.tEW4nhcy/x0MR21o.d/AyLY5frCBKfrD1ek6.gngnob5Fdri', NULL, '2023-09-28 14:54:00', '2023-09-30 01:19:00');
INSERT INTO `users` VALUES (4, 'Silvia', 'silvia35', 'silvia12@gmail.com', 'Bendahara', 'Aktif', '1695958055_logo_smd_newew.png', NULL, '$2y$10$YWmf0doi5fubgDKBBTD/Gu6iLVMWvpJqB.qQnVLZR0SZn/bHArd.a', NULL, '2023-09-29 03:27:36', '2023-09-29 03:27:36');
INSERT INTO `users` VALUES (5, 'joko', 'joko', 'galihangga@gmail.com', 'Murid', 'Aktif', NULL, NULL, '$2y$10$6p47ISqR7XJgTDkx.CrkmOKOTLzlWtZrOH6ynDZZ2DuPMnW44rjcG', NULL, '2023-09-29 03:46:51', '2023-09-29 03:48:25');
INSERT INTO `users` VALUES (6, 'ilham', 'ilham59', 'ilham@gmail.com', 'PPDB', 'Aktif', '1695969359_dns.png', NULL, '$2y$10$bUH9OgX.GdRmSOmS9/StneQn1.CHPgO7wMoKK9f.SWfyS0r8YEfb.', NULL, '2023-09-29 06:35:59', '2023-09-29 06:35:59');
INSERT INTO `users` VALUES (7, 'fqaf', 'fqaf', 'weghg@gmail.com', 'Guest', 'Aktif', NULL, NULL, '$2y$10$cIIEy5q88i8cSXJbv2dwjOPsEh2GNlyQU.G2WriT2Vcjncigj3FpK', NULL, '2023-09-29 06:37:12', '2023-09-29 06:37:12');
INSERT INTO `users` VALUES (9, 'ayu', 'ayu', 'ayu@gmail.com', 'Murid', 'Aktif', NULL, NULL, '$2y$10$sMLRbQ6T0aa5xRWM41fpTe66TlZgzFFcK5TYNRmkQFn84ZkgJGc/a', NULL, '2023-09-29 06:38:01', '2023-09-29 06:42:06');
INSERT INTO `users` VALUES (10, 'James Deane', 'james29', 'james432@gmail.com', 'Guru', 'Aktif', '1696038989_images.jpeg', NULL, '$2y$10$QbOnuOqQxScDmZAceo5vLur0aaMd3rLkm5AfVzcmQqeZqtY/GTdx2', NULL, '2023-09-30 01:56:29', '2023-09-30 01:56:29');
INSERT INTO `users` VALUES (11, 'Abdul Hasan', 'abdul11', 'Abdulhasan@gmail.com', 'Guru', 'Aktif', '1696072602_3135715.png', NULL, '$2y$10$DMLwPkZgUzPj.uW0uKC.veaBYE0LpWvFJZd6QJxsjjxihowe7eB5y', NULL, '2023-09-30 11:13:11', '2023-09-30 11:16:42');
INSERT INTO `users` VALUES (12, 'Joko Widodo', 'joko03', 'jokowidodo@gmail.com', 'Guru', 'Aktif', '1698131823_jokowi.jpg', NULL, '$2y$10$qNPDwcvA47HJUkataYHLn.1XEsju3sl79u0EucjNyk1H2Qm7ErggG', NULL, '2023-10-24 07:17:03', '2023-10-24 07:17:03');
INSERT INTO `users` VALUES (13, 'Prabowo Subianto', 'prabowo44', 'prabowoo@gmail.com', 'Guru', 'Aktif', '1698131864_KIM_Prabowo_Subianto.jpg', NULL, '$2y$10$hKO.uvF/ADG7Nb37dLzIeuAgnlIokerprzHikxXfgk1BY0L4hI0my', NULL, '2023-10-24 07:17:44', '2023-10-24 07:17:44');

-- ----------------------------
-- Table structure for users_details
-- ----------------------------
DROP TABLE IF EXISTS `users_details`;
CREATE TABLE `users_details`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint UNSIGNED NOT NULL,
  `role` enum('Admin','Guru','Staf','Murid','Orang Tua','Alumni','Guest','Perpustakaan','PPDB','Bendahara') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `mengajar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `nip` bigint NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `linkidln` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `instagram` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `twitter` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `facebook` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `youtube` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `website` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `is_active` enum('0','1') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of users_details
-- ----------------------------
INSERT INTO `users_details` VALUES (1, 2, 'Staf', NULL, 43346346346, 'galihanggara475@gmail.com', NULL, 'hsah', 'sbn', 'sdhdsjh', 'sh', 'erer', '0', '2023-09-28 14:51:54', '2023-09-28 14:51:54');
INSERT INTO `users_details` VALUES (2, 3, 'Guru', 'Matematika', 52356346, 'galihsfaagara475@gmail.com', NULL, 'zfbhd', 'bgh', 'zfhdf', 'dzfbhzfd', 'gdsdg', '0', '2023-09-28 14:54:00', '2023-09-28 14:54:00');
INSERT INTO `users_details` VALUES (3, 4, 'Bendahara', NULL, 43724854, 'silvia12@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, '0', '2023-09-29 03:27:36', '2023-09-29 03:27:36');
INSERT INTO `users_details` VALUES (4, 6, 'PPDB', NULL, 3432747542, 'ilham@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, '0', '2023-09-29 06:35:59', '2023-09-29 06:35:59');
INSERT INTO `users_details` VALUES (5, 10, 'Guru', 'Matematika', 32531463735, 'james432@gmail.com', NULL, 'rhsb', 'rgtbhsrh', 'srhrb', 'rtjw', 'shj', '0', '2023-09-30 01:56:29', '2023-09-30 01:56:29');
INSERT INTO `users_details` VALUES (6, 11, 'Guru', NULL, 3454773738358, 'Abdulhasan@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, '0', '2023-09-30 11:13:11', '2023-09-30 11:16:42');
INSERT INTO `users_details` VALUES (7, 12, 'Guru', 'Matematika', 214525252, 'jokowidodo@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, '0', '2023-10-24 07:17:03', '2023-10-24 07:17:03');
INSERT INTO `users_details` VALUES (8, 13, 'Guru', 'Matematika', 3152521525, 'prabowoo@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, '0', '2023-10-24 07:17:44', '2023-10-24 07:17:44');

-- ----------------------------
-- Table structure for videos
-- ----------------------------
DROP TABLE IF EXISTS `videos`;
CREATE TABLE `videos`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` enum('0','1') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of videos
-- ----------------------------
INSERT INTO `videos` VALUES (1, 'News', 'News Update', 'https://www.youtube.com/watch?v=jOpfIMy0SKE', '0', '2023-09-29 10:38:48', '2023-09-30 01:17:25');
INSERT INTO `videos` VALUES (2, 'SEMAAN AL-QUR\'AN JUZ 9', 'IBU NYAI QUDSIYATUL MUNAWAROH', 'https://www.youtube.com/watch?v=nqPpyRGtqsQ', '1', '2023-09-30 01:16:45', '2023-09-30 01:17:25');

-- ----------------------------
-- Table structure for visimisis
-- ----------------------------
DROP TABLE IF EXISTS `visimisis`;
CREATE TABLE `visimisis`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `visi` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `misi` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of visimisis
-- ----------------------------
INSERT INTO `visimisis` VALUES (1, 'Sumber ilmu amaliah, beramal ilmiah, berakhlakul karimah,', 'berjiwa Qur’ani dan berwawasan global', '1695912550_dns.png', '2023-09-28 14:49:10', '2023-09-30 01:26:26');

SET FOREIGN_KEY_CHECKS = 1;
