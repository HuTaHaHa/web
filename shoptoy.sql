-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 14, 2024 lúc 05:35 AM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `shoptoy`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhmuc`
--

CREATE TABLE `danhmuc` (
  `danhmuc` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `danhmuc`
--

INSERT INTO `danhmuc` (`danhmuc`) VALUES
('Đồ chơi giáo dục'),
('Đồ chơi thể thao'),
('Đồ chơi trẻ em');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `giohang`
--

CREATE TABLE `giohang` (
  `taikhoan` varchar(100) NOT NULL,
  `masp` int(10) NOT NULL,
  `soluong` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `giohang`
--

INSERT INTO `giohang` (`taikhoan`, `masp`, `soluong`) VALUES
('huta', 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `masp` int(10) NOT NULL,
  `tensp` varchar(255) NOT NULL,
  `hinhanh` varchar(255) NOT NULL,
  `danhmuc` varchar(100) NOT NULL,
  `mota` varchar(5000) NOT NULL,
  `dongia` int(20) NOT NULL,
  `soluong` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`masp`, `tensp`, `hinhanh`, `danhmuc`, `mota`, `dongia`, `soluong`) VALUES
(1, 'Ô tô điều khiển từ xa', 'https://mbmart.com.vn/thumb/grande/100/329/420/products/xe-o-to-dieu-khien-tu-xa-no-3699-do-choi-van-dong-thong-minh1.jpg', 'Đồ chơi trẻ em', '', 200000, 50),
(2, 'Búp bê Barbie', 'https://www.mykingdom.com.vn/cdn/shop/files/HRH07-T7439_1.jpg?v=1718678421', 'Đồ chơi trẻ em', '', 150000, 30),
(3, 'Lego Ninjago', 'https://www.mykingdom.com.vn/cdn/shop/files/71820.jpg?v=1726926173', 'Đồ chơi giáo dục', '', 300000, 20),
(4, 'Xếp hình gỗ', 'https://kendotoy.com/wp-content/uploads/2021/04/xep-hinh-100-khoi-go-tron-1.jpg', 'Đồ chơi giáo dục', '', 100000, 40),
(5, 'Bóng đá mini', 'https://salt.tikicdn.com/cache/w1200/ts/product/5e/47/92/c1440d84d5800bae44bfa880fd374596.jpg', 'Đồ chơi thể thao', '', 50000, 100),
(6, 'Khung Long', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQkFAbVtd43nA8pLgSInVn3kA0oJglN7wUOng&s', 'Đồ chơi trẻ em', '', 190000, 20),
(7, 'can cau', 'https://www.moby.com.vn/data/bt7/do-choi-ghep-hinh-go-3d-thong-minh-toys-house-1648462479.png', 'Đồ chơi trẻ em', '', 190000, 20),
(8, 'Đồ chơi mô hình in 3D mô hình robot hành động với vũ khí, búp bê có thể di chuyển nhiều khớp', 'https://img.lazcdn.com/g/p/f2bc79f9c9d49344073c569447f671f0.jpg_2200x2200q80.jpg_.webp', 'Đồ chơi trẻ em', 'Thông tin sanr phẩm:\r\n\r\nKích thước: 5.5*1.5*14cm \r\nMàu sắc: đỏ, vàng, xanh, trắng và đen\r\nChất liệu: ABS\r\nHàng mới và chất lượng cao\r\nTính năng:\r\n\r\n1. Trải nghiệm lắp ráp cá nhân: nhân vật hành động Robot thể hiện các khái niệm sáng tạo trong robot hiện đại thông qua thiết kế độc đáo và quy trình lắp ráp. Mỗi bộ phận được chế tạo tỉ mỉ, mang đến cho bạn trải nghiệm lắp ráp cá nhân và tạo ra một sản phẩm kết hợp hoàn hảo giữa tính thẩm mỹ và công nghệ.\r\n\r\n2. Vật liệu cao cấp: Được chế tạo bằng cách sử dụng in 3D tiên tiến và vật liệu ABS và PLA Chất lượng cao, các thành phần cao cấp này đảm bảo cấu trúc chắc chắn và màu sắc rực rỡ cho sản phẩm.\r\n\r\n3. Khớp nối toàn dải: Trải nghiệm sự khớp nối toàn diện của nhân vật hành động này, với mỗi khớp được chế tạo cẩn thận để cung cấp một loạt các chuyển động. Dễ dàng đặt nó trong các cấu hình khác nhau, thể hiện tính linh hoạt vượt trội.\r\n\r\n4. Công cụ hoạt hình đặc biệt: Thích hợp cho nhiều dự án hoạt hình, nhân vật hành động robot, với các khớp nối linh hoạt và thiết kế phức tạp, mang lại những câu chuyện sống động, thu hút khán giả bằng cách miêu tả sống động.', 11500, 20);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `taikhoan` varchar(100) NOT NULL,
  `matkhau` varchar(100) NOT NULL,
  `ten` varchar(255) NOT NULL,
  `sdt` int(15) NOT NULL,
  `diachi` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`taikhoan`, `matkhau`, `ten`, `sdt`, `diachi`) VALUES
('bau', 'bau', 'kim ngan', 12345678, 'nha cua huta'),
('bau1', 'bau1', 'bau', 2147483647, 'huatata'),
('huta', 'huta', 'luu quang hung', 369337783, '22 ngo 13 linh nam'),
('hutahaha', '1234', 'bau', 2147483647, 'huatata');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD PRIMARY KEY (`danhmuc`);

--
-- Chỉ mục cho bảng `giohang`
--
ALTER TABLE `giohang`
  ADD KEY `taikhoan1` (`taikhoan`),
  ADD KEY `sanpham1` (`masp`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`masp`),
  ADD KEY `danhmuc` (`danhmuc`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`taikhoan`);

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `giohang`
--
ALTER TABLE `giohang`
  ADD CONSTRAINT `sanpham1` FOREIGN KEY (`masp`) REFERENCES `sanpham` (`masp`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `taikhoan1` FOREIGN KEY (`taikhoan`) REFERENCES `user` (`taikhoan`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `danhmuc` FOREIGN KEY (`danhmuc`) REFERENCES `danhmuc` (`danhmuc`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
