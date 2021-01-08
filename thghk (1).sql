-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th1 09, 2021 lúc 12:41 AM
-- Phiên bản máy phục vụ: 10.4.17-MariaDB
-- Phiên bản PHP: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `thghk`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `csdl_admin`
--

CREATE TABLE `csdl_admin` (
  `adminId` int(11) NOT NULL,
  `adminName` varchar(255) NOT NULL,
  `adminEmail` varchar(150) NOT NULL,
  `adminUser` varchar(255) NOT NULL,
  `adminPass` varchar(255) NOT NULL,
  `level` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `csdl_admin`
--

INSERT INTO `csdl_admin` (`adminId`, `adminName`, `adminEmail`, `adminUser`, `adminPass`, `level`) VALUES
(2, 'linh', 'duylinhsh.2018@gmail.com', 'linhadmin', 'e10adc3949ba59abbe56e057f20f883e', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `csdl_danhmuc`
--

CREATE TABLE `csdl_danhmuc` (
  `catId` int(11) NOT NULL,
  `catName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `csdl_danhmuc`
--

INSERT INTO `csdl_danhmuc` (`catId`, `catName`) VALUES
(17, 'mĩ phẩm'),
(18, 'trang sức');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `csdl_sanpham`
--

CREATE TABLE `csdl_sanpham` (
  `productId` int(11) NOT NULL,
  `productName` tinytext NOT NULL,
  `catId` int(11) NOT NULL,
  `brandId` int(11) NOT NULL,
  `product_desc` text NOT NULL,
  `type` int(11) NOT NULL,
  `price` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `csdl_sanpham`
--

INSERT INTO `csdl_sanpham` (`productId`, `productName`, `catId`, `brandId`, `product_desc`, `type`, `price`, `image`) VALUES
(5, 'son', 0, 0, 'product_desc', 0, '15000000', '772144a335.jpg'),
(6, 'dong ho1', 0, 0, 'product_desc', 0, '15000000', '7bfdda2424.jpg'),
(7, 'dongho 2', 0, 0, 'product_desc', 0, '15000000', '71ff16e088.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `csdl_thuonghieu`
--

CREATE TABLE `csdl_thuonghieu` (
  `brandId` int(11) NOT NULL,
  `brandName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `csdl_thuonghieu`
--

INSERT INTO `csdl_thuonghieu` (`brandId`, `brandName`) VALUES
(4, 'locu');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `csdl_admin`
--
ALTER TABLE `csdl_admin`
  ADD PRIMARY KEY (`adminId`);

--
-- Chỉ mục cho bảng `csdl_danhmuc`
--
ALTER TABLE `csdl_danhmuc`
  ADD PRIMARY KEY (`catId`);

--
-- Chỉ mục cho bảng `csdl_sanpham`
--
ALTER TABLE `csdl_sanpham`
  ADD PRIMARY KEY (`productId`);

--
-- Chỉ mục cho bảng `csdl_thuonghieu`
--
ALTER TABLE `csdl_thuonghieu`
  ADD PRIMARY KEY (`brandId`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `csdl_admin`
--
ALTER TABLE `csdl_admin`
  MODIFY `adminId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `csdl_danhmuc`
--
ALTER TABLE `csdl_danhmuc`
  MODIFY `catId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `csdl_sanpham`
--
ALTER TABLE `csdl_sanpham`
  MODIFY `productId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `csdl_thuonghieu`
--
ALTER TABLE `csdl_thuonghieu`
  MODIFY `brandId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
