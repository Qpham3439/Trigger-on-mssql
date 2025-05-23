USE [master]
GO
/****** Object:  Database [HoTroChonNghanh]    Script Date: 4/23/2025 11:12:11 PM ******/
CREATE DATABASE [HoTroChonNghanh]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'HoTroChonNghanh', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\HoTroChonNghanh.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'HoTroChonNghanh_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\HoTroChonNghanh_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [HoTroChonNghanh] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [HoTroChonNghanh].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [HoTroChonNghanh] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [HoTroChonNghanh] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [HoTroChonNghanh] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [HoTroChonNghanh] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [HoTroChonNghanh] SET ARITHABORT OFF 
GO
ALTER DATABASE [HoTroChonNghanh] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [HoTroChonNghanh] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [HoTroChonNghanh] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [HoTroChonNghanh] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [HoTroChonNghanh] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [HoTroChonNghanh] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [HoTroChonNghanh] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [HoTroChonNghanh] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [HoTroChonNghanh] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [HoTroChonNghanh] SET  DISABLE_BROKER 
GO
ALTER DATABASE [HoTroChonNghanh] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [HoTroChonNghanh] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [HoTroChonNghanh] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [HoTroChonNghanh] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [HoTroChonNghanh] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [HoTroChonNghanh] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [HoTroChonNghanh] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [HoTroChonNghanh] SET RECOVERY FULL 
GO
ALTER DATABASE [HoTroChonNghanh] SET  MULTI_USER 
GO
ALTER DATABASE [HoTroChonNghanh] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [HoTroChonNghanh] SET DB_CHAINING OFF 
GO
ALTER DATABASE [HoTroChonNghanh] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [HoTroChonNghanh] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [HoTroChonNghanh] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [HoTroChonNghanh] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'HoTroChonNghanh', N'ON'
GO
ALTER DATABASE [HoTroChonNghanh] SET QUERY_STORE = ON
GO
ALTER DATABASE [HoTroChonNghanh] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [HoTroChonNghanh]
GO
/****** Object:  Table [dbo].[ChonNghanh]    Script Date: 4/23/2025 11:12:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChonNghanh](
	[MaChonNghanh] [varchar](30) NOT NULL,
	[MaSinhVien] [varchar](30) NOT NULL,
	[MaTruongTotNghiep] [varchar](30) NOT NULL,
	[MaDieuKien] [varchar](20) NOT NULL,
	[MaNguyenVong] [varchar](20) NOT NULL,
	[MaNghanhGoiY] [varchar](30) NOT NULL,
	[MaNghanh] [varchar](20) NOT NULL,
	[DiemXetNghanh] [float] NOT NULL,
 CONSTRAINT [PK_ChonNghanh] PRIMARY KEY CLUSTERED 
(
	[MaChonNghanh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DieuKien]    Script Date: 4/23/2025 11:12:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DieuKien](
	[MaDieuKien] [varchar](20) NOT NULL,
	[ChungChiNgoaiNgu] [varchar](10) NOT NULL,
	[DiemThiTHPT] [float] NOT NULL,
	[XepLoaiTotNghiep] [nvarchar](10) NOT NULL,
	[DiemUuTien] [float] NOT NULL,
 CONSTRAINT [PK_DieuKien] PRIMARY KEY CLUSTERED 
(
	[MaDieuKien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GoiY]    Script Date: 4/23/2025 11:12:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GoiY](
	[MaNghanhGoiY] [varchar](30) NOT NULL,
	[TenNghanhGoiY] [nvarchar](30) NOT NULL,
 CONSTRAINT [PK_GoiY] PRIMARY KEY CLUSTERED 
(
	[MaNghanhGoiY] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NghanhHoc]    Script Date: 4/23/2025 11:12:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NghanhHoc](
	[MaNghanh] [varchar](20) NOT NULL,
	[TenNghanh] [nvarchar](50) NULL,
	[DiemYeuCau] [float] NULL,
 CONSTRAINT [PK_NghanhHoc] PRIMARY KEY CLUSTERED 
(
	[MaNghanh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NguyenVong]    Script Date: 4/23/2025 11:12:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NguyenVong](
	[MaNguyenVong] [varchar](20) NOT NULL,
	[MucTieuSauRaTruong] [nvarchar](20) NOT NULL,
	[MonYeuThich] [nvarchar](10) NOT NULL,
	[NghanhNguyenVong] [nvarchar](30) NOT NULL,
 CONSTRAINT [PK_NguyenVong] PRIMARY KEY CLUSTERED 
(
	[MaNguyenVong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SinhVien]    Script Date: 4/23/2025 11:12:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SinhVien](
	[MaSinhVien] [varchar](30) NOT NULL,
	[HoTen] [nvarchar](30) NOT NULL,
	[NgaySinh] [date] NOT NULL,
	[SDT] [varchar](20) NULL,
	[Email] [varchar](50) NULL,
	[DiaChi] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_SinhVien] PRIMARY KEY CLUSTERED 
(
	[MaSinhVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TruongCap3]    Script Date: 4/23/2025 11:12:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TruongCap3](
	[MaTruongTotNghiep] [varchar](30) NOT NULL,
	[TenTruongTotNghiep] [nvarchar](50) NOT NULL,
	[LoaiTruong] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_TruongCap3] PRIMARY KEY CLUSTERED 
(
	[MaTruongTotNghiep] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[ChonNghanh] ([MaChonNghanh], [MaSinhVien], [MaTruongTotNghiep], [MaDieuKien], [MaNguyenVong], [MaNghanhGoiY], [MaNghanh], [DiemXetNghanh]) VALUES (N'CN001', N'SV001', N'TH001', N'DK001', N'NV001', N'NH001', N'NH001', 26)
INSERT [dbo].[ChonNghanh] ([MaChonNghanh], [MaSinhVien], [MaTruongTotNghiep], [MaDieuKien], [MaNguyenVong], [MaNghanhGoiY], [MaNghanh], [DiemXetNghanh]) VALUES (N'CN002', N'SV002', N'TH002', N'DK002', N'NV002', N'NH002', N'NH002', 22)
INSERT [dbo].[ChonNghanh] ([MaChonNghanh], [MaSinhVien], [MaTruongTotNghiep], [MaDieuKien], [MaNguyenVong], [MaNghanhGoiY], [MaNghanh], [DiemXetNghanh]) VALUES (N'CN003', N'SV003', N'TH003', N'DK003', N'NV003', N'NH003', N'NH003', 28)
GO
INSERT [dbo].[DieuKien] ([MaDieuKien], [ChungChiNgoaiNgu], [DiemThiTHPT], [XepLoaiTotNghiep], [DiemUuTien]) VALUES (N'DK001', N'IELTS', 24.5, N'Giỏi', 1.5)
INSERT [dbo].[DieuKien] ([MaDieuKien], [ChungChiNgoaiNgu], [DiemThiTHPT], [XepLoaiTotNghiep], [DiemUuTien]) VALUES (N'DK002', N'TOEIC', 21, N'Khá', 1)
INSERT [dbo].[DieuKien] ([MaDieuKien], [ChungChiNgoaiNgu], [DiemThiTHPT], [XepLoaiTotNghiep], [DiemUuTien]) VALUES (N'DK003', N'None', 26, N'Giỏi', 2)
GO
INSERT [dbo].[GoiY] ([MaNghanhGoiY], [TenNghanhGoiY]) VALUES (N'NH001', N'Công nghệ thông tin')
INSERT [dbo].[GoiY] ([MaNghanhGoiY], [TenNghanhGoiY]) VALUES (N'NH002', N'Tự Động Hóa')
INSERT [dbo].[GoiY] ([MaNghanhGoiY], [TenNghanhGoiY]) VALUES (N'NH003', N'Điện Tử Viễn Thông')
GO
INSERT [dbo].[NghanhHoc] ([MaNghanh], [TenNghanh], [DiemYeuCau]) VALUES (N'NH001', N'Công nghệ thông tin', 24)
INSERT [dbo].[NghanhHoc] ([MaNghanh], [TenNghanh], [DiemYeuCau]) VALUES (N'NH002', N'Tự Động Hóa', 22)
INSERT [dbo].[NghanhHoc] ([MaNghanh], [TenNghanh], [DiemYeuCau]) VALUES (N'NH003', N'ĐIện Tử Viễn Thông', 25.5)
GO
INSERT [dbo].[NguyenVong] ([MaNguyenVong], [MucTieuSauRaTruong], [MonYeuThich], [NghanhNguyenVong]) VALUES (N'NV001', N'Làm DEV', N'Toán', N'Công nghệ thông tin')
INSERT [dbo].[NguyenVong] ([MaNguyenVong], [MucTieuSauRaTruong], [MonYeuThich], [NghanhNguyenVong]) VALUES (N'NV002', N'Làm Kỹ Sư Máy', N'Toán', N'Tự Động Hóa')
INSERT [dbo].[NguyenVong] ([MaNguyenVong], [MucTieuSauRaTruong], [MonYeuThich], [NghanhNguyenVong]) VALUES (N'NV003', N'Làm Editor', N'Tin học', N'ĐIện Tử Viễn Thông')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [HoTen], [NgaySinh], [SDT], [Email], [DiaChi]) VALUES (N'SV001', N'Nguyễn Văn A', CAST(N'2005-04-12' AS Date), N'0912345678', N'an@gmail.com', N'Hà Nội')
INSERT [dbo].[SinhVien] ([MaSinhVien], [HoTen], [NgaySinh], [SDT], [Email], [DiaChi]) VALUES (N'SV002', N'Lê Thị B', CAST(N'2005-07-24' AS Date), N'0923456789', N'binh@gmail.com', N'Đà Nẵng')
INSERT [dbo].[SinhVien] ([MaSinhVien], [HoTen], [NgaySinh], [SDT], [Email], [DiaChi]) VALUES (N'SV003', N'Trần Minh C', CAST(N'2005-01-30' AS Date), N'0934567890', N'chau@gmail.com', N'Hồ Chí Minh')
GO
INSERT [dbo].[TruongCap3] ([MaTruongTotNghiep], [TenTruongTotNghiep], [LoaiTruong]) VALUES (N'TH001', N'THPT A', N'Công lập')
INSERT [dbo].[TruongCap3] ([MaTruongTotNghiep], [TenTruongTotNghiep], [LoaiTruong]) VALUES (N'TH002', N'THPT B', N'Bán công')
INSERT [dbo].[TruongCap3] ([MaTruongTotNghiep], [TenTruongTotNghiep], [LoaiTruong]) VALUES (N'TH003', N'THPT C', N'Chuyên')
GO
ALTER TABLE [dbo].[ChonNghanh]  WITH CHECK ADD  CONSTRAINT [FK_ChonNghanh_DieuKien] FOREIGN KEY([MaDieuKien])
REFERENCES [dbo].[DieuKien] ([MaDieuKien])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ChonNghanh] CHECK CONSTRAINT [FK_ChonNghanh_DieuKien]
GO
ALTER TABLE [dbo].[ChonNghanh]  WITH CHECK ADD  CONSTRAINT [FK_ChonNghanh_GoiY] FOREIGN KEY([MaNghanhGoiY])
REFERENCES [dbo].[GoiY] ([MaNghanhGoiY])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ChonNghanh] CHECK CONSTRAINT [FK_ChonNghanh_GoiY]
GO
ALTER TABLE [dbo].[ChonNghanh]  WITH CHECK ADD  CONSTRAINT [FK_ChonNghanh_NghanhHoc] FOREIGN KEY([MaNghanh])
REFERENCES [dbo].[NghanhHoc] ([MaNghanh])
GO
ALTER TABLE [dbo].[ChonNghanh] CHECK CONSTRAINT [FK_ChonNghanh_NghanhHoc]
GO
ALTER TABLE [dbo].[ChonNghanh]  WITH CHECK ADD  CONSTRAINT [FK_ChonNghanh_NguyenVong] FOREIGN KEY([MaNguyenVong])
REFERENCES [dbo].[NguyenVong] ([MaNguyenVong])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ChonNghanh] CHECK CONSTRAINT [FK_ChonNghanh_NguyenVong]
GO
ALTER TABLE [dbo].[ChonNghanh]  WITH CHECK ADD  CONSTRAINT [FK_ChonNghanh_SinhVien] FOREIGN KEY([MaSinhVien])
REFERENCES [dbo].[SinhVien] ([MaSinhVien])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ChonNghanh] CHECK CONSTRAINT [FK_ChonNghanh_SinhVien]
GO
ALTER TABLE [dbo].[ChonNghanh]  WITH CHECK ADD  CONSTRAINT [FK_ChonNghanh_TruongCap3] FOREIGN KEY([MaTruongTotNghiep])
REFERENCES [dbo].[TruongCap3] ([MaTruongTotNghiep])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ChonNghanh] CHECK CONSTRAINT [FK_ChonNghanh_TruongCap3]
GO
ALTER TABLE [dbo].[DieuKien]  WITH CHECK ADD  CONSTRAINT [CK_DieuKien] CHECK  (([DiemThiTHPT]>=(0) AND [DiemThiTHPT]<=(30)))
GO
ALTER TABLE [dbo].[DieuKien] CHECK CONSTRAINT [CK_DieuKien]
GO
/****** Object:  Trigger [dbo].[trg_CapNhatDiemXetNganh]    Script Date: 4/23/2025 11:12:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Phạm Mạnh Quỳnh>
-- Create date: <23/04/2025>
-- Description:	<Tự động cập nhật điểm xét nghành>
-- =============================================
CREATE TRIGGER [dbo].[trg_CapNhatDiemXetNganh]
ON [dbo].[ChonNghanh]
AFTER INSERT, UPDATE
AS
BEGIN
    UPDATE ChonNghanh
    SET DiemXetNghanh = dk.DiemThiTHPT + dk.DiemUuTien
    FROM ChonNghanh cn 
	JOIN DieuKien dk ON cn.MaDieuKien = dk.MaDieuKien
    WHERE EXISTS (
        SELECT 1
        FROM inserted i
        WHERE i.MaChonNghanh = cn.MaChonNghanh
    );
END;
GO
ALTER TABLE [dbo].[ChonNghanh] ENABLE TRIGGER [trg_CapNhatDiemXetNganh]
GO
/****** Object:  Trigger [dbo].[trg_KiemTraDiemXetNghanh]    Script Date: 4/23/2025 11:12:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Phạm Mạnh Quỳnh>
-- Create date: <23/04/2025>
-- Description:	<Kiểm tra xem >
-- =============================================
CREATE TRIGGER [dbo].[trg_KiemTraDiemXetNghanh]
ON [dbo].[ChonNghanh]
AFTER INSERT, UPDATE
AS
BEGIN
    IF EXISTS (
        SELECT 1
        FROM ChonNghanh cn
        JOIN NghanhHoc nh ON cn.MaNghanh = nh.MaNghanh
        WHERE cn.DiemXetNghanh < nh.DiemYeuCau
          AND EXISTS (
              SELECT 1
              FROM inserted i
              WHERE i.MaChonNghanh = cn.MaChonNghanh
          )
    )
    BEGIN
        RAISERROR(N'Điểm xét ngành không đủ yêu cầu!', 16, 1);
        ROLLBACK TRANSACTION;
    END
    ELSE
    BEGIN
        PRINT N'Điểm của bạn đủ để đăng ký vào ngành.';
    END
END;
GO
ALTER TABLE [dbo].[ChonNghanh] ENABLE TRIGGER [trg_KiemTraDiemXetNghanh]
GO
USE [master]
GO
ALTER DATABASE [HoTroChonNghanh] SET  READ_WRITE 
GO
