-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th8 29, 2023 lúc 05:18 AM
-- Phiên bản máy phục vụ: 10.4.27-MariaDB
-- Phiên bản PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `quanlydoan`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhsachdoan`
--

CREATE TABLE `danhsachdoan` (
  `madoan` varchar(20) NOT NULL,
  `tendoan` varchar(255) NOT NULL,
  `fileimage` varchar(255) NOT NULL,
  `filedoan` varchar(255) NOT NULL,
  `khoa` varchar(255) NOT NULL,
  `chuyennganh` varchar(255) NOT NULL,
  `hedaotao` varchar(255) NOT NULL,
  `lop` varchar(255) NOT NULL,
  `giangvienhuongdan` varchar(255) NOT NULL,
  `sinhvien` varchar(255) NOT NULL,
  `diem` int(255) NOT NULL,
  `masinhvien` varchar(20) NOT NULL,
  `magiangvien` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `danhsachdoan`
--

INSERT INTO `danhsachdoan` (`madoan`, `tendoan`, `fileimage`, `filedoan`, `khoa`, `chuyennganh`, `hedaotao`, `lop`, `giangvienhuongdan`, `sinhvien`, `diem`, `masinhvien`, `magiangvien`) VALUES
('DA01', 'Quản lý đồ án sinh viên', '1668920129.anhdoan.JPG', '1668920129.thuchanh12.rar', 'Khoa học máy tính', 'Kỹ sư phần mềm', 'Chính quy', '21SE3', 'Võ Ngọc Đạt', 'Phạm Hữu Thạch', 9, '21IT235', 'GV01');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ql_chuyennganh`
--

CREATE TABLE `ql_chuyennganh` (
  `machuyennganh` varchar(20) NOT NULL,
  `tenchuyennganh` varchar(255) NOT NULL,
  `khoa` varchar(255) NOT NULL,
  `mota` varchar(255) NOT NULL,
  `makhoa` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `ql_chuyennganh`
--

INSERT INTO `ql_chuyennganh` (`machuyennganh`, `tenchuyennganh`, `khoa`, `mota`, `makhoa`) VALUES
('a1', 'Kỹ sư phần mềm', 'Khoa học máy tính', 'Kỹ sư phần mềm là một trong những ngành được các bạn trẻ yêu mến.', '1'),
('a2', 'Kỹ thuật máy tính', 'Kỹ thuật máy tính và điện tử', 'Kỹ thuật máy tính là một trong những ngành yêu thích của sinh viên', '2'),
('a3', 'Kế toán', 'Kinh tế số và thương mại điện tử', 'Ngành kế toán là một trong những ngành yêu thích của sinh viên', '3');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ql_giangvien`
--

CREATE TABLE `ql_giangvien` (
  `magiangvien` varchar(20) NOT NULL,
  `tengiangvien` varchar(255) NOT NULL,
  `sodienthoai` int(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `quequan` varchar(255) NOT NULL,
  `ngaysinh` datetime NOT NULL,
  `file` varchar(255) NOT NULL,
  `khoa` varchar(255) NOT NULL,
  `chuyennganh` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `ql_giangvien`
--

INSERT INTO `ql_giangvien` (`magiangvien`, `tengiangvien`, `sodienthoai`, `email`, `quequan`, `ngaysinh`, `file`, `khoa`, `chuyennganh`) VALUES
('GV01', 'Võ Ngọc Đạt', 934969680, 'vndat@vku.udn.vn', 'Khánh Hòa', '1980-07-19 01:14:00', '1668862860.VoNgocDat.JPG', 'Khoa học máy tính', 'Kỹ sư phần mềm');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ql_hedaotao`
--

CREATE TABLE `ql_hedaotao` (
  `mahedaotao` varchar(20) NOT NULL,
  `tenhedaotao` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `ql_hedaotao`
--

INSERT INTO `ql_hedaotao` (`mahedaotao`, `tenhedaotao`) VALUES
('DTCD', 'Cao đẳng'),
('DTCQ', 'Chính quy'),
('DTLT', 'Liên thông');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ql_khoa`
--

CREATE TABLE `ql_khoa` (
  `makhoa` varchar(20) NOT NULL,
  `tenkhoa` varchar(255) NOT NULL,
  `ngaythanhlap` datetime NOT NULL,
  `mota` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `ql_khoa`
--

INSERT INTO `ql_khoa` (`makhoa`, `tenkhoa`, `ngaythanhlap`, `mota`) VALUES
('1', 'Khoa học máy tính', '2022-12-01 20:02:00', 'Khoa khoa học máy tính là một trong những khoa của trường được các bạn trẻ yêu thích'),
('2', 'Kỹ thuật máy tính và điện tử', '2022-11-23 20:11:00', 'Khoa Kỹ thuật máy tính và điện tử (KTMT&ĐT)được hình thành trên cơ sở Khoa Công nghệ thông tin và truyền thông (SICT) Đại học Đà Nẵng.'),
('3', 'Kinh tế số và thương mại điện tử', '2022-11-26 20:22:00', 'Khoa Kinh tế số & Thương mại điện tử (KTS&TMĐT) là một trong 4 Khoa thuộc trường Đại học Công nghệ thông tin và Truyền thông Việt – Hàn, một đơn vị thành viên của Đại học Đà Nẵng.');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ql_lop`
--

CREATE TABLE `ql_lop` (
  `malop` varchar(20) NOT NULL,
  `tenlop` varchar(255) NOT NULL,
  `khoa` varchar(255) NOT NULL,
  `chuyennganh` varchar(255) NOT NULL,
  `hedaotao` varchar(255) NOT NULL,
  `machuyennganh` varchar(20) NOT NULL,
  `mahedaotao` varchar(20) NOT NULL,
  `nienkhoa` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `ql_lop`
--

INSERT INTO `ql_lop` (`malop`, `tenlop`, `khoa`, `chuyennganh`, `hedaotao`, `machuyennganh`, `mahedaotao`, `nienkhoa`) VALUES
('1', '21SE3', 'Khoa học máy tính', 'Kỹ sư phần mềm', 'Chính quy', 'a1', 'DTCQ', '2021-2026'),
('2', '21SE4', 'Khoa học máy tính', 'Kỹ sư phần mềm', 'Chính quy', 'a1', 'DTCQ', '2019-2024'),
('3', 'KT1', 'Kinh tế số và thương mại điện tử', 'Kế toán', 'Chính quy', 'a3', 'DTCQ', '2021-2026');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ql_nienkhoa`
--

CREATE TABLE `ql_nienkhoa` (
  `nienkhoa` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `ql_nienkhoa`
--

INSERT INTO `ql_nienkhoa` (`nienkhoa`) VALUES
('2019-2024'),
('2021-2026'),
('2022-2027');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ql_sinhvien`
--

CREATE TABLE `ql_sinhvien` (
  `masinhvien` varchar(20) NOT NULL,
  `tensinhvien` varchar(255) NOT NULL,
  `sodienthoai` int(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `quequan` varchar(255) NOT NULL,
  `ngaysinh` datetime NOT NULL,
  `matkhau` varchar(255) NOT NULL,
  `khoa` varchar(255) NOT NULL,
  `chuyennganh` varchar(255) NOT NULL,
  `hedaotao` varchar(255) NOT NULL,
  `lop` varchar(255) NOT NULL,
  `malop` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `ql_sinhvien`
--

INSERT INTO `ql_sinhvien` (`masinhvien`, `tensinhvien`, `sodienthoai`, `email`, `quequan`, `ngaysinh`, `matkhau`, `khoa`, `chuyennganh`, `hedaotao`, `lop`, `malop`) VALUES
('21IT235', 'Phạm Hữu Thạch', 326430775, 'thachhthlqt@gmail.com', 'Quảng Trị', '2022-11-01 14:06:00', '123456', 'Khoa học máy tính', 'Kỹ sư phần mềm', 'Chính quy', '21SE3', '1'),
('21IT248', 'Phan Thanh Tuấn', 326430775, 'tuan@gmail.com', 'Quảng Bình', '2022-12-01 23:38:00', '111111', 'Kỹ thuật máy tính và điện tử', 'Kỹ thuật máy tính', 'Chính quy', '21SE4', '2');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(4, 'Phạm Hữu Thạch', 'thachhthlqt@gmail.com', NULL, '$2y$10$6HM5NmgzlOkdKqiJdk3PaOGI5pEW7RUMB9GypS7Dqsacib4m0qMxO', NULL, '2022-11-03 05:08:41', '2022-11-03 05:08:41');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `danhsachdoan`
--
ALTER TABLE `danhsachdoan`
  ADD PRIMARY KEY (`madoan`),
  ADD KEY `masinhvien` (`masinhvien`),
  ADD KEY `magiangvien` (`magiangvien`);

--
-- Chỉ mục cho bảng `ql_chuyennganh`
--
ALTER TABLE `ql_chuyennganh`
  ADD PRIMARY KEY (`machuyennganh`),
  ADD UNIQUE KEY `tenchuyennganh` (`tenchuyennganh`),
  ADD KEY `makhoa` (`makhoa`);

--
-- Chỉ mục cho bảng `ql_giangvien`
--
ALTER TABLE `ql_giangvien`
  ADD PRIMARY KEY (`magiangvien`);

--
-- Chỉ mục cho bảng `ql_hedaotao`
--
ALTER TABLE `ql_hedaotao`
  ADD PRIMARY KEY (`mahedaotao`),
  ADD UNIQUE KEY `tenhedaotao` (`tenhedaotao`);

--
-- Chỉ mục cho bảng `ql_khoa`
--
ALTER TABLE `ql_khoa`
  ADD PRIMARY KEY (`makhoa`),
  ADD UNIQUE KEY `tenkhoa` (`tenkhoa`);

--
-- Chỉ mục cho bảng `ql_lop`
--
ALTER TABLE `ql_lop`
  ADD PRIMARY KEY (`malop`),
  ADD UNIQUE KEY `tenlop` (`tenlop`),
  ADD KEY `machuyennganh` (`machuyennganh`),
  ADD KEY `mahedaotao` (`mahedaotao`),
  ADD KEY `nienkhoa` (`nienkhoa`);

--
-- Chỉ mục cho bảng `ql_nienkhoa`
--
ALTER TABLE `ql_nienkhoa`
  ADD PRIMARY KEY (`nienkhoa`);

--
-- Chỉ mục cho bảng `ql_sinhvien`
--
ALTER TABLE `ql_sinhvien`
  ADD PRIMARY KEY (`masinhvien`),
  ADD KEY `malop` (`malop`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `danhsachdoan`
--
ALTER TABLE `danhsachdoan`
  ADD CONSTRAINT `danhsachdoan_ibfk_1` FOREIGN KEY (`masinhvien`) REFERENCES `ql_sinhvien` (`masinhvien`),
  ADD CONSTRAINT `danhsachdoan_ibfk_2` FOREIGN KEY (`magiangvien`) REFERENCES `ql_giangvien` (`magiangvien`);

--
-- Các ràng buộc cho bảng `ql_chuyennganh`
--
ALTER TABLE `ql_chuyennganh`
  ADD CONSTRAINT `ql_chuyennganh_ibfk_1` FOREIGN KEY (`makhoa`) REFERENCES `ql_khoa` (`makhoa`);

--
-- Các ràng buộc cho bảng `ql_lop`
--
ALTER TABLE `ql_lop`
  ADD CONSTRAINT `ql_lop_ibfk_1` FOREIGN KEY (`machuyennganh`) REFERENCES `ql_chuyennganh` (`machuyennganh`),
  ADD CONSTRAINT `ql_lop_ibfk_2` FOREIGN KEY (`mahedaotao`) REFERENCES `ql_hedaotao` (`mahedaotao`),
  ADD CONSTRAINT `ql_lop_ibfk_3` FOREIGN KEY (`nienkhoa`) REFERENCES `ql_nienkhoa` (`nienkhoa`);

--
-- Các ràng buộc cho bảng `ql_sinhvien`
--
ALTER TABLE `ql_sinhvien`
  ADD CONSTRAINT `ql_sinhvien_ibfk_1` FOREIGN KEY (`malop`) REFERENCES `ql_lop` (`malop`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
