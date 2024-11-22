-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 22, 2024 lúc 05:32 AM
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
  `id` int(10) NOT NULL,
  `taikhoan` varchar(100) NOT NULL,
  `masp` int(10) NOT NULL,
  `soluong` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `giohang`
--

INSERT INTO `giohang` (`id`, `taikhoan`, `masp`, `soluong`) VALUES
(27, 'huta', 1, 2),
(37, '1', 3, 2),
(40, '1', 1, 3),
(41, '1', 0, 1);

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
(0, 'Bàn Bida Mini 6 Lỗ Bộ Đồ Chơi Trẻ Em Pool Bàn Chơi Billiard Bàn Bi A Mini Phát Triển Tư Duy Sự Khéo Léo Cho Trẻ', 'https://img.lazcdn.com/g/p/f21e378647ec51d43061430f9b0508ad.jpg_2200x2200q80.jpg_.webp', 'Đồ chơi trẻ em', 'Các tính năng: 100% thương hiệu mới và chất lượng cao\r\n\r\n\r\nQuà Tặng Tuyệt Vời Cho Gia Đình: Bàn bi da hồ bơi phù hợp cho cả trẻ em và người lớn. Hơn nữa, trò chơi trong nhà có lợi để tăng cường khả năng phối hợp tay mắt và sự tập trung của trẻ.\r\n\r\n\r\nKhung để bàn: Được làm bằng nhựa dày, cao cấp, có nhiều họa tiết hơn. Toàn bộ bàn được gia cố bằng chất liệu bền, chắc chắn và bền hơn.\r\n\r\n\r\nBàn & Bóng: Bóng bida tiêu chuẩn được sử dụng trong bàn chơi bida được làm bằng nhựa dày. Có khả năng chống rơi và va chạm, bền.\r\n\r\n\r\nTròn Mượt Không Gờ: Mang đến cho bé sự chăm sóc yêu thương hơn, với các góc bo tròn, không vướng víu bàn tay non nớt của bé.\r\n\r\n\r\nNhỏ và Di động: Bộ bàn hồ bơi thu nhỏ di động này có kích thước tiết kiệm không gian lý tưởng và hoàn hảo cho những nơi bạn khôngT có chỗ cho một bàn bida kích thước đầy đủ.\r\n\r\n\r\nThú vị cho mọi lứa tuổi: Trò chơi bida trên bàn này rất phù hợp cho mọi lứa tuổi. Đủ nhỏ để trẻ em vận động dễ dàng nhưng cũng đủ chắc chắn để người lớn có thể thưởng thức. Mọi người đều có thể đánh giá cao món đồ chơi này trong đêm trò chơi gia đình.\r\n\r\n\r\nĐặc điểm kỹ thuật: Chất liệu: Nhựa\r\n\r\nMàu sắc: Như hình ảnh hiển thị\r\n\r\nTrọng lượng gói hàng: xấp xỉ 218g\r\n\r\nKích thước: 22 * 14cm\r\n\r\n\r\nGói bao gồm: 1 x Bộ đồ chơi bi-a Mini\r\n\r\n\r\nLưu ý: Xin vui lòng cho phép lỗi 1-2 cm do đo lường thủ công. xin hãy chắc chắn rằng bạn không nhớ trước khi bạn trả giá.\r\n\r\n\r\nDo sự khác biệt giữa các màn hình khác nhau, hình ảnh có thể không phản ánh màu sắc thực tế của mặt hàng. Cảm ơn bạn!', 18000, 97),
(1, 'Mô hình Thước Kẻ Học Sinh 15cm In Free Fire Cs Go Counter Strike Cf Game Hành Động', 'https://down-vn.img.susercontent.com/file/vn-11134207-7ras8-m1f93y64dqhk27_tn.webp', 'Đồ chơi trẻ em', 'Mô tả sản phẩm Mô hình Thước Kẻ Học Sinh 15cm In Free Fire Cs Go Counter Strike Cf Game Hành Động MÔ TẢ SẢN PHẨM Thân gửi các bạn: Cửa hàng FREE FIRE đã chính thức mở cửa! Chúng tôi sẽ mang đến cho bạn các chương trình khuyến mãi và sản phẩm độc quyền hấp dẫn Hãy theo dõi cửa hàng của chúng tôi để cập nhật những thông tin mới nhất Tất cả các sản phẩm này đều là hàng phân phối chính hãng ~ Tên thương hiệu: FREE FIRE tên sản phẩm:Thước Kẻ Học Sinh 15cm In Hình Mãng Xà Free Fire Cực Chất Tính năng sản phẩm: Dòng sản phẩm từ trò chơi bắn súng sinh tồn nổi tiếng thế giới [FREE FIRE] Kích thước sản phẩm:24*9*2cm trọng lượng sản phẩm:0.2kg Chất liệu sản phẩm: acrylic Bao bì sản phẩm: túi nhựa Do các phương pháp đo khác nhau, giá trị đo thực tế có thể thay đổi 1-3cm Do các yếu tố như ánh sáng, chụp ảnh, v.v., kích thước của hình ảnh chỉ mang tính chất tham khảo Cảm ơn bạn đã ghé thăm, chúc bạn mua sắm vui vẻ tại cửa hàng của chúng tôi, nếu bạn thích sản phẩm này, đừng quên để lại đánh giá 5 sao nhé (^▽^*) MÔ TẢ SẢN PHẨM Thân gửi các bạn:  Cửa hàng FREE FIRE đã chính thức mở cửa!  Chúng tôi sẽ mang đến cho bạn các chương trình khuyến mãi và sản phẩm độc quyền hấp dẫn  Hãy theo dõi cửa hàng của chúng tôi để cập nhật những thông tin mới nhất  Tất cả các sản phẩm này đều là hàng phân phối chính hãng ~    Tên thương hiệu: FREE FIRE  tên sản phẩm:Thước Kẻ Học Sinh 15cm In Hình Mãng Xà Free Fire Cực Chất  Tính năng sản phẩm: Dòng sản phẩm từ trò chơi bắn súng sinh tồn nổi tiếng thế giới [FREE FIRE]  Kích thước sản phẩm:24*9*2cm  trọng lượng sản phẩm:0.2kg  Chất liệu sản phẩm: acrylic  Bao bì sản phẩm: túi nhựa    Do các phương pháp đo khác nhau, giá trị đo thực tế có thể thay đổi 1-3cm  Do các yếu tố như ánh sáng, chụp ảnh, v.v., kích thước của hình ảnh chỉ mang tính chất tham khảo  Cảm ơn bạn đã ghé thăm, chúc bạn mua sắm vui vẻ tại cửa hàng của chúng tôi, nếu bạn thích sản phẩm này, đừng quên để lại đánh giá 5 sao nhé (^▽^*)', 200000, 11),
(2, 'Búp bê Barbie', 'https://www.mykingdom.com.vn/cdn/shop/files/HRH07-T7439_1.jpg?v=1718678421', 'Đồ chơi trẻ em', 'Robot Áo Tank Top Đồ Chơi Huấn Luyện Bé Trai Đồ Chơi Trẻ Em Biến Dạng幼儿园 Quà Tặng Ô Tô Cho Bé Trai Dưới 14 Tuổi Đồ Chơi Lắp Ráp Thông MinhRobot Áo Tank Top Đồ Chơi Huấn Luyện Bé Trai Đồ Chơi Trẻ Em Biến Dạng幼儿园 Quà Tặng Ô Tô Cho Bé Trai Dưới 14 Tuổi Đồ Chơi Lắp Ráp Thông MinhRobot Áo Tank Top Đồ Chơi Huấn Luyện Bé Trai Đồ Chơi Trẻ Em Biến Dạng幼儿园 Quà Tặng Ô Tô Cho Bé Trai Dưới 14 Tuổi Đồ Chơi Lắp Ráp Thông Minh', 150000, 3),
(3, 'Lego Ninjago', 'https://www.mykingdom.com.vn/cdn/shop/files/71820.jpg?v=1726926173', 'Đồ chơi giáo dục', 'Robot Áo Tank Top Đồ Chơi Huấn Luyện Bé Trai Đồ Chơi Trẻ Em Biến Dạng幼儿园 Quà Tặng Ô Tô Cho Bé Trai Dưới 14 Tuổi Đồ Chơi Lắp Ráp Thông MinhRobot Áo Tank Top Đồ Chơi Huấn Luyện Bé Trai Đồ Chơi Trẻ Em Biến Dạng幼儿园 Quà Tặng Ô Tô Cho Bé Trai Dưới 14 Tuổi Đồ Chơi Lắp Ráp Thông Minh', 300000, 15),
(4, 'Xếp hình gỗ', 'https://kendotoy.com/wp-content/uploads/2021/04/xep-hinh-100-khoi-go-tron-1.jpg', 'Đồ chơi giáo dục', 'Robot Áo Tank Top Đồ Chơi Huấn Luyện Bé Trai Đồ Chơi Trẻ Em Biến Dạng幼儿园 Quà Tặng Ô Tô Cho Bé Trai Dưới 14 Tuổi Đồ Chơi Lắp Ráp Thông MinhRobot Áo Tank Top Đồ Chơi Huấn Luyện Bé Trai Đồ Chơi Trẻ Em Biến Dạng幼儿园 Quà Tặng Ô Tô Cho Bé Trai Dưới 14 Tuổi Đồ Chơi Lắp Ráp Thông Minh', 100000, 36),
(5, 'Bóng đá mini', 'https://salt.tikicdn.com/cache/w1200/ts/product/5e/47/92/c1440d84d5800bae44bfa880fd374596.jpg', 'Đồ chơi thể thao', 'Robot Áo Tank Top Đồ Chơi Huấn Luyện Bé Trai Đồ Chơi Trẻ Em Biến Dạng幼儿园 Quà Tặng Ô Tô Cho Bé Trai Dưới 14 Tuổi Đồ Chơi Lắp Ráp Thông MinhRobot Áo Tank Top Đồ Chơi Huấn Luyện Bé Trai Đồ Chơi Trẻ Em Biến Dạng幼儿园 Quà Tặng Ô Tô Cho Bé Trai Dưới 14 Tuổi Đồ Chơi Lắp Ráp Thông Minh', 50000, 100),
(6, 'Robot Áo Tank Top Đồ Chơi Huấn Luyện Bé Trai Đồ Chơi Trẻ Em Biến Dạng幼儿园 Quà Tặng Ô Tô Cho Bé Trai Dưới 14 Tuổi Đồ Chơi Lắp Ráp Thông Minh', 'https://img.lazcdn.com/g/ff/kf/S7528b0e9d6974a5ba85dad7ab31c47f7b.jpg_2200x2200q80.jpg_.webp', 'Đồ chơi trẻ em', 'Robot Áo Tank Top Đồ Chơi Huấn Luyện Bé Trai Đồ Chơi Trẻ Em Biến Dạng幼儿园 Quà Tặng Ô Tô Cho Bé Trai Dưới 14 Tuổi Đồ Chơi Lắp Ráp Thông MinhRobot Áo Tank Top Đồ Chơi Huấn Luyện Bé Trai Đồ Chơi Trẻ Em Biến Dạng幼儿园 Quà Tặng Ô Tô Cho Bé Trai Dưới 14 Tuổi Đồ Chơi Lắp Ráp Thông Minh', 190000, 20),
(7, 'Hàn Quốc Macaron đầy màu sắc không thấm nước nam Unisex sinh viên thể thao kỹ thuật số đồng hồ trẻ em/đồng hồ nữ', 'https://img.lazcdn.com/g/p/f110938118cd984784b03ede0feb8599.jpg_2200x2200q80.jpg_.webp', 'Đồ chơi trẻ em', '[Tài liệu]:\n- Chất liệu dây đeo: cao su\n- Chất liệu gương: Kính\n- Kiểu khóa: Khóa kim\n\n- Chất liệu khóa: cao su\n\n- Vật liệu vỏ: cao su+hợp kim\n\n[Loại hành động]\n\n- Số lượng\n\n[Chức năng chính]:\n\n- Chống thấm nước: Có\n\n- Khả năng chống nước: 30m (vui lòng tránh nước nóng, không ngâm mình trong nước quá lâu)\n\n- Chức năng đặc biệt:\n\nLịch, Đồng hồ báo thức, Đồng hồ bấm giờ, Đèn EL\n\n[Thông tin kích thước]:\n\n- Đường kính quay số: 40mm\n\n- Độ dày quay số: 15mm\n\n- Chiều rộng vải: 20mm\n\n- Chiều dài dây đeo: 235mm (có thể điều chỉnh)\n\nĐóng gói:\n\nĐồng hồ 1x (không có hộp quà tặng, không có vòng đeo tay)', 190000, 16),
(8, 'Đồ chơi mô hình in 3D mô hình robot hành động với vũ khí, búp bê có thể di chuyển nhiều khớp', 'https://img.lazcdn.com/g/p/f2bc79f9c9d49344073c569447f671f0.jpg_2200x2200q80.jpg_.webp', 'Đồ chơi trẻ em', 'Thông tin sanr phẩm:\r\n\r\nKích thước: 5.5*1.5*14cm \r\nMàu sắc: đỏ, vàng, xanh, trắng và đen\r\nChất liệu: ABS\r\nHàng mới và chất lượng cao\r\nTính năng:\r\n\r\n1. Trải nghiệm lắp ráp cá nhân: nhân vật hành động Robot thể hiện các khái niệm sáng tạo trong robot hiện đại thông qua thiết kế độc đáo và quy trình lắp ráp. Mỗi bộ phận được chế tạo tỉ mỉ, mang đến cho bạn trải nghiệm lắp ráp cá nhân và tạo ra một sản phẩm kết hợp hoàn hảo giữa tính thẩm mỹ và công nghệ.\r\n\r\n2. Vật liệu cao cấp: Được chế tạo bằng cách sử dụng in 3D tiên tiến và vật liệu ABS và PLA Chất lượng cao, các thành phần cao cấp này đảm bảo cấu trúc chắc chắn và màu sắc rực rỡ cho sản phẩm.\r\n\r\n3. Khớp nối toàn dải: Trải nghiệm sự khớp nối toàn diện của nhân vật hành động này, với mỗi khớp được chế tạo cẩn thận để cung cấp một loạt các chuyển động. Dễ dàng đặt nó trong các cấu hình khác nhau, thể hiện tính linh hoạt vượt trội.\r\n\r\n4. Công cụ hoạt hình đặc biệt: Thích hợp cho nhiều dự án hoạt hình, nhân vật hành động robot, với các khớp nối linh hoạt và thiết kế phức tạp, mang lại những câu chuyện sống động, thu hút khán giả bằng cách miêu tả sống động.', 11500, 3),
(10, 'Hoạt Hình Dễ Thương Ngáy capybara capybara Chảy Nước Mũi Gấu Bông Sang Trọng Đồ Chơi Nhồi Bông Búp Bê Sáng Tạo Quà Tặng Cho Bé Gái', 'https://img.lazcdn.com/g/p/fb2f062bae4afc07a54d5cb2c43d18ec.jpg_2200x2200q80.jpg_.webp', 'Đồ chơi trẻ em', 'Gấu bông chuột Capybara 30cm Mềm mại và dễ thương ️ Nhà máy gấu Hoa Bình ️ - Nhồi bông xinh xắn được thiết kế như một chiếc gối nhung co giãn 4 chiều làm bằng vải Nhung Hàn Quốc\r\n- Rất được khách hàng trẻ yêu thích, cam kết an toàn sức khỏe\r\n- Được may bằng chất liệu vải nhung co giãn 4 chiều, mềm mại, tạo cảm giác thoải mái cho người sử dụng\r\n- Không rụng lông trong quá trình sử dụng - có thể gội sạch trong quá trình sử dụng\r\n️Màu nâu\r\n️Chất liệu: 100% cotton cao cấp.\r\n️ Kích THƯỚC: 30cm (có thể có sai số sản xuất + -2cm)\r\n️ Xuất xứ: Việt Nam\r\n-Bảo Hành: chỉ may trọn đời.\r\n-Giao Hàng trên toàn quốc.\r\n️ Chất liệu vải co giãn 4 chiều siêu mềm mịn\r\n️ 100% cotton trắng\r\nĐảm bảo cửa hàng Sản phẩm mềm hơn và lớn hơn so với các sản phẩm tương tự được bán trên Shopee\r\nNếu không đúng như mô tả, khách hàng có thể trả lại sản phẩm hoàn toàn!\r\n#Capybara #capybaramouse#capybaratowel#towel#towel\r\n水豚老鼠泰迪熊 30 厘米 柔软可爱 ️ Hoa Binh 熊工厂 ️ - 可爱的毛绒动物设计像韩国天鹅绒面料制成的 4 向弹力天鹅绒枕头\r\n- 很受年轻顾客欢迎，橙色 健康和安全连接\r\n- 柔软制成，4 -单向弹力天鹅绒面料，为使用者营造舒适感觉\r\n-使用过程中不掉毛 -使用过程中可水洗\r\n️颜色棕色\r\n️材质：100%优质棉。\r\n️尺寸：30cm（可能有生产误差+-2cm）\r\n️产地：越南\r\n-保修：终身缝纫线。\r\n-全国范围内送货。\r\n️ 超柔软光滑的四向弹力面料\r\n️ 100%白棉\r\n店铺保证 产品比 Shopee 上出售的同类产品更柔软、更大\r\n如果与描述不一样，客户可以完全退货！\r\n#Capybara #capybaramouse #capybaratowel #towel #towel', 54000, 97),
(11, 'Đồ chơi cướp biển mới thú vị, Trò chơi đâm cướp biển siêu kịch tính cho bé, Đồ chơi cho bé phát triển trí thông minh, Quà sinh nhật cho bé', 'https://img.lazcdn.com/g/ff/kf/S6f65e4dedc1a4150a1c6cd60091728c0F.jpg_720x720q80.jpg', 'Đồ chơi trẻ em', 'Đặc tính sản phẩm Đồ chơi cướp biển mới thú vị, Trò chơi đâm cướp biển siêu kịch tính cho bé, Đồ chơi cho bé phát triển trí thông minh, Quà sinh nhật cho bé\r\nThương hiệuNo BrandSKU2520521156_VNAMZ-12355579917Giới tínhUnisexXuất xứTrung QuốcPinKhôngThương hiệu nổi bậtnoĐộ tuổi phù hợpTừ 3 tuổi trở lênĐặc tính sản phẩm Đồ chơi cướp biển mới thú vị, Trò chơi đâm cướp biển siêu kịch tính cho bé, Đồ chơi cho bé phát triển trí thông minh, Quà sinh nhật cho bé\r\nThương hiệuNo BrandSKU2520521156_VNAMZ-12355579917Giới tínhUnisexXuất xứTrung QuốcPinKhôngThương hiệu nổi bậtnoĐộ tuổi phù hợpTừ 3 tuổi trở lên', 12300, 32),
(12, 'Đồ Chơi Cho Trẻ Em Trò Chơi Xếp Hình Trên Bàn Mini Gõ Nhấp Nháy Có Nhạc Tương Tác Lý Tưởng Cho Các Bữa Tiệc', 'https://img.lazcdn.com/g/p/dee3e32a27169263613acdce406da500.jpg_2200x2200q80.jpg_.webp', 'Đồ chơi trẻ em', '- Đồ chơi trò chơi phá băng mang đến cho bạn nhiều niềm vui hơn mà không cần những trò chơi phức tạp. Lần lượt quay bánh xe và đánh các viên đá theo màu sắc và số lượng của chúng.\r\n\r\n- Bộ đồ chơi tàu phá băng rất phù hợp cho sự tương tác giữa cha mẹ và con cái, giúp bạn vừa cảm nhận được sự ấm áp của gia đình, vừa có niềm vui cùng bé.\r\n\r\n- Trò chơi board game Penguin đang thúc đẩy sự phát triển lành mạnh của trí não trẻ em, cải thiện khả năng phản ứng và trở thành đồ chơi giáo dục sớm.\r\n\r\n- Đồ chơi tàu phá băng Penguin mang đến cho bé những trải nghiệm hoàn hảo. Cực kỳ bền, chắc chắn, không có gờ và có độ bền lâu dài. Được làm bằng vật liệu ABS chất lượng cao.\r\n\r\nĐồ chơi để bàn Penguin Icebreaker rất phù hợp cho trẻ chơi, phát triển khả năng phối hợp tay và mắt và thúc đẩy sự phát triển trí não khỏe mạnh.\r\n\r\nKích thước bao bì khoảng 12,5x10x2,4cm\'\r\nbao gồm\r\nBảng khung * 1\r\nChim Cánh Cụt*1\r\nBàn xoay*1\r\nChân máy*4\r\nBúa*2\r\nKhối băng xanh*19\r\nChậu đá trắng*19\r\n\r\nĐể ý\r\nDo hiệu ứng ánh sáng và góc chụp, có thể có sự khác biệt về màu sắc trong sản phẩm, xin vui lòng thông cảm.\r\nKích thước sản phẩm có thể yêu cầu đo thủ công.', 8000, 56),
(13, 'Đồ Chơi Cá Sấu Cắn Tay Loại To, Cá Mập Cắn Tay Vui Nhộn, Khám Răng Khủng Long Gắn Kết Gia Đình', 'https://img.lazcdn.com/g/p/0f9192b3e93028a83bf8ffa52437cb32.png_2200x2200q80.png_.webp', 'Đồ chơi trẻ em', '1. THÔNG TIN SẢN PHẨM\r\n\r\nTên sản phẩm: Cá sấu đồ chơi \r\nChất liệu: nhựa.\r\nKích thước : 15,5cm x 13,5cm x 12 cm\r\nBao bì: Hộp đựng bằng giấy\r\n\r\nĐặc tính sản phẩm Đồ Chơi Cá Sấu Cắn Tay Loại To, Cá Mập Cắn Tay Vui Nhộn, Khám Răng Khủng Long Gắn Kết Gia Đình\r\nThương hiệuNo BrandSKU2676653997_VNAMZ-13106307342Game GenreGia đìnhLoại bảo hànhKhông bảo hành\r\nBộ sản phẩm gồm	1 SẢN PHẨM', 23400, 87),
(14, '32pcs Mini cờ vua đặt gấp nhựa bàn cờ nhà ngoài trời di động Kid đồ chơi', 'https://img.lazcdn.com/g/p/5b782d3794e28ba2a7df46ec1b589727.png_2200x2200q80.png_.webp', 'Đồ chơi giáo dục', '32pcs Mini cờ vua đặt gấp Nhựa Bàn Cờ trọng lượng nhẹ Hội Đồng Quản trị trò chơi nhà ngoài trời di động Kid đồ chơi dropshipping\r\n\r\nMô tả:\r\n1. Bàn cờ Mỗi quân cờ có một điểm thu hút ánh sáng đến sân chơi 64 ô vuông.\r\n2. Trọng lượng nhẹ sẽ làm cho nó ổn định để chơi trong khi không khó để di chuyển mảnh.\r\n3. Bàn cờ có kích thước hoàn hảo này đủ nhỏ để đi du lịch, nhưng cũng đủ lớn để chơi thoải mái.\r\n4. Thiết kế có thể gập lại, Quân cờ có thể được đưa vào bàn cờ để lưu trữ dễ dàng.\r\n5. Thích hợp cho gia đình, công ty, trường học, hành trình, xe buýt hoặc dã ngoại.\r\n\r\nThông số kỹ thuật:\r\nVật chất: Nhựa\r\nKích thước: Mở: 13x12.6cm\r\nMàu: Đen, Trắng\r\n\r\nGói bao gồm:\r\n1 x bàn cờ.\r\n32 x quân cờ.\r\n\r\nChú ý:\r\n1. Do đo bằng tay, có thể có lỗi 0-1cm, vui lòng hiểu.\r\n2. sự khác biệt màu sắc có thể thay đổi tùy thuộc vào cài đặt màn hình.', 31500, 176),
(15, '[Loại To] Combo Đất Sét Tự Khô Nhật Bản 12/24/36 Màu Cao Cấp Đồ Chơi Trẻ Em Trí Tuệ Phát Triển Tư Duy - Little Kobo', 'https://img.lazcdn.com/g/p/288eee3e601f427795745f20178a31a9.jpg_2200x2200q80.jpg_.webp', 'Đồ chơi giáo dục', '- Rèn luyện sự KHÉO LÉO, KIÊN NHẪN cho đôi tay khi xếp những mảnh ghép với nhau.\r\n\r\n- Giúp các bé vừa được vui chơi, vừa được phát triển trí tưởng tượng , tư duy Logic.\r\n\r\n- Qua nhiều lần chơi với những trò xếp hình quen thuộc, bé sẽ phản ứng nhanh hơn và phấn khích hơn.\r\n\r\n- Giúp các bé tiếp thu được nhanh chóng các kiến thức cơ bản.\r\n\r\n- Giúp trẻ dần phát triển tư duy logic, phát triển trí nhớ.\r\n\r\n- Giúp bé làm quen, nhân biết thế giới xung quanh với các Con vật, Phương Tiện giao thông, Màu sắc… thông qua nhiều chủ đề mà Tranh đem lại.\r\n\r\n\r\nTHÔNG TIN SẢN PHẨM\r\n\r\n- Nếu đất bị ẩm hoặc nhão quá thì bạn có thể mở túi zip để ngoài nhiệt độ thường cho đất tự khô lại. (Lưu ý kiểm tra thường xuyên để đạt được độ khô mong muốn).\r\n\r\n- Chất liệu: Đất sét.\r\n\r\n- Số lượng: 1 bịch đất sét 12/24/36 màu, tương đương với 12/24/36 gói màu, tặng kèm bộ dụng cụ.\r\n\r\n- Màu sắc: Nhiều màu, màu sắc rất tươi sáng.\r\n\r\n\r\nCÁCH CHƠI\r\n\r\n- Bước 1: Lau khô tay. Lấy 1 ít đất sét ra và vo lại, lúc này đất sét có thể hơi dính. Khoảng 3 - 4 phút sau đất sét sẽ bắt đầu tự khô lại.\r\n\r\n- Bước 2: Làm tương tự. Bước vò đất sét thành 1 cục tròn hơi tốn thời gian cần sự kiên nhẫn.\r\n\r\n- Bước 3: Khi đất sét đã thành 1 cục tròn, bỏ vào hủ tránh gió.\r\n\r\n- Bước 4: Nặn hình theo ý thích.\r\n\r\n\r\nCAM KẾT\r\n\r\n- Sản phẩm y chang mô tả.\r\n\r\n- Số lượng tồn kho được cập nhật chính xác 100%.\r\n\r\n- Được phép đổi trả nếu không hài lòng trong vòng 3 ngày nhận hàng.\r\n\r\n- Thời gian chuẩn bị hàng siêu tốc trong vòng 24h', 18000, 74);

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
('1', '1', '1', 1, '1'),
('bau', 'bau', 'kim ngan', 12345678, 'nha cua huta'),
('huta', 'huta', 'luu quang hung', 369337783, '22 ngo 13 linh nam');

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
  ADD PRIMARY KEY (`id`),
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
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `giohang`
--
ALTER TABLE `giohang`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

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
