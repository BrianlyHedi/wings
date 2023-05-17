/*
 Navicat Premium Data Transfer

 Source Server         : SQL Local
 Source Server Type    : MySQL
 Source Server Version : 80030 (8.0.30)
 Source Host           : localhost:3306
 Source Schema         : penjualan

 Target Server Type    : MySQL
 Target Server Version : 80030 (8.0.30)
 File Encoding         : 65001

 Date: 17/05/2023 18:34:11
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for barang
-- ----------------------------
DROP TABLE IF EXISTS `barang`;
CREATE TABLE `barang`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_barang` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `id_kategori` int NOT NULL,
  `nama_barang` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `merk` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `harga_beli` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `harga_jual` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `satuan_barang` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `stok` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `tgl_input` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `tgl_update` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of barang
-- ----------------------------
INSERT INTO `barang` VALUES (4, 'BR001', 9, 'So Klin Pewangi', 'Wings', '3000', '5000', 'PCS', '100', '29 March 2023, 1:36', '17 May 2023, 18:18');
INSERT INTO `barang` VALUES (6, 'BR002', 9, 'Giv Biru', 'Wings', '5000', '10000', 'PCS', '100', '29 March 2023, 9:51', '17 May 2023, 18:29');
INSERT INTO `barang` VALUES (7, 'BR003', 9, 'Daia Softener', 'Wings', '30000', '32000', 'PCS', '100', '17 May 2023, 18:27', NULL);

-- ----------------------------
-- Table structure for kategori
-- ----------------------------
DROP TABLE IF EXISTS `kategori`;
CREATE TABLE `kategori`  (
  `id_kategori` int NOT NULL AUTO_INCREMENT,
  `nama_kategori` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `tgl_input` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id_kategori`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of kategori
-- ----------------------------
INSERT INTO `kategori` VALUES (9, 'Convenience Goods', '29 March 2023, 1:36');

-- ----------------------------
-- Table structure for login
-- ----------------------------
DROP TABLE IF EXISTS `login`;
CREATE TABLE `login`  (
  `id_login` int NOT NULL AUTO_INCREMENT,
  `user` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `pass` char(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `id_member` int NOT NULL,
  PRIMARY KEY (`id_login`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of login
-- ----------------------------
INSERT INTO `login` VALUES (1, 'brianly', '5f4dcc3b5aa765d61d8327deb882cf99', 1);

-- ----------------------------
-- Table structure for member
-- ----------------------------
DROP TABLE IF EXISTS `member`;
CREATE TABLE `member`  (
  `id_member` int NOT NULL AUTO_INCREMENT,
  `nm_member` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `alamat_member` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `telepon` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `email` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `gambar` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `NIK` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id_member`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of member
-- ----------------------------
INSERT INTO `member` VALUES (1, 'Brianly Hedi Rawung', 'Test Website Penjualan', '089515656056', 'briannrf1@gmail.com', 'unammed.jpg', '12314121');

-- ----------------------------
-- Table structure for nota
-- ----------------------------
DROP TABLE IF EXISTS `nota`;
CREATE TABLE `nota`  (
  `id_nota` int NOT NULL AUTO_INCREMENT,
  `id_barang` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `id_member` int NOT NULL,
  `jumlah` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `total` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `tanggal_input` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `periode` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_nota`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 50 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of nota
-- ----------------------------

-- ----------------------------
-- Table structure for penjualan
-- ----------------------------
DROP TABLE IF EXISTS `penjualan`;
CREATE TABLE `penjualan`  (
  `id_penjualan` int NOT NULL AUTO_INCREMENT,
  `id_barang` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `id_member` int NOT NULL,
  `jumlah` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `total` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `tanggal_input` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id_penjualan`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 37 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of penjualan
-- ----------------------------
INSERT INTO `penjualan` VALUES (36, 'BR001', 1, '1', '15000', '17 May 2023, 18:11');

-- ----------------------------
-- Table structure for toko
-- ----------------------------
DROP TABLE IF EXISTS `toko`;
CREATE TABLE `toko`  (
  `id_toko` int NOT NULL AUTO_INCREMENT,
  `nama_toko` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `alamat_toko` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `tlp` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `nama_pemilik` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id_toko`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of toko
-- ----------------------------
INSERT INTO `toko` VALUES (1, 'Wings', 'Jakarta', '089515656056', 'Brianly Hedi Rawung');

SET FOREIGN_KEY_CHECKS = 1;
