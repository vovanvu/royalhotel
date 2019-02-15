/*
 Navicat Premium Data Transfer

 Source Server         : hotel
 Source Server Type    : SQL Server
 Source Server Version : 12002000
 Source Host           : .\SQLEXPRESS:1433
 Source Catalog        : QLKS
 Source Schema         : dbo

 Target Server Type    : SQL Server
 Target Server Version : 12002000
 File Encoding         : 65001

 Date: 07/02/2019 16:21:40
*/


-- ----------------------------
-- Table structure for donDatPhong
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[donDatPhong]') AND type IN ('U'))
	DROP TABLE [dbo].[donDatPhong]
GO

CREATE TABLE [dbo].[donDatPhong] (
  [maDon] varchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [maKhachHang] varchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [maPhong] varchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [thoiDiemDat] datetime  NULL,
  [ngayNhanPhong] date  NULL,
  [ngayTraPhong] date  NULL,
  [soPhong] int  NULL,
  [tongCong] int  NULL,
  [tinhTrang] tinyint  NULL
)
GO

ALTER TABLE [dbo].[donDatPhong] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for gia
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[gia]') AND type IN ('U'))
	DROP TABLE [dbo].[gia]
GO

CREATE TABLE [dbo].[gia] (
  [maGia] varchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [maLoaiPhong] varchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [ngayBatDau] date  NULL,
  [ngayKetThuc] date  NULL,
  [gia] real  NULL
)
GO

ALTER TABLE [dbo].[gia] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for hinhAnh
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[hinhAnh]') AND type IN ('U'))
	DROP TABLE [dbo].[hinhAnh]
GO

CREATE TABLE [dbo].[hinhAnh] (
  [maHinh] varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [maLoaiPhong] varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [soThuTu] tinyint  NULL,
  [linkHinh] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[hinhAnh] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for khachHang
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[khachHang]') AND type IN ('U'))
	DROP TABLE [dbo].[khachHang]
GO

CREATE TABLE [dbo].[khachHang] (
  [id] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [name] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [phone_number] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [email] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [password] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL
)
GO

ALTER TABLE [dbo].[khachHang] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for loaiPhong
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[loaiPhong]') AND type IN ('U'))
	DROP TABLE [dbo].[loaiPhong]
GO

CREATE TABLE [dbo].[loaiPhong] (
  [maLoaiPhong] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [tenLoaiPhong] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [dienTich] real  NULL,
  [soGiuongDon] int  NULL,
  [soGiuongDoi] int  NULL,
  [moTa] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[loaiPhong] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for phong
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[phong]') AND type IN ('U'))
	DROP TABLE [dbo].[phong]
GO

CREATE TABLE [dbo].[phong] (
  [maPhong] nvarchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [tenPhong] nvarchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [maLoaiPhong] nvarchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [tinhTrangPhong] tinyint  NULL
)
GO

ALTER TABLE [dbo].[phong] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Primary Key structure for table donDatPhong
-- ----------------------------
ALTER TABLE [dbo].[donDatPhong] ADD CONSTRAINT [PK__donDatPh__2431086DEB8ACB7D] PRIMARY KEY CLUSTERED ([maDon])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table gia
-- ----------------------------
ALTER TABLE [dbo].[gia] ADD CONSTRAINT [PK__Gia__2D8758691FEC4E91] PRIMARY KEY CLUSTERED ([maGia])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table hinhAnh
-- ----------------------------
ALTER TABLE [dbo].[hinhAnh] ADD CONSTRAINT [PK__hinhAnh__DC9CC037030AB84F] PRIMARY KEY CLUSTERED ([maHinh])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table khachHang
-- ----------------------------
ALTER TABLE [dbo].[khachHang] ADD CONSTRAINT [PK__khachhan__3213E83F5AA09C3B] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table loaiPhong
-- ----------------------------
ALTER TABLE [dbo].[loaiPhong] ADD CONSTRAINT [PK__loaiPhon__106832AABF189B07] PRIMARY KEY CLUSTERED ([maLoaiPhong])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO

