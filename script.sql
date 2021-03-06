USE [master]
GO
/****** Object:  Database [AppleStore]    Script Date: 28/07/2021 11:47:49 CH ******/
CREATE DATABASE [AppleStore]
GO
ALTER DATABASE [AppleStore] SET COMPATIBILITY_LEVEL = 150
GO

ALTER DATABASE [AppleStore] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [AppleStore] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [AppleStore] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [AppleStore] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [AppleStore] SET ARITHABORT OFF 
GO
ALTER DATABASE [AppleStore] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [AppleStore] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [AppleStore] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [AppleStore] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [AppleStore] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [AppleStore] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [AppleStore] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [AppleStore] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [AppleStore] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [AppleStore] SET  ENABLE_BROKER 
GO
ALTER DATABASE [AppleStore] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [AppleStore] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [AppleStore] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [AppleStore] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [AppleStore] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [AppleStore] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [AppleStore] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [AppleStore] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [AppleStore] SET  MULTI_USER 
GO
ALTER DATABASE [AppleStore] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [AppleStore] SET DB_CHAINING OFF 
GO
ALTER DATABASE [AppleStore] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [AppleStore] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [AppleStore] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [AppleStore] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [AppleStore] SET QUERY_STORE = OFF
GO
USE [AppleStore]
GO
/****** Object:  Table [dbo].[Cart]    Script Date: 28/07/2021 11:47:49 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cart](
	[User] [varchar](50) NOT NULL,
	[MaSP] [varchar](10) NOT NULL,
	[SL] [int] NULL,
 CONSTRAINT [PK_Cart] PRIMARY KEY CLUSTERED 
(
	[User] ASC,
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CT_DC]    Script Date: 28/07/2021 11:47:49 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CT_DC](
	[User] [varchar](50) NOT NULL,
	[DCID] [varchar](10) NOT NULL,
 CONSTRAINT [PK_CT_DC] PRIMARY KEY CLUSTERED 
(
	[User] ASC,
	[DCID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CTOrder]    Script Date: 28/07/2021 11:47:49 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CTOrder](
	[MaDH] [varchar](10) NOT NULL,
	[MaSP] [varchar](10) NOT NULL,
	[TenSP] [nvarchar](50) NULL,
	[Description] [varchar](50) NULL,
	[SL] [int] NULL,
	[GiaBan] [int] NULL,
	[Tong] [int] NULL,
 CONSTRAINT [PK_CTOrder] PRIMARY KEY CLUSTERED 
(
	[MaDH] ASC,
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DanhMuc]    Script Date: 28/07/2021 11:47:49 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DanhMuc](
	[MaDM] [varchar](10) NOT NULL,
	[TenDM] [nvarchar](50) NULL,
 CONSTRAINT [PK_DanhMuc] PRIMARY KEY CLUSTERED 
(
	[MaDM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Discount]    Script Date: 28/07/2021 11:47:49 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Discount](
	[DCID] [varchar](10) NOT NULL,
	[TenDC] [nvarchar](50) NULL,
	[MoTa] [nvarchar](max) NULL,
	[Giam] [int] NULL,
 CONSTRAINT [PK_Discount] PRIMARY KEY CLUSTERED 
(
	[DCID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 28/07/2021 11:47:49 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[SDT] [varchar](10) NOT NULL,
	[FullName] [nvarchar](50) NULL,
	[Address] [nvarchar](max) NULL,
	[User] [varchar](50) NOT NULL,
	[ThanhPho] [nvarchar](50) NULL,
	[Quan] [nvarchar](50) NULL,
	[Phuong] [nvarchar](50) NULL,
 CONSTRAINT [PK_KhachHang] PRIMARY KEY CLUSTERED 
(
	[SDT] ASC,
	[User] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiSP]    Script Date: 28/07/2021 11:47:49 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiSP](
	[MaLSP] [varchar](15) NOT NULL,
	[TenLSP] [nvarchar](50) NULL,
	[MaDM] [varchar](10) NULL,
 CONSTRAINT [PK_LoaiSP] PRIMARY KEY CLUSTERED 
(
	[MaLSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 28/07/2021 11:47:49 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[MaDH] [varchar](10) NOT NULL,
	[TongDH] [int] NULL,
	[TongSP] [int] NULL,
	[TongDC] [int] NULL,
	[TongShip] [int] NULL,
	[User] [varchar](50) NULL,
	[DCID] [varchar](10) NULL,
	[Address] [nvarchar](max) NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[MaDH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rate]    Script Date: 28/07/2021 11:47:49 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rate](
	[RateID] [varchar](10) NOT NULL,
	[RateImg] [varchar](50) NULL,
	[Text] [nvarchar](max) NULL,
	[User] [varchar](50) NULL,
	[MaSP] [varchar](10) NULL,
 CONSTRAINT [PK_Rate] PRIMARY KEY CLUSTERED 
(
	[RateID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 28/07/2021 11:47:49 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[MaSP] [varchar](10) NOT NULL,
	[MaLSP] [varchar](15) NULL,
	[TenSP] [nvarchar](50) NULL,
	[DonGia] [int] NULL,
	[GiaKM] [int] NULL,
	[img] [varchar](max) NULL,
	[img2] [varchar](max) NULL,
	[img3] [varchar](max) NULL,
	[img4] [varchar](max) NULL,
	[SLTon] [int] NULL,
	[Description] [nvarchar](max) NULL,
	[MoreInfo] [nvarchar](max) NULL,
	[Views] [int] NULL,
	[LoaiHang] [int] NULL,
	[DataAdd] [date] NULL,
 CONSTRAINT [PK_SanPham] PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 28/07/2021 11:47:49 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiKhoan](
	[User] [varchar](50) NOT NULL,
	[Pass] [varchar](20) NULL,
 CONSTRAINT [PK_TaiKhoan] PRIMARY KEY CLUSTERED 
(
	[User] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaiKhoanAdmin]    Script Date: 28/07/2021 11:47:49 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiKhoanAdmin](
	[User] [varchar](50) NULL,
	[Pass] [varchar](20) NULL
) ON [PRIMARY]
GO
INSERT [dbo].[Cart] ([User], [MaSP], [SL]) VALUES (N'admin', N'ATLN', 1)
INSERT [dbo].[Cart] ([User], [MaSP], [SL]) VALUES (N'admin', N'IMACBL', 1)
INSERT [dbo].[Cart] ([User], [MaSP], [SL]) VALUES (N'admin', N'IMACMH', 1)
INSERT [dbo].[Cart] ([User], [MaSP], [SL]) VALUES (N'admin', N'IP12P', 1)
INSERT [dbo].[Cart] ([User], [MaSP], [SL]) VALUES (N'long25', N'IMACMH', 1)
INSERT [dbo].[Cart] ([User], [MaSP], [SL]) VALUES (N'long25', N'IP11B', 1)
INSERT [dbo].[Cart] ([User], [MaSP], [SL]) VALUES (N'long25', N'IP11G', 3)
INSERT [dbo].[Cart] ([User], [MaSP], [SL]) VALUES (N'long25', N'IPADAGL', 1)
GO
INSERT [dbo].[CTOrder] ([MaDH], [MaSP], [TenSP], [Description], [SL], [GiaBan], [Tong]) VALUES (N'DH01', N'IMACBL', NULL, NULL, 1, 1599, 1599)
GO
INSERT [dbo].[DanhMuc] ([MaDM], [TenDM]) VALUES (N'AW', N'Apple Watch')
INSERT [dbo].[DanhMuc] ([MaDM], [TenDM]) VALUES (N'IP', N'IPhone')
INSERT [dbo].[DanhMuc] ([MaDM], [TenDM]) VALUES (N'IPAD', N'IPAD')
INSERT [dbo].[DanhMuc] ([MaDM], [TenDM]) VALUES (N'MAC', N'MAC')
INSERT [dbo].[DanhMuc] ([MaDM], [TenDM]) VALUES (N'PK', N'Phụ Kiện')
GO
INSERT [dbo].[Discount] ([DCID], [TenDC], [MoTa], [Giam]) VALUES (N'1', N'abxc', N'dsa', 10)
GO
INSERT [dbo].[KhachHang] ([SDT], [FullName], [Address], [User], [ThanhPho], [Quan], [Phuong]) VALUES (N'0334052502', N'Nguyen Thanh Long', N'Tan Tuc Binh Chanh', N'long25', NULL, NULL, NULL)
INSERT [dbo].[KhachHang] ([SDT], [FullName], [Address], [User], [ThanhPho], [Quan], [Phuong]) VALUES (N'1111111111', N'admin', N'admin', N'admin', N'Tỉnh Ninh Thuận', N'Thành phố Phan Rang-Tháp Chàm', N'Phường Phước Mỹ')
GO
INSERT [dbo].[LoaiSP] ([MaLSP], [TenLSP], [MaDM]) VALUES (N'APC', N'AirPod Charge', N'PK')
INSERT [dbo].[LoaiSP] ([MaLSP], [TenLSP], [MaDM]) VALUES (N'APW', N'AirPod Wirless', N'PK')
INSERT [dbo].[LoaiSP] ([MaLSP], [TenLSP], [MaDM]) VALUES (N'AT', N'AirTag', N'PK')
INSERT [dbo].[LoaiSP] ([MaLSP], [TenLSP], [MaDM]) VALUES (N'AW6', N'Apple Watch S6', N'AW')
INSERT [dbo].[LoaiSP] ([MaLSP], [TenLSP], [MaDM]) VALUES (N'AWSE', N'Apple Watch SE', N'AW')
INSERT [dbo].[LoaiSP] ([MaLSP], [TenLSP], [MaDM]) VALUES (N'IMAC', N'IMac', N'MAC')
INSERT [dbo].[LoaiSP] ([MaLSP], [TenLSP], [MaDM]) VALUES (N'IMACM', N'IMacMini', N'MAC')
INSERT [dbo].[LoaiSP] ([MaLSP], [TenLSP], [MaDM]) VALUES (N'IP11', N'IPhone11', N'IP')
INSERT [dbo].[LoaiSP] ([MaLSP], [TenLSP], [MaDM]) VALUES (N'IP12', N'IPhone12', N'IP')
INSERT [dbo].[LoaiSP] ([MaLSP], [TenLSP], [MaDM]) VALUES (N'IP12M', N'IPhone12Mini', N'IP')
INSERT [dbo].[LoaiSP] ([MaLSP], [TenLSP], [MaDM]) VALUES (N'IPADA', N'IPadAir', N'IPAD')
INSERT [dbo].[LoaiSP] ([MaLSP], [TenLSP], [MaDM]) VALUES (N'IPADG', N'IPadGen', N'IPAD')
INSERT [dbo].[LoaiSP] ([MaLSP], [TenLSP], [MaDM]) VALUES (N'IPADM', N'IPadMini', N'IPAD')
INSERT [dbo].[LoaiSP] ([MaLSP], [TenLSP], [MaDM]) VALUES (N'IPADP', N'IPadPro', N'IPAD')
INSERT [dbo].[LoaiSP] ([MaLSP], [TenLSP], [MaDM]) VALUES (N'IPXR', N'IPhoneXr', N'IP')
INSERT [dbo].[LoaiSP] ([MaLSP], [TenLSP], [MaDM]) VALUES (N'MBA', N'MacbookAir', N'MAC')
INSERT [dbo].[LoaiSP] ([MaLSP], [TenLSP], [MaDM]) VALUES (N'MBP', N'MacbookPro', N'MAC')
INSERT [dbo].[LoaiSP] ([MaLSP], [TenLSP], [MaDM]) VALUES (N'PKAW', N'Phụ Kiện Apple Watch', N'PK')
INSERT [dbo].[LoaiSP] ([MaLSP], [TenLSP], [MaDM]) VALUES (N'PKIPAD', N'Phụ Kiện  IPad', N'PK')
INSERT [dbo].[LoaiSP] ([MaLSP], [TenLSP], [MaDM]) VALUES (N'PKIPHONE', N'Phụ Kiện IPhone', N'PK')
INSERT [dbo].[LoaiSP] ([MaLSP], [TenLSP], [MaDM]) VALUES (N'PKMAC', N'Phụ Kiện Mac', N'PK')
GO
INSERT [dbo].[Order] ([MaDH], [TongDH], [TongSP], [TongDC], [TongShip], [User], [DCID], [Address]) VALUES (N'DH01', 1599, 1599, 10, NULL, N'long25', NULL, NULL)
GO
INSERT [dbo].[SanPham] ([MaSP], [MaLSP], [TenSP], [DonGia], [GiaKM], [img], [img2], [img3], [img4], [SLTon], [Description], [MoreInfo], [Views], [LoaiHang], [DataAdd]) VALUES (N'APCC', N'APC', N'AirPod Charge Case', 249, 0, N'img/product/APC/airpods-charge-case-201910.png', N'img/product/APC/airpods-charge-case-201910 - Copy.png', N'img/product/APC/airpods-charge-case-201910 - Copy (3).png', N'img/product/APC/airpods-charge-case-201910 - Copy (2).png', 100, N'Đang Cập Nhật', N'Đang Cập Nhật', 0, 1, NULL)
INSERT [dbo].[SanPham] ([MaSP], [MaLSP], [TenSP], [DonGia], [GiaKM], [img], [img2], [img3], [img4], [SLTon], [Description], [MoreInfo], [Views], [LoaiHang], [DataAdd]) VALUES (N'APWC', N'APW', N'AirPod Wirless Case', 229, 0, N'img/product/APW/airpods-wireless-charge-case-201910.png', N'img/product/APW/airpods-wireless-charge-case-201910 - Copy.png', N'img/product/APW/airpods-wireless-charge-case-201910 - Copy (3).png', N'img/product/APW/airpods-wireless-charge-case-201910 - Copy (2).png', 100, N'Đang Cập Nhật', N'Đang Cập Nhật', 0, 3, NULL)
INSERT [dbo].[SanPham] ([MaSP], [MaLSP], [TenSP], [DonGia], [GiaKM], [img], [img2], [img3], [img4], [SLTon], [Description], [MoreInfo], [Views], [LoaiHang], [DataAdd]) VALUES (N'ATKR', N'AT', N'AirTag Leather Key Ring', 29, 0, N'img/product/AT/airtag-double-select-202104.jpg', N'img/product/AT/apple-airtag-loop-mau-cam.jpg', N'img/product/AT/apple-airtag-loop-1.jpg', N'img/product/AT/apple-airtag-leather-key-ring.jpg', 100, N'Đang Cập Nhật', N'Đang Cập Nhật', 0, 3, NULL)
INSERT [dbo].[SanPham] ([MaSP], [MaLSP], [TenSP], [DonGia], [GiaKM], [img], [img2], [img3], [img4], [SLTon], [Description], [MoreInfo], [Views], [LoaiHang], [DataAdd]) VALUES (N'ATLN', N'AT', N'AirTag Loop', 29, 0, N'img/product/AT/apple-airtag-loop-mau-trang.jpg', N'img/product/AT/apple-airtag-loop-mau-cam.jpg', N'img/product/AT/apple-airtag-loop-1.jpg', N'img/product/AT/apple-airtag-leather-key-ring.jpg', 100, N'Đang Cập Nhật', N'Đang Cập Nhật', 0, 2, NULL)
INSERT [dbo].[SanPham] ([MaSP], [MaLSP], [TenSP], [DonGia], [GiaKM], [img], [img2], [img3], [img4], [SLTon], [Description], [MoreInfo], [Views], [LoaiHang], [DataAdd]) VALUES (N'AWS6GL', N'AW6', N'Apple Watch S6 Golden', 499, 0, N'img/product/AW6/apple-watch-series-6-40mm-gps-vien-nhom-vang-day-cao-su-full-vat_3.jpg', N'img/product/AW6/product.png', N'img/product/AW6/apple-watch-series-6-40mm-gps-vien-nhom-bac-day-cao-su-full-vat_3.jpg', N'img/product/AW6/apple-watch-series-6-40mm-4g-vien-nhom-xam-day-cao-su-full-vat_3_1.jpg', 100, N'Đang Cập Nhật', N'Đang Cập Nhật', 0, 1, NULL)
INSERT [dbo].[SanPham] ([MaSP], [MaLSP], [TenSP], [DonGia], [GiaKM], [img], [img2], [img3], [img4], [SLTon], [Description], [MoreInfo], [Views], [LoaiHang], [DataAdd]) VALUES (N'AWS6Gr', N'AW6', N'Apple Watch S6 Grey', 499, 0, N'img/product/AW6/apple-watch-series-6-40mm-4g-vien-nhom-xam-day-cao-su-full-vat_3_1.jpg', NULL, NULL, NULL, 100, N'Đang Cập Nhật', N'Đang Cập Nhật', 0, 3, NULL)
INSERT [dbo].[SanPham] ([MaSP], [MaLSP], [TenSP], [DonGia], [GiaKM], [img], [img2], [img3], [img4], [SLTon], [Description], [MoreInfo], [Views], [LoaiHang], [DataAdd]) VALUES (N'AWS6S', N'AW6', N'Apple Watch S6 Silver', 499, 0, N'img/product/AW6/apple-watch-series-6-40mm-gps-vien-nhom-bac-day-cao-su-full-vat_3.jpg', NULL, NULL, NULL, 100, N'Đang Cập Nhật', N'Đang Cập Nhật', 0, 3, NULL)
INSERT [dbo].[SanPham] ([MaSP], [MaLSP], [TenSP], [DonGia], [GiaKM], [img], [img2], [img3], [img4], [SLTon], [Description], [MoreInfo], [Views], [LoaiHang], [DataAdd]) VALUES (N'AWSEGL', N'AWSE', N'Apple Watch SE Silver', 399, 0, N'img/product/AWSE/watch-se-44mm-_gps.jpg', NULL, NULL, NULL, 100, N'Đang Cập Nhật', N'Đang Cập Nhật', 0, 1, NULL)
INSERT [dbo].[SanPham] ([MaSP], [MaLSP], [TenSP], [DonGia], [GiaKM], [img], [img2], [img3], [img4], [SLTon], [Description], [MoreInfo], [Views], [LoaiHang], [DataAdd]) VALUES (N'AWSEGr', N'AWSE', N'Apple Watch SE Grey', 399, 0, N'img/product/AWSE/watch-se-40mm-_gps_xam.jpg', NULL, NULL, NULL, 100, N'Đang Cập Nhật', N'Đang Cập Nhật', 0, 3, NULL)
INSERT [dbo].[SanPham] ([MaSP], [MaLSP], [TenSP], [DonGia], [GiaKM], [img], [img2], [img3], [img4], [SLTon], [Description], [MoreInfo], [Views], [LoaiHang], [DataAdd]) VALUES (N'AWSES', N'AWSE', N'Apple Watch SE Golden', 399, 0, N'img/product/AWSE/watch-se-44mm-_gps_white.jpg', NULL, NULL, NULL, 100, N'Đang Cập Nhật', N'Đang Cập Nhật', 0, 3, NULL)
INSERT [dbo].[SanPham] ([MaSP], [MaLSP], [TenSP], [DonGia], [GiaKM], [img], [img2], [img3], [img4], [SLTon], [Description], [MoreInfo], [Views], [LoaiHang], [DataAdd]) VALUES (N'IMACBL', N'IMAC', N'Imac BLUE', 1599, 0, N'img/product/IMAC/imac-24-blue-selection-hero-202104.jpg', NULL, NULL, NULL, 100, N'Đang Cập Nhật', N'Đang Cập Nhật', 0, 3, NULL)
INSERT [dbo].[SanPham] ([MaSP], [MaLSP], [TenSP], [DonGia], [GiaKM], [img], [img2], [img3], [img4], [SLTon], [Description], [MoreInfo], [Views], [LoaiHang], [DataAdd]) VALUES (N'IMACG', N'IMAC', N'Imac GREEN', 1599, 0, N'img/product/IMAC/imac-24-green-selection-hero-202104.jpg', NULL, NULL, NULL, 100, N'Đang Cập Nhật', N'Đang Cập Nhật', 0, 3, NULL)
INSERT [dbo].[SanPham] ([MaSP], [MaLSP], [TenSP], [DonGia], [GiaKM], [img], [img2], [img3], [img4], [SLTon], [Description], [MoreInfo], [Views], [LoaiHang], [DataAdd]) VALUES (N'IMACMH', N'IMACM', N'IMacMini HERO', 1599, 0, N'img/product/IMACM/mac-mini-hero-202011.jpg', N'', N'', N'', 100, N'Đang Cập Nhật', N'Đang Cập Nhật', 0, 2, NULL)
INSERT [dbo].[SanPham] ([MaSP], [MaLSP], [TenSP], [DonGia], [GiaKM], [img], [img2], [img3], [img4], [SLTon], [Description], [MoreInfo], [Views], [LoaiHang], [DataAdd]) VALUES (N'IMACP', N'IMAC', N'Imac PINK', 1599, 0, N'img/product/IMAC/imac-24-pink-selection-hero-202104.jpg', N'', N'', N'', 100, N'Đang Cập Nhật', N'Đang Cập Nhật', 0, 3, NULL)
INSERT [dbo].[SanPham] ([MaSP], [MaLSP], [TenSP], [DonGia], [GiaKM], [img], [img2], [img3], [img4], [SLTon], [Description], [MoreInfo], [Views], [LoaiHang], [DataAdd]) VALUES (N'IMACS', N'IMAC', N'Imac SILVER', 1599, 0, N'img/product/IMAC/imac-24-silver-selection-hero-202104.jpg', N'', N'', N'', 100, N'Đang Cập Nhật', N'Đang Cập Nhật', 0, 3, NULL)
INSERT [dbo].[SanPham] ([MaSP], [MaLSP], [TenSP], [DonGia], [GiaKM], [img], [img2], [img3], [img4], [SLTon], [Description], [MoreInfo], [Views], [LoaiHang], [DataAdd]) VALUES (N'IP11B', N'IP11', N'Iphone 11 black', 699, 0, N'img/product/IP11/iphone11-black-select-2019.png', N'', N'', N'', 100, N'Đang Cập Nhật', N'Đang Cập Nhật', 0, 1, NULL)
INSERT [dbo].[SanPham] ([MaSP], [MaLSP], [TenSP], [DonGia], [GiaKM], [img], [img2], [img3], [img4], [SLTon], [Description], [MoreInfo], [Views], [LoaiHang], [DataAdd]) VALUES (N'IP11G', N'IP11', N'Iphone 11 green', 699, 0, N'img/product/IP11/iphone11-green-select-2019.png', N'', N'', N'', 100, N'Đang Cập Nhật', N'Đang Cập Nhật', 0, 3, NULL)
INSERT [dbo].[SanPham] ([MaSP], [MaLSP], [TenSP], [DonGia], [GiaKM], [img], [img2], [img3], [img4], [SLTon], [Description], [MoreInfo], [Views], [LoaiHang], [DataAdd]) VALUES (N'IP11P', N'IP11', N'Iphone 11 purle', 699, 0, N'img/product/IP11/iphone11-purple-select-2019.png', N'', N'', N'', 100, N'Đang Cập Nhật', N'Đang Cập Nhật', 0, 3, NULL)
INSERT [dbo].[SanPham] ([MaSP], [MaLSP], [TenSP], [DonGia], [GiaKM], [img], [img2], [img3], [img4], [SLTon], [Description], [MoreInfo], [Views], [LoaiHang], [DataAdd]) VALUES (N'IP11R', N'IP11', N'Iphone 11 red', 699, 0, N'img/product/IP11/iphone11-red-select-2019.png', N'', N'', N'', 100, N'Đang Cập Nhật', N'Đang Cập Nhật', 0, 3, NULL)
INSERT [dbo].[SanPham] ([MaSP], [MaLSP], [TenSP], [DonGia], [GiaKM], [img], [img2], [img3], [img4], [SLTon], [Description], [MoreInfo], [Views], [LoaiHang], [DataAdd]) VALUES (N'IP11W', N'IP11', N'Iphone 11 white', 699, 0, N'img/product/IP11/iphone11-white-select-2019.png', N'', N'', N'', 100, N'Đang Cập Nhật', N'Đang Cập Nhật', 0, 3, NULL)
INSERT [dbo].[SanPham] ([MaSP], [MaLSP], [TenSP], [DonGia], [GiaKM], [img], [img2], [img3], [img4], [SLTon], [Description], [MoreInfo], [Views], [LoaiHang], [DataAdd]) VALUES (N'IP11Y', N'IP11', N'Iphone 11 yellow', 699, 0, N'img/product/IP11/iphone11-yellow-select-2019.png', N'', N'', N'', 100, N'Đang Cập Nhật', N'Đang Cập Nhật', 0, 3, NULL)
INSERT [dbo].[SanPham] ([MaSP], [MaLSP], [TenSP], [DonGia], [GiaKM], [img], [img2], [img3], [img4], [SLTon], [Description], [MoreInfo], [Views], [LoaiHang], [DataAdd]) VALUES (N'IP12B', N'IP12', N'Iphone 12 black', 899, 0, N'img/product/IP12/iphone-12-black-select-2020.png', N'', N'', N'', 100, N'Đang Cập Nhật', N'Đang Cập Nhật', 0, 3, NULL)
INSERT [dbo].[SanPham] ([MaSP], [MaLSP], [TenSP], [DonGia], [GiaKM], [img], [img2], [img3], [img4], [SLTon], [Description], [MoreInfo], [Views], [LoaiHang], [DataAdd]) VALUES (N'IP12BL', N'IP12', N'Iphone 12 blue', 899, 0, N'img/product/IP12/iphone-12-blue-select-2020.png', N'', N'', N'', 100, N'Đang Cập Nhật', N'Đang Cập Nhật', 0, 3, NULL)
INSERT [dbo].[SanPham] ([MaSP], [MaLSP], [TenSP], [DonGia], [GiaKM], [img], [img2], [img3], [img4], [SLTon], [Description], [MoreInfo], [Views], [LoaiHang], [DataAdd]) VALUES (N'IP12G', N'IP12', N'Iphone 12 green', 899, 0, N'img/product/IP12/iphone-12-green-select-2020.png', N'', N'', N'', 100, N'Đang Cập Nhật', N'Đang Cập Nhật', 0, 3, NULL)
INSERT [dbo].[SanPham] ([MaSP], [MaLSP], [TenSP], [DonGia], [GiaKM], [img], [img2], [img3], [img4], [SLTon], [Description], [MoreInfo], [Views], [LoaiHang], [DataAdd]) VALUES (N'IP12MBL', N'IP12M', N'Iphone 12 mini blue', 959, 0, N'img/product/IP12M/iphone-12-mini-blue-select-2020.png', N'', N'', N'', 100, N'Đang Cập Nhật', N'Đang Cập Nhật', 0, 3, NULL)
INSERT [dbo].[SanPham] ([MaSP], [MaLSP], [TenSP], [DonGia], [GiaKM], [img], [img2], [img3], [img4], [SLTon], [Description], [MoreInfo], [Views], [LoaiHang], [DataAdd]) VALUES (N'IP12MG', N'IP12M', N'Iphone 12 mini green', 959, 0, N'img/product/IP12M/iphone-12-mini-green-select-2020.png', N'', N'', N'', 100, N'Đang Cập Nhật', N'Đang Cập Nhật', 0, 1, NULL)
INSERT [dbo].[SanPham] ([MaSP], [MaLSP], [TenSP], [DonGia], [GiaKM], [img], [img2], [img3], [img4], [SLTon], [Description], [MoreInfo], [Views], [LoaiHang], [DataAdd]) VALUES (N'IP12MP', N'IP12M', N'Iphone 12 mini purle', 959, 0, N'img/product/IP12M/iphone-12-mini-purple-select-2021.png', N'', N'', N'', 100, N'Đang Cập Nhật', N'Đang Cập Nhật', 0, 3, NULL)
INSERT [dbo].[SanPham] ([MaSP], [MaLSP], [TenSP], [DonGia], [GiaKM], [img], [img2], [img3], [img4], [SLTon], [Description], [MoreInfo], [Views], [LoaiHang], [DataAdd]) VALUES (N'IP12MR', N'IP12M', N'Iphone 12 mini red', 959, 0, N'img/product/IP12M/iphone-12-mini-red-select-2020.png', N'', N'', N'', 100, N'Đang Cập Nhật', N'Đang Cập Nhật', 0, 3, NULL)
INSERT [dbo].[SanPham] ([MaSP], [MaLSP], [TenSP], [DonGia], [GiaKM], [img], [img2], [img3], [img4], [SLTon], [Description], [MoreInfo], [Views], [LoaiHang], [DataAdd]) VALUES (N'IP12MW', N'IP12M', N'Iphone 12 mini white', 959, 0, N'img/product/IP12M/iphone-12-mini-white-select-2020.png', N'', N'', N'', 100, N'Đang Cập Nhật', N'Đang Cập Nhật', 0, 3, NULL)
INSERT [dbo].[SanPham] ([MaSP], [MaLSP], [TenSP], [DonGia], [GiaKM], [img], [img2], [img3], [img4], [SLTon], [Description], [MoreInfo], [Views], [LoaiHang], [DataAdd]) VALUES (N'IP12P', N'IP12', N'Iphone 12 purle', 899, 0, N'img/product/IP12/iphone-12-purple-select-2021.png', N'', N'', N'', 100, N'Đang Cập Nhật', N'Đang Cập Nhật', 0, 3, NULL)
INSERT [dbo].[SanPham] ([MaSP], [MaLSP], [TenSP], [DonGia], [GiaKM], [img], [img2], [img3], [img4], [SLTon], [Description], [MoreInfo], [Views], [LoaiHang], [DataAdd]) VALUES (N'IP12R', N'IP12', N'Iphone 12 red', 899, 0, N'img/product/IP12/iphone-12-red-select-2020.png', N'', N'', N'', 100, N'Đang Cập Nhật', N'Đang Cập Nhật', 0, 3, NULL)
INSERT [dbo].[SanPham] ([MaSP], [MaLSP], [TenSP], [DonGia], [GiaKM], [img], [img2], [img3], [img4], [SLTon], [Description], [MoreInfo], [Views], [LoaiHang], [DataAdd]) VALUES (N'IP12W', N'IP12', N'Iphone 12 white', 899, 0, N'img/product/IP12/iphone-12-white-select-2020.png', N'', N'', N'', 100, N'Đang Cập Nhật', N'Đang Cập Nhật', 0, 3, NULL)
INSERT [dbo].[SanPham] ([MaSP], [MaLSP], [TenSP], [DonGia], [GiaKM], [img], [img2], [img3], [img4], [SLTon], [Description], [MoreInfo], [Views], [LoaiHang], [DataAdd]) VALUES (N'IPADABL', N'IPADA', N'IPadAir blue', 759, 0, N'img/product/IPADA/ipad-air-select-wifi-blue-202009.png', N'', N'', N'', 100, N'Đang Cập Nhật', N'Đang Cập Nhật', 0, 3, NULL)
INSERT [dbo].[SanPham] ([MaSP], [MaLSP], [TenSP], [DonGia], [GiaKM], [img], [img2], [img3], [img4], [SLTon], [Description], [MoreInfo], [Views], [LoaiHang], [DataAdd]) VALUES (N'IPADAG', N'IPADA', N'IPadAir green', 759, 0, N'img/product/IPADA/ipad-air-select-wifi-green-202009.png', N'', N'', N'', 100, N'Đang Cập Nhật', N'Đang Cập Nhật', 0, 3, NULL)
INSERT [dbo].[SanPham] ([MaSP], [MaLSP], [TenSP], [DonGia], [GiaKM], [img], [img2], [img3], [img4], [SLTon], [Description], [MoreInfo], [Views], [LoaiHang], [DataAdd]) VALUES (N'IPADAGL', N'IPADA', N'IPadAir golden', 759, 0, N'img/product/IPADA/ipad-air-select-wifi-gold-202009.png', N'', N'', N'', 100, N'Đang Cập Nhật', N'Đang Cập Nhật', 0, 3, NULL)
INSERT [dbo].[SanPham] ([MaSP], [MaLSP], [TenSP], [DonGia], [GiaKM], [img], [img2], [img3], [img4], [SLTon], [Description], [MoreInfo], [Views], [LoaiHang], [DataAdd]) VALUES (N'IPADAS', N'IPADA', N'IPadAir silver', 759, 0, N'img/product/IPADA/ipad-air-select-wifi-silver-202009.png', N'', N'', N'', 100, N'Đang Cập Nhật', N'Đang Cập Nhật', 0, 3, NULL)
INSERT [dbo].[SanPham] ([MaSP], [MaLSP], [TenSP], [DonGia], [GiaKM], [img], [img2], [img3], [img4], [SLTon], [Description], [MoreInfo], [Views], [LoaiHang], [DataAdd]) VALUES (N'IPADASG', N'IPADA', N'IPadAir spacegray', 769, 0, N'img/product/IPADA/ipad-air-select-wifi-spacegray-202009.png', N'', N'', N'', 100, N'Đang Cập Nhật', N'Đang Cập Nhật', 0, 3, NULL)
INSERT [dbo].[SanPham] ([MaSP], [MaLSP], [TenSP], [DonGia], [GiaKM], [img], [img2], [img3], [img4], [SLTon], [Description], [MoreInfo], [Views], [LoaiHang], [DataAdd]) VALUES (N'IPADGGL', N'IPADG', N'IPadGen gold', 739, 0, N'img/product/IPADG/ipad-2020-hero-gold-wifi-select.png', N'', N'', N'', 100, N'Đang Cập Nhật', N'Đang Cập Nhật', 0, 3, NULL)
INSERT [dbo].[SanPham] ([MaSP], [MaLSP], [TenSP], [DonGia], [GiaKM], [img], [img2], [img3], [img4], [SLTon], [Description], [MoreInfo], [Views], [LoaiHang], [DataAdd]) VALUES (N'IPADGS', N'IPADG', N'IPadGen silver', 739, 0, N'img/product/IPADG/ipad-2020-hero-silver-wifi-select.png', N'', N'', N'', 100, N'Đang Cập Nhật', N'Đang Cập Nhật', 0, 3, NULL)
INSERT [dbo].[SanPham] ([MaSP], [MaLSP], [TenSP], [DonGia], [GiaKM], [img], [img2], [img3], [img4], [SLTon], [Description], [MoreInfo], [Views], [LoaiHang], [DataAdd]) VALUES (N'IPADGSP', N'IPADG', N'IPadGen space', 739, 0, N'img/product/IPADG/ipad-2020-hero-space-wifi-select.png', N'', N'', N'', 100, N'Đang Cập Nhật', N'Đang Cập Nhật', 0, 3, NULL)
INSERT [dbo].[SanPham] ([MaSP], [MaLSP], [TenSP], [DonGia], [GiaKM], [img], [img2], [img3], [img4], [SLTon], [Description], [MoreInfo], [Views], [LoaiHang], [DataAdd]) VALUES (N'IPADMG', N'IPADM', N'IPadMini GOLD', 639, 0, N'img/product/IPADM/ipad-mini-select-wifi-gold-201911.png', N'', N'', N'', 100, N'Đang Cập Nhật', N'Đang Cập Nhật', 0, 3, NULL)
INSERT [dbo].[SanPham] ([MaSP], [MaLSP], [TenSP], [DonGia], [GiaKM], [img], [img2], [img3], [img4], [SLTon], [Description], [MoreInfo], [Views], [LoaiHang], [DataAdd]) VALUES (N'IPADMS', N'IPADM', N'IPadMini SILVER', 639, 0, N'img/product/IPADM/ipad-mini-select-wifi-silver-201911.png', N'', N'', N'', 100, N'Đang Cập Nhật', N'Đang Cập Nhật', 0, 1, NULL)
INSERT [dbo].[SanPham] ([MaSP], [MaLSP], [TenSP], [DonGia], [GiaKM], [img], [img2], [img3], [img4], [SLTon], [Description], [MoreInfo], [Views], [LoaiHang], [DataAdd]) VALUES (N'IPADMSG', N'IPADM', N'IPadMini SPACEGRAY', 639, 0, N'img/product/IPADM/ipad-mini-select-wifi-spacegray-201911.png', N'', N'', N'', 100, N'Đang Cập Nhật', N'Đang Cập Nhật', 0, 3, NULL)
INSERT [dbo].[SanPham] ([MaSP], [MaLSP], [TenSP], [DonGia], [GiaKM], [img], [img2], [img3], [img4], [SLTon], [Description], [MoreInfo], [Views], [LoaiHang], [DataAdd]) VALUES (N'IPADPS', N'IPADP', N'IPadPro SILVER', 899, 0, N'img/product/IPADP/ipad-pro-12-select-cell-silver-202104.jpg', N'', N'', N'', 100, N'Đang Cập Nhật', N'Đang Cập Nhật', 0, 3, NULL)
INSERT [dbo].[SanPham] ([MaSP], [MaLSP], [TenSP], [DonGia], [GiaKM], [img], [img2], [img3], [img4], [SLTon], [Description], [MoreInfo], [Views], [LoaiHang], [DataAdd]) VALUES (N'IPADPSG', N'IPADP', N'IPadPro SPACEGRAY', 899, 0, N'img/product/IPADP/ipad-pro-12-select-cell-spacegray-202104.jpg', N'', N'', N'', 100, N'Đang Cập Nhật', N'Đang Cập Nhật', 0, 3, NULL)
INSERT [dbo].[SanPham] ([MaSP], [MaLSP], [TenSP], [DonGia], [GiaKM], [img], [img2], [img3], [img4], [SLTon], [Description], [MoreInfo], [Views], [LoaiHang], [DataAdd]) VALUES (N'IPXRB', N'IPXR', N'Iphone XR black', 699, 0, N'img/product/IPXR/iphone-xr-black-select-201809.jpg', N'', N'', N'', 100, N'Đang Cập Nhật', N'Đang Cập Nhật', 0, 3, NULL)
INSERT [dbo].[SanPham] ([MaSP], [MaLSP], [TenSP], [DonGia], [GiaKM], [img], [img2], [img3], [img4], [SLTon], [Description], [MoreInfo], [Views], [LoaiHang], [DataAdd]) VALUES (N'IPXRBL', N'IPXR', N'Iphone XR blue', 699, 0, N'img/product/IPXR/iphone-xr-blue-select-201809.jpg', N'', N'', N'', 100, N'Đang Cập Nhật', N'Đang Cập Nhật', 0, 3, NULL)
INSERT [dbo].[SanPham] ([MaSP], [MaLSP], [TenSP], [DonGia], [GiaKM], [img], [img2], [img3], [img4], [SLTon], [Description], [MoreInfo], [Views], [LoaiHang], [DataAdd]) VALUES (N'IPXRC', N'IPXR', N'Iphone XR coral', 699, 0, N'img/product/IPXR/iphone-xr-coral-select-201809.jpg', N'', N'', N'', 100, N'Đang Cập Nhật', N'Đang Cập Nhật', 0, 3, NULL)
INSERT [dbo].[SanPham] ([MaSP], [MaLSP], [TenSP], [DonGia], [GiaKM], [img], [img2], [img3], [img4], [SLTon], [Description], [MoreInfo], [Views], [LoaiHang], [DataAdd]) VALUES (N'IPXRR', N'IPXR', N'Iphone XR red', 699, 0, N'img/product/IPXR/iphone-xr-red-select-201809.jpg', N'', N'', N'', 100, N'Đang Cập Nhật', N'Đang Cập Nhật', 0, 3, NULL)
INSERT [dbo].[SanPham] ([MaSP], [MaLSP], [TenSP], [DonGia], [GiaKM], [img], [img2], [img3], [img4], [SLTon], [Description], [MoreInfo], [Views], [LoaiHang], [DataAdd]) VALUES (N'IPXRW', N'IPXR', N'Iphone XR white', 699, 0, N'img/product/IPXR/iphone-xr-white-select-201809.jpg', N'', N'', N'', 100, N'Đang Cập Nhật', N'Đang Cập Nhật', 0, 3, NULL)
INSERT [dbo].[SanPham] ([MaSP], [MaLSP], [TenSP], [DonGia], [GiaKM], [img], [img2], [img3], [img4], [SLTon], [Description], [MoreInfo], [Views], [LoaiHang], [DataAdd]) VALUES (N'IPXRY', N'IPXR', N'Iphone XR yellow', 699, 0, N'img/product/IPXR/iphone-xr-yellow-select-201809.jpg', N'', N'', N'', 100, N'Đang Cập Nhật', N'Đang Cập Nhật', 0, 2, NULL)
INSERT [dbo].[SanPham] ([MaSP], [MaLSP], [TenSP], [DonGia], [GiaKM], [img], [img2], [img3], [img4], [SLTon], [Description], [MoreInfo], [Views], [LoaiHang], [DataAdd]) VALUES (N'MBASG', N'MBA', N'MacbookAir SPACEGRAY', 1399, 0, N'img/product/MBA/macbook-air-space-gray-select-201810.jpg', N'', N'', N'', 100, N'Đang Cập Nhật', N'Đang Cập Nhật', 0, 3, NULL)
INSERT [dbo].[SanPham] ([MaSP], [MaLSP], [TenSP], [DonGia], [GiaKM], [img], [img2], [img3], [img4], [SLTon], [Description], [MoreInfo], [Views], [LoaiHang], [DataAdd]) VALUES (N'MBP16', N'MBP', N'MacbookPro 16TOUCH SPACE', 1699, 0, N'img/product/MBP/mbp16touch-space-select-201911.jpg', N'', N'', N'', 100, N'Đang Cập Nhật', N'Đang Cập Nhật', 0, 3, NULL)
INSERT [dbo].[SanPham] ([MaSP], [MaLSP], [TenSP], [DonGia], [GiaKM], [img], [img2], [img3], [img4], [SLTon], [Description], [MoreInfo], [Views], [LoaiHang], [DataAdd]) VALUES (N'MBPSG', N'MBP', N'MacbookPro SPACEGRAY', 1599, 0, N'img/product/MBP/mbp-spacegray-select-202011.jpg', N'', N'', N'', 100, N'Đang Cập Nhật', N'Đang Cập Nhật', 0, 3, NULL)
INSERT [dbo].[SanPham] ([MaSP], [MaLSP], [TenSP], [DonGia], [GiaKM], [img], [img2], [img3], [img4], [SLTon], [Description], [MoreInfo], [Views], [LoaiHang], [DataAdd]) VALUES (N'PKAWC', N'PKAW', N'Phụ Kiện Apple Watch CABLE', 69, 0, N'img/product/PKAW/cap-sac-apple-watch-2m.jpg', N'', N'', N'', 100, N'Đang Cập Nhật', N'Đang Cập Nhật', 0, 3, NULL)
INSERT [dbo].[SanPham] ([MaSP], [MaLSP], [TenSP], [DonGia], [GiaKM], [img], [img2], [img3], [img4], [SLTon], [Description], [MoreInfo], [Views], [LoaiHang], [DataAdd]) VALUES (N'PKAWGA', N'PKAW', N'Phụ Kiện Apple Watch GRID ATLANTIC', 59, 0, N'img/product/PKAW/grid-braided-loop-atlantic-s6.jpg', N'', N'', N'', 100, N'Đang Cập Nhật', N'Đang Cập Nhật', 0, 3, NULL)
INSERT [dbo].[SanPham] ([MaSP], [MaLSP], [TenSP], [DonGia], [GiaKM], [img], [img2], [img3], [img4], [SLTon], [Description], [MoreInfo], [Views], [LoaiHang], [DataAdd]) VALUES (N'PKAWGC', N'PKAW', N'Phụ Kiện Apple Watch GRID CHARCOAL', 59, 0, N'img/product/PKAW/grid-braided-loop-charcoal-s6.jpg', N'', N'', N'', 100, N'Đang Cập Nhật', N'Đang Cập Nhật', 0, 3, NULL)
INSERT [dbo].[SanPham] ([MaSP], [MaLSP], [TenSP], [DonGia], [GiaKM], [img], [img2], [img3], [img4], [SLTon], [Description], [MoreInfo], [Views], [LoaiHang], [DataAdd]) VALUES (N'PKAWGO', N'PKAW', N'Phụ Kiện Apple Watch GRID ORANGE', 59, 0, N'img/product/PKAW/grid-braided-loop-electric-orange-s6.jpg', N'', N'', N'', 100, N'Đang Cập Nhật', N'Đang Cập Nhật', 0, 3, NULL)
INSERT [dbo].[SanPham] ([MaSP], [MaLSP], [TenSP], [DonGia], [GiaKM], [img], [img2], [img3], [img4], [SLTon], [Description], [MoreInfo], [Views], [LoaiHang], [DataAdd]) VALUES (N'PKAWGP', N'PKAW', N'Phụ Kiện Apple Watch GRID PINK', 59, 0, N'img/product/PKAW/grid-braided-loop-pink-s6.jpg', N'', N'', N'', 100, N'Đang Cập Nhật', N'Đang Cập Nhật', 0, 3, NULL)
INSERT [dbo].[SanPham] ([MaSP], [MaLSP], [TenSP], [DonGia], [GiaKM], [img], [img2], [img3], [img4], [SLTon], [Description], [MoreInfo], [Views], [LoaiHang], [DataAdd]) VALUES (N'PKAWGPI', N'PKAW', N'Phụ Kiện Apple Watch GRID PISTACHIO', 59, 0, N'img/product/PKAW/grid-braided-loop-pistachio-s6.jpg', N'', N'', N'', 100, N'Đang Cập Nhật', N'Đang Cập Nhật', 0, 3, NULL)
INSERT [dbo].[SanPham] ([MaSP], [MaLSP], [TenSP], [DonGia], [GiaKM], [img], [img2], [img3], [img4], [SLTon], [Description], [MoreInfo], [Views], [LoaiHang], [DataAdd]) VALUES (N'PKAWGPR', N'PKAW', N'Phụ Kiện Apple Watch GRID PRIDE', 59, 0, N'img/product/PKAW/grid-braided-loop-pride-s6.jpg', N'', N'', N'', 100, N'Đang Cập Nhật', N'Đang Cập Nhật', 0, 1, NULL)
INSERT [dbo].[SanPham] ([MaSP], [MaLSP], [TenSP], [DonGia], [GiaKM], [img], [img2], [img3], [img4], [SLTon], [Description], [MoreInfo], [Views], [LoaiHang], [DataAdd]) VALUES (N'PKAWGI', N'PKAW', N'Phụ Kiện Apple Watch GRID INVERNESS', 59, 0, N'img/product/PKAW/grid-braided-loop-inverness-s6.jpg', N'', N'', N'', 100, N'Đang Cập Nhật', N'Đang Cập Nhật', 0, 3, NULL)
INSERT [dbo].[SanPham] ([MaSP], [MaLSP], [TenSP], [DonGia], [GiaKM], [img], [img2], [img3], [img4], [SLTon], [Description], [MoreInfo], [Views], [LoaiHang], [DataAdd]) VALUES (N'PKIPADPE', N'PKIPAD', N'Bút Cảm Ứng Apple Pencil', 99, 0, N'img/product/PKIPAD/but-cam-ung-apple-pencil-2-chinh-hang-1.jpg', N'', N'', N'', 100, N'Đang Cập Nhật', N'Đang Cập Nhật', 0, 3, NULL)
INSERT [dbo].[SanPham] ([MaSP], [MaLSP], [TenSP], [DonGia], [GiaKM], [img], [img2], [img3], [img4], [SLTon], [Description], [MoreInfo], [Views], [LoaiHang], [DataAdd]) VALUES (N'PKIPADSK', N'PKIPAD', N'Bàn phím Smart Keyboard IPADPro', 259, 0, N'img/product/PKIPAD/ban-phim-smart-keyboard-ipad-pro-12.9inch-chinh-hang.jpg', N'', N'', N'', 100, N'Đang Cập Nhật', N'Đang Cập Nhật', 0, 3, NULL)
INSERT [dbo].[SanPham] ([MaSP], [MaLSP], [TenSP], [DonGia], [GiaKM], [img], [img2], [img3], [img4], [SLTon], [Description], [MoreInfo], [Views], [LoaiHang], [DataAdd]) VALUES (N'PKIPHONEA', N'PKIPHONE', N'Adapter iphone 20w type C', 79, 0, N'img/product/PKIPHONE/cu-s_c-nhanh-apple-iphone-20w-type-c-chinh-hang.jpg', N'', N'', N'', 100, N'Đang Cập Nhật', N'Đang Cập Nhật', 0, 1, NULL)
INSERT [dbo].[SanPham] ([MaSP], [MaLSP], [TenSP], [DonGia], [GiaKM], [img], [img2], [img3], [img4], [SLTon], [Description], [MoreInfo], [Views], [LoaiHang], [DataAdd]) VALUES (N'PKIPHONECL', N'PKIPHONE', N'Cáp usb type C lightning 1m', 69, 0, N'img/product/PKIPHONE/cap-apple-usb-c-lightning-_1m.jpg', N'', N'', N'', 100, N'Đang Cập Nhật', N'Đang Cập Nhật', 0, 3, NULL)
INSERT [dbo].[SanPham] ([MaSP], [MaLSP], [TenSP], [DonGia], [GiaKM], [img], [img2], [img3], [img4], [SLTon], [Description], [MoreInfo], [Views], [LoaiHang], [DataAdd]) VALUES (N'PKMACC', N'PKMAC', N'Apple Thunderbolt Cable 2m', 99, 0, N'img/product/PKMAC/cap-apple-thunderbolt-cable-2m-md861.jpg', N'', N'', N'', 100, N'Đang Cập Nhật', N'Đang Cập Nhật', 0, 3, NULL)
INSERT [dbo].[SanPham] ([MaSP], [MaLSP], [TenSP], [DonGia], [GiaKM], [img], [img2], [img3], [img4], [SLTon], [Description], [MoreInfo], [Views], [LoaiHang], [DataAdd]) VALUES (N'PKMACM', N'PKMAC', N'Wireless Magic Mouse', 199, 0, N'img/product/PKMAC/chuot-khong-day-apple-magic-mouse-2_2_3.jpg', N'', N'', N'', 100, N'Đang Cập Nhật', N'Đang Cập Nhật', 0, 3, NULL)
INSERT [dbo].[SanPham] ([MaSP], [MaLSP], [TenSP], [DonGia], [GiaKM], [img], [img2], [img3], [img4], [SLTon], [Description], [MoreInfo], [Views], [LoaiHang], [DataAdd]) VALUES (N'PKMACH', N'PKMAC', N'Hyperdrive Slim Usb C Hub', 299, 0, N'img/product/PKMAC/cong-chuyen-hyperdrive-slim-usb-c-hub_4.jpg', N'', N'', N'', 100, N'Đang Cập Nhật', N'Đang Cập Nhật', 0, 3, NULL)
GO
INSERT [dbo].[TaiKhoan] ([User], [Pass]) VALUES (N'admin', N'admin')
INSERT [dbo].[TaiKhoan] ([User], [Pass]) VALUES (N'long25', N'123')
GO
ALTER TABLE [dbo].[Cart]  WITH CHECK ADD  CONSTRAINT [FK_Cart_TaiKhoan] FOREIGN KEY([User])
REFERENCES [dbo].[TaiKhoan] ([User])
GO
ALTER TABLE [dbo].[Cart] CHECK CONSTRAINT [FK_Cart_TaiKhoan]
GO
ALTER TABLE [dbo].[Cart]  WITH CHECK ADD  CONSTRAINT [Relationship16] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[Cart] CHECK CONSTRAINT [Relationship16]
GO
ALTER TABLE [dbo].[CT_DC]  WITH CHECK ADD  CONSTRAINT [Relationship20] FOREIGN KEY([User])
REFERENCES [dbo].[TaiKhoan] ([User])
GO
ALTER TABLE [dbo].[CT_DC] CHECK CONSTRAINT [Relationship20]
GO
ALTER TABLE [dbo].[CT_DC]  WITH CHECK ADD  CONSTRAINT [Relationship21] FOREIGN KEY([DCID])
REFERENCES [dbo].[Discount] ([DCID])
GO
ALTER TABLE [dbo].[CT_DC] CHECK CONSTRAINT [Relationship21]
GO
ALTER TABLE [dbo].[CTOrder]  WITH CHECK ADD  CONSTRAINT [Relationship6] FOREIGN KEY([MaDH])
REFERENCES [dbo].[Order] ([MaDH])
GO
ALTER TABLE [dbo].[CTOrder] CHECK CONSTRAINT [Relationship6]
GO
ALTER TABLE [dbo].[CTOrder]  WITH CHECK ADD  CONSTRAINT [Relationship7] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[CTOrder] CHECK CONSTRAINT [Relationship7]
GO
ALTER TABLE [dbo].[KhachHang]  WITH CHECK ADD  CONSTRAINT [Relationship11] FOREIGN KEY([User])
REFERENCES [dbo].[TaiKhoan] ([User])
GO
ALTER TABLE [dbo].[KhachHang] CHECK CONSTRAINT [Relationship11]
GO
ALTER TABLE [dbo].[LoaiSP]  WITH CHECK ADD  CONSTRAINT [Relationship4] FOREIGN KEY([MaDM])
REFERENCES [dbo].[DanhMuc] ([MaDM])
GO
ALTER TABLE [dbo].[LoaiSP] CHECK CONSTRAINT [Relationship4]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_TaiKhoan] FOREIGN KEY([User])
REFERENCES [dbo].[TaiKhoan] ([User])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_TaiKhoan]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [Relationship25] FOREIGN KEY([DCID])
REFERENCES [dbo].[Discount] ([DCID])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [Relationship25]
GO
ALTER TABLE [dbo].[Rate]  WITH CHECK ADD  CONSTRAINT [Relationship18] FOREIGN KEY([User])
REFERENCES [dbo].[TaiKhoan] ([User])
GO
ALTER TABLE [dbo].[Rate] CHECK CONSTRAINT [Relationship18]
GO
ALTER TABLE [dbo].[Rate]  WITH CHECK ADD  CONSTRAINT [Relationship19] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[Rate] CHECK CONSTRAINT [Relationship19]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [Relationship5] FOREIGN KEY([MaLSP])
REFERENCES [dbo].[LoaiSP] ([MaLSP])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [Relationship5]
GO
USE [master]
GO
ALTER DATABASE [AppleStore] SET  READ_WRITE 
GO
