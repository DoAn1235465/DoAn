USE [DBSanPhamDA]
GO
/****** Object:  Table [dbo].[HinhAnhSP]    Script Date: 2/27/2018 10:13:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HinhAnhSP](
	[Id_HA] [int] IDENTITY(1,1) NOT NULL,
	[Id] [int] NULL,
	[DiaChi] [text] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_HA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 2/27/2018 10:13:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon](
	[Id_HoaDon] [int] IDENTITY(1,1) NOT NULL,
	[HoTen] [nvarchar](255) NOT NULL,
	[DiaChi] [nvarchar](150) NOT NULL,
	[Email] [nvarchar](255) NOT NULL,
	[DienThoai] [nvarchar](14) NOT NULL,
	[fax] [int] NOT NULL,
	[Cty] [nvarchar](255) NOT NULL,
	[NgayDat] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_HoaDon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HoaDonSanPham]    Script Date: 2/27/2018 10:13:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDonSanPham](
	[Id] [int] NOT NULL,
	[Id_HoaDon] [int] NOT NULL,
	[SoLuong] [int] NOT NULL,
	[DonGia] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC,
	[Id_HoaDon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LienHe]    Script Date: 2/27/2018 10:13:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LienHe](
	[Id_LienHe] [int] IDENTITY(1,1) NOT NULL,
	[HoTen] [nvarchar](50) NOT NULL,
	[Cty] [nvarchar](150) NOT NULL,
	[Email] [nvarchar](150) NOT NULL,
	[DienThoai] [nvarchar](14) NOT NULL,
	[Fax] [int] NOT NULL,
	[DiaChi] [nvarchar](150) NOT NULL,
	[NoiDung] [nvarchar](255) NOT NULL,
	[NgayLienHe] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_LienHe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LoaiSanPham]    Script Date: 2/27/2018 10:13:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiSanPham](
	[Id_Loai] [int] IDENTITY(1,1) NOT NULL,
	[TenLoaiSp] [nvarchar](150) NOT NULL,
	[Id_Nhom] [int] NULL,
	[GhiChu] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_Loai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NhomSanPham]    Script Date: 2/27/2018 10:13:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhomSanPham](
	[Id_Nhom] [int] IDENTITY(1,1) NOT NULL,
	[TenNhom] [nvarchar](150) NOT NULL,
	[ChuThich] [text] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_Nhom] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 2/27/2018 10:13:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Id_Loai] [int] NULL,
	[TenSp] [nvarchar](150) NOT NULL,
	[MauMuc] [nvarchar](150) NULL,
	[KichThuoc] [nvarchar](10) NULL,
	[Gia] [int] NOT NULL,
	[GhiChu] [nvarchar](150) NULL,
	[SoLuongBan] [int] NULL,
	[NgayCapNhat] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 2/27/2018 10:13:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TaiKhoan](
	[Username] [varchar](32) NOT NULL,
	[Password] [varchar](32) NOT NULL,
	[Name] [varchar](128) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[HinhAnhSP] ON 

INSERT [dbo].[HinhAnhSP] ([Id_HA], [Id], [DiaChi]) VALUES (1, 1, N'http://media.bizwebmedia.net/Sites/1179/data/images/2018/2/4607184b0473_2.jpg')
INSERT [dbo].[HinhAnhSP] ([Id_HA], [Id], [DiaChi]) VALUES (2, 1, N'http://media.bizwebmedia.net/Sites/1179/data/images/2018/2/4606670b0473_4.jpg')
INSERT [dbo].[HinhAnhSP] ([Id_HA], [Id], [DiaChi]) VALUES (3, 1, N'http://media.bizwebmedia.net/Sites/1179/data/images/2018/2/4607700b0473_7.jpg')
INSERT [dbo].[HinhAnhSP] ([Id_HA], [Id], [DiaChi]) VALUES (4, 1, N'http://media.bizwebmedia.net/Sites/1179/data/images/2018/2/4608214b0473_6.jpg')
INSERT [dbo].[HinhAnhSP] ([Id_HA], [Id], [DiaChi]) VALUES (5, 1, N'http://media.bizwebmedia.net/Sites/1179/data/images/2018/2/4608714b0473_5.jpg')
INSERT [dbo].[HinhAnhSP] ([Id_HA], [Id], [DiaChi]) VALUES (6, 1, N'http://media.bizwebmedia.net/Sites/1179/data/images/2018/2/4606147b0473_3.jpg')
INSERT [dbo].[HinhAnhSP] ([Id_HA], [Id], [DiaChi]) VALUES (7, 2, N'http://media.bizwebmedia.net/Sites/1179/data/images/2018/2/5434768b0472_1.jpg')
INSERT [dbo].[HinhAnhSP] ([Id_HA], [Id], [DiaChi]) VALUES (8, 2, N'http://media.bizwebmedia.net/Sites/1179/data/images/2018/2/5434812b0472_2.jpg')
INSERT [dbo].[HinhAnhSP] ([Id_HA], [Id], [DiaChi]) VALUES (9, 2, N'http://media.bizwebmedia.net/Sites/1179/data/images/2018/2/5436358b0472_6.jpg')
INSERT [dbo].[HinhAnhSP] ([Id_HA], [Id], [DiaChi]) VALUES (10, 2, N'http://media.bizwebmedia.net/Sites/1179/data/images/2018/2/5435843b0472_3.jpg')
INSERT [dbo].[HinhAnhSP] ([Id_HA], [Id], [DiaChi]) VALUES (11, 2, N'http://media.bizwebmedia.net/Sites/1179/data/images/2018/2/5435329b0472_5.jpg')
INSERT [dbo].[HinhAnhSP] ([Id_HA], [Id], [DiaChi]) VALUES (12, 2, N'http://media.bizwebmedia.net/Sites/1179/data/images/2018/2/5436873b0472_4.jpg')
INSERT [dbo].[HinhAnhSP] ([Id_HA], [Id], [DiaChi]) VALUES (13, 2, N'http://media.bizwebmedia.net/Sites/1179/data/images/2018/2/5437373b0472_7.jpg')
INSERT [dbo].[HinhAnhSP] ([Id_HA], [Id], [DiaChi]) VALUES (14, 3, N'http://media.bizwebmedia.net/Sites/1179/data/images/2018/2/2042270b0471_1.jpg')
INSERT [dbo].[HinhAnhSP] ([Id_HA], [Id], [DiaChi]) VALUES (15, 3, N'http://media.bizwebmedia.net/Sites/1179/data/images/2018/2/2042305b0471_3.jpg')
INSERT [dbo].[HinhAnhSP] ([Id_HA], [Id], [DiaChi]) VALUES (16, 3, N'http://media.bizwebmedia.net/Sites/1179/data/images/2018/2/2042329b0471_7.jpg')
INSERT [dbo].[HinhAnhSP] ([Id_HA], [Id], [DiaChi]) VALUES (17, 3, N'http://media.bizwebmedia.net/Sites/1179/data/images/2018/2/2043326b0471_6.jpg')
INSERT [dbo].[HinhAnhSP] ([Id_HA], [Id], [DiaChi]) VALUES (18, 3, N'http://media.bizwebmedia.net/Sites/1179/data/images/2018/2/2043295b0471_2.jpg')
INSERT [dbo].[HinhAnhSP] ([Id_HA], [Id], [DiaChi]) VALUES (19, 3, N'http://media.bizwebmedia.net/Sites/1179/data/images/2018/2/2043841b0471_4.jpg')
INSERT [dbo].[HinhAnhSP] ([Id_HA], [Id], [DiaChi]) VALUES (20, 3, N'http://media.bizwebmedia.net/Sites/1179/data/images/2018/2/2042787b0471_5.jpg')
INSERT [dbo].[HinhAnhSP] ([Id_HA], [Id], [DiaChi]) VALUES (21, 4, N'http://media.bizwebmedia.net/Sites/1179/data/images/2018/2/1126245b0470_3.jpg')
INSERT [dbo].[HinhAnhSP] ([Id_HA], [Id], [DiaChi]) VALUES (22, 4, N'http://media.bizwebmedia.net/Sites/1179/data/images/2018/2/1125731b0470_2.jpg')
INSERT [dbo].[HinhAnhSP] ([Id_HA], [Id], [DiaChi]) VALUES (23, 4, N'http://media.bizwebmedia.net/Sites/1179/data/images/2018/2/1123675b0470_1.jpg')
INSERT [dbo].[HinhAnhSP] ([Id_HA], [Id], [DiaChi]) VALUES (24, 4, N'http://media.bizwebmedia.net/Sites/1179/data/images/2018/2/1123700b0470_5.jpg')
INSERT [dbo].[HinhAnhSP] ([Id_HA], [Id], [DiaChi]) VALUES (25, 4, N'http://media.bizwebmedia.net/Sites/1179/data/images/2018/2/1124217b0470_7.jpg')
INSERT [dbo].[HinhAnhSP] ([Id_HA], [Id], [DiaChi]) VALUES (26, 4, N'http://media.bizwebmedia.net/Sites/1179/data/images/2018/2/1124718b0470_6.jpg')
INSERT [dbo].[HinhAnhSP] ([Id_HA], [Id], [DiaChi]) VALUES (27, 5, N'http://media.bizwebmedia.net/Sites/1179/data/images/2018/2/1706165b0469_5.jpg')
INSERT [dbo].[HinhAnhSP] ([Id_HA], [Id], [DiaChi]) VALUES (28, 5, N'http://media.bizwebmedia.net/Sites/1179/data/images/2018/2/1706098b0469_1.jpg')
INSERT [dbo].[HinhAnhSP] ([Id_HA], [Id], [DiaChi]) VALUES (29, 5, N'http://media.bizwebmedia.net/Sites/1179/data/images/2018/2/1706637b0469_4.jpg')
INSERT [dbo].[HinhAnhSP] ([Id_HA], [Id], [DiaChi]) VALUES (30, 5, N'http://media.bizwebmedia.net/Sites/1179/data/images/2018/2/1707152b0469_3.jpg')
INSERT [dbo].[HinhAnhSP] ([Id_HA], [Id], [DiaChi]) VALUES (31, 6, N'http://media.bizwebmedia.net/Sites/1179/data/images/2018/2/4712661b0468_2.jpg')
INSERT [dbo].[HinhAnhSP] ([Id_HA], [Id], [DiaChi]) VALUES (32, 6, N'http://media.bizwebmedia.net/Sites/1179/data/images/2018/2/4712630b0468_1.jpg')
INSERT [dbo].[HinhAnhSP] ([Id_HA], [Id], [DiaChi]) VALUES (33, 6, N'http://media.bizwebmedia.net/Sites/1179/data/images/2018/2/4713166b0468_3.jpg')
INSERT [dbo].[HinhAnhSP] ([Id_HA], [Id], [DiaChi]) VALUES (34, 6, N'http://media.bizwebmedia.net/Sites/1179/data/images/2018/2/4713681b0468_4.jpg')
INSERT [dbo].[HinhAnhSP] ([Id_HA], [Id], [DiaChi]) VALUES (35, 7, N'http://media.bizwebmedia.net/Sites/1179/data/images/2018/2/2614153b0467_6.jpg')
INSERT [dbo].[HinhAnhSP] ([Id_HA], [Id], [DiaChi]) VALUES (36, 7, N'http://media.bizwebmedia.net/Sites/1179/data/images/2018/2/2613705b0467_9.jpg')
INSERT [dbo].[HinhAnhSP] ([Id_HA], [Id], [DiaChi]) VALUES (37, 7, N'http://media.bizwebmedia.net/Sites/1179/data/images/2018/2/2613683b0467_8.jpg')
INSERT [dbo].[HinhAnhSP] ([Id_HA], [Id], [DiaChi]) VALUES (38, 7, N'http://media.bizwebmedia.net/Sites/1179/data/images/2018/2/2613658b0467_7.jpg')
INSERT [dbo].[HinhAnhSP] ([Id_HA], [Id], [DiaChi]) VALUES (39, 7, N'http://media.bizwebmedia.net/Sites/1179/data/images/2018/2/2614653b0467_5.jpg')
INSERT [dbo].[HinhAnhSP] ([Id_HA], [Id], [DiaChi]) VALUES (40, 7, N'http://media.bizwebmedia.net/Sites/1179/data/images/2018/2/2614137b0467_2.jpg')
INSERT [dbo].[HinhAnhSP] ([Id_HA], [Id], [DiaChi]) VALUES (41, 7, N'http://media.bizwebmedia.net/Sites/1179/data/images/2018/2/2614113b0467_3.jpg')
INSERT [dbo].[HinhAnhSP] ([Id_HA], [Id], [DiaChi]) VALUES (42, 7, N'http://media.bizwebmedia.net/Sites/1179/data/images/2018/2/2613636b0467_4.jpg')
INSERT [dbo].[HinhAnhSP] ([Id_HA], [Id], [DiaChi]) VALUES (43, 8, N'http://media.bizwebmedia.net/Sites/1179/data/images/2018/2/0738553b0466_2.jpg')
INSERT [dbo].[HinhAnhSP] ([Id_HA], [Id], [DiaChi]) VALUES (44, 8, N'http://media.bizwebmedia.net/Sites/1179/data/images/2018/2/0738019b0466_1.jpg')
INSERT [dbo].[HinhAnhSP] ([Id_HA], [Id], [DiaChi]) VALUES (45, 9, N'http://media.bizwebmedia.net/Sites/1179/data/images/2018/2/4126887b0465_4.jpg')
INSERT [dbo].[HinhAnhSP] ([Id_HA], [Id], [DiaChi]) VALUES (46, 9, N'http://media.bizwebmedia.net/Sites/1179/data/images/2018/2/4125873b0465.jpg')
INSERT [dbo].[HinhAnhSP] ([Id_HA], [Id], [DiaChi]) VALUES (47, 9, N'http://media.bizwebmedia.net/Sites/1179/data/images/2018/2/4126387b0465_2.jpg')
INSERT [dbo].[HinhAnhSP] ([Id_HA], [Id], [DiaChi]) VALUES (48, 9, N'http://media.bizwebmedia.net/Sites/1179/data/images/2018/2/4127401b0465_3.jpg')
INSERT [dbo].[HinhAnhSP] ([Id_HA], [Id], [DiaChi]) VALUES (49, 10, N'http://media.bizwebmedia.net/Sites/1179/data/images/2018/1/0636209b0464_1.jpg')
INSERT [dbo].[HinhAnhSP] ([Id_HA], [Id], [DiaChi]) VALUES (50, 10, N'http://media.bizwebmedia.net/Sites/1179/data/images/2018/1/0637789b0464_4.jpg')
INSERT [dbo].[HinhAnhSP] ([Id_HA], [Id], [DiaChi]) VALUES (51, 10, N'http://media.bizwebmedia.net/Sites/1179/data/images/2018/1/0636744b0464_2.jpg')
INSERT [dbo].[HinhAnhSP] ([Id_HA], [Id], [DiaChi]) VALUES (52, 10, N'http://media.bizwebmedia.net/Sites/1179/data/images/2018/1/0636242b0464_3.jpg')
INSERT [dbo].[HinhAnhSP] ([Id_HA], [Id], [DiaChi]) VALUES (53, 10, N'http://media.bizwebmedia.net/Sites/1179/data/images/2018/1/0637252b0464_5.jpg')
INSERT [dbo].[HinhAnhSP] ([Id_HA], [Id], [DiaChi]) VALUES (98, 18, N'http://media.bizwebmedia.net/Sites/1179/data/images/2017/10/5508831b0437_6.jpg')
INSERT [dbo].[HinhAnhSP] ([Id_HA], [Id], [DiaChi]) VALUES (99, 18, N'http://media.bizwebmedia.net/Sites/1179/data/images/2017/12/4229931b0452_2.jpg')
INSERT [dbo].[HinhAnhSP] ([Id_HA], [Id], [DiaChi]) VALUES (100, 18, N'http://media.bizwebmedia.net/Sites/1179/data/images/2017/10/5507800b0437_4.jpg')
INSERT [dbo].[HinhAnhSP] ([Id_HA], [Id], [DiaChi]) VALUES (101, 18, N'http://media.bizwebmedia.net/Sites/1179/data/images/2017/12/4229853b0452_4.jpg')
INSERT [dbo].[HinhAnhSP] ([Id_HA], [Id], [DiaChi]) VALUES (102, 18, N'http://media.bizwebmedia.net/Sites/1179/data/images/2017/10/5508331b0437_3.jpg')
INSERT [dbo].[HinhAnhSP] ([Id_HA], [Id], [DiaChi]) VALUES (103, 18, N'http://media.bizwebmedia.net/Sites/1179/data/images/2017/12/4230026b0452_3.jpg')
INSERT [dbo].[HinhAnhSP] ([Id_HA], [Id], [DiaChi]) VALUES (104, 18, N'http://media.bizwebmedia.net/Sites/1179/data/images/2017/10/5509345b0437_2.jpg')
INSERT [dbo].[HinhAnhSP] ([Id_HA], [Id], [DiaChi]) VALUES (105, 18, N'http://media.bizwebmedia.net/Sites/1179/data/images/2017/12/4230463b0452_6.jpg')
INSERT [dbo].[HinhAnhSP] ([Id_HA], [Id], [DiaChi]) VALUES (106, 18, N'http://media.bizwebmedia.net/Sites/1179/data/images/2017/12/4230978b0452_5.jpg')
INSERT [dbo].[HinhAnhSP] ([Id_HA], [Id], [DiaChi]) VALUES (110, 20, N'http://media.bizwebmedia.net/Sites/1179/data/images/2017/10/0825097b0436_6.jpg')
INSERT [dbo].[HinhAnhSP] ([Id_HA], [Id], [DiaChi]) VALUES (111, 20, N'http://media.bizwebmedia.net/Sites/1179/data/images/2017/10/0824081b0436_4.jpg')
INSERT [dbo].[HinhAnhSP] ([Id_HA], [Id], [DiaChi]) VALUES (112, 20, N'http://media.bizwebmedia.net/Sites/1179/data/images/2017/12/1700401b0457_4.jpg')
INSERT [dbo].[HinhAnhSP] ([Id_HA], [Id], [DiaChi]) VALUES (113, 20, N'http://media.bizwebmedia.net/Sites/1179/data/images/2017/12/1658346b0457_3.jpg')
INSERT [dbo].[HinhAnhSP] ([Id_HA], [Id], [DiaChi]) VALUES (114, 20, N'http://media.bizwebmedia.net/Sites/1179/data/images/2017/12/1658863b0457_7.jpg')
INSERT [dbo].[HinhAnhSP] ([Id_HA], [Id], [DiaChi]) VALUES (115, 20, N'http://media.bizwebmedia.net/Sites/1179/data/images/2017/12/1658284b0457.jpg')
INSERT [dbo].[HinhAnhSP] ([Id_HA], [Id], [DiaChi]) VALUES (116, 20, N'http://media.bizwebmedia.net/Sites/1179/data/images/2017/12/1658315b0457_2.jpg')
INSERT [dbo].[HinhAnhSP] ([Id_HA], [Id], [DiaChi]) VALUES (117, 20, N'http://media.bizwebmedia.net/Sites/1179/data/images/2017/12/1659897b0457_5.jpg')
INSERT [dbo].[HinhAnhSP] ([Id_HA], [Id], [DiaChi]) VALUES (118, 22, N'http://media.bizwebmedia.net/Sites/1179/data/images/2017/10/1316421b0434_1.jpg')
INSERT [dbo].[HinhAnhSP] ([Id_HA], [Id], [DiaChi]) VALUES (119, 22, N'http://media.bizwebmedia.net/Sites/1179/data/images/2017/12/5915430b0455_2.jpg')
INSERT [dbo].[HinhAnhSP] ([Id_HA], [Id], [DiaChi]) VALUES (120, 22, N'http://media.bizwebmedia.net/Sites/1179/data/images/2017/10/1411212b0434_2.jpg')
INSERT [dbo].[HinhAnhSP] ([Id_HA], [Id], [DiaChi]) VALUES (121, 22, N'http://media.bizwebmedia.net/Sites/1179/data/images/2017/12/5914867b0455_1.jpg')
INSERT [dbo].[HinhAnhSP] ([Id_HA], [Id], [DiaChi]) VALUES (122, 22, N'http://media.bizwebmedia.net/Sites/1179/data/images/2017/10/1411726b0434_3.jpg')
INSERT [dbo].[HinhAnhSP] ([Id_HA], [Id], [DiaChi]) VALUES (123, 22, N'http://media.bizwebmedia.net/Sites/1179/data/images/2017/12/5915933b0455_9.jpg')
INSERT [dbo].[HinhAnhSP] ([Id_HA], [Id], [DiaChi]) VALUES (124, 22, N'http://media.bizwebmedia.net/Sites/1179/data/images/2017/10/1409697b0434_4.jpg')
INSERT [dbo].[HinhAnhSP] ([Id_HA], [Id], [DiaChi]) VALUES (125, 22, N'http://media.bizwebmedia.net/Sites/1179/data/images/2017/12/5914914b0455_3.jpg')
INSERT [dbo].[HinhAnhSP] ([Id_HA], [Id], [DiaChi]) VALUES (126, 22, N'http://media.bizwebmedia.net/Sites/1179/data/images/2017/10/1410201b0434_5.jpg')
INSERT [dbo].[HinhAnhSP] ([Id_HA], [Id], [DiaChi]) VALUES (127, 22, N'http://media.bizwebmedia.net/Sites/1179/data/images/2017/12/5916434b0455_8.jpg')
INSERT [dbo].[HinhAnhSP] ([Id_HA], [Id], [DiaChi]) VALUES (128, 22, N'http://media.bizwebmedia.net/Sites/1179/data/images/2017/10/1410712b0434_6.jpg')
INSERT [dbo].[HinhAnhSP] ([Id_HA], [Id], [DiaChi]) VALUES (129, 22, N'http://media.bizwebmedia.net/Sites/1179/data/images/2017/12/5916939b0455_6.jpg')
INSERT [dbo].[HinhAnhSP] ([Id_HA], [Id], [DiaChi]) VALUES (130, 22, N'http://media.bizwebmedia.net/Sites/1179/data/images/2017/10/1409232b0434_7.jpg')
INSERT [dbo].[HinhAnhSP] ([Id_HA], [Id], [DiaChi]) VALUES (131, 22, N'http://media.bizwebmedia.net/Sites/1179/data/images/2017/12/5914929b0455_4.jpg')
INSERT [dbo].[HinhAnhSP] ([Id_HA], [Id], [DiaChi]) VALUES (132, 22, N'http://media.bizwebmedia.net/Sites/1179/data/images/2017/10/1409283b0434_8.jpg')
INSERT [dbo].[HinhAnhSP] ([Id_HA], [Id], [DiaChi]) VALUES (133, 22, N'http://media.bizwebmedia.net/Sites/1179/data/images/2017/10/1409356b0434_9.jpg')
INSERT [dbo].[HinhAnhSP] ([Id_HA], [Id], [DiaChi]) VALUES (137, 24, N'http://media.bizwebmedia.net/Sites/1179/data/images/2017/10/2452065b0433_4.jpg')
INSERT [dbo].[HinhAnhSP] ([Id_HA], [Id], [DiaChi]) VALUES (138, 24, N'http://media.bizwebmedia.net/Sites/1179/data/images/2017/11/1854546b0451_1.jpg')
INSERT [dbo].[HinhAnhSP] ([Id_HA], [Id], [DiaChi]) VALUES (139, 24, N'http://media.bizwebmedia.net/Sites/1179/data/images/2017/11/1853770b0451_10.jpg')
INSERT [dbo].[HinhAnhSP] ([Id_HA], [Id], [DiaChi]) VALUES (140, 24, N'http://media.bizwebmedia.net/Sites/1179/data/images/2017/11/18535023114944672_209481011.jpg')
INSERT [dbo].[HinhAnhSP] ([Id_HA], [Id], [DiaChi]) VALUES (141, 24, N'http://media.bizwebmedia.net/Sites/1179/data/images/2017/11/1855093b0451_7.jpg')
INSERT [dbo].[HinhAnhSP] ([Id_HA], [Id], [DiaChi]) VALUES (142, 24, N'http://media.bizwebmedia.net/Sites/1179/data/images/2017/11/1853652b0451_8.jpg')
INSERT [dbo].[HinhAnhSP] ([Id_HA], [Id], [DiaChi]) VALUES (143, 24, N'http://media.bizwebmedia.net/Sites/1179/data/images/2017/11/18540463114950307_209481011.jpg')
SET IDENTITY_INSERT [dbo].[HinhAnhSP] OFF
SET IDENTITY_INSERT [dbo].[LoaiSanPham] ON 

INSERT [dbo].[LoaiSanPham] ([Id_Loai], [TenLoaiSp], [Id_Nhom], [GhiChu]) VALUES (1, N'Bút bi', 1, NULL)
INSERT [dbo].[LoaiSanPham] ([Id_Loai], [TenLoaiSp], [Id_Nhom], [GhiChu]) VALUES (2, N'Bút bi nước', 1, NULL)
INSERT [dbo].[LoaiSanPham] ([Id_Loai], [TenLoaiSp], [Id_Nhom], [GhiChu]) VALUES (3, N'Bút chì', 1, NULL)
INSERT [dbo].[LoaiSanPham] ([Id_Loai], [TenLoaiSp], [Id_Nhom], [GhiChu]) VALUES (4, N'Bút đánh dấu', 1, NULL)
INSERT [dbo].[LoaiSanPham] ([Id_Loai], [TenLoaiSp], [Id_Nhom], [GhiChu]) VALUES (5, N'Bút xóa', 1, NULL)
INSERT [dbo].[LoaiSanPham] ([Id_Loai], [TenLoaiSp], [Id_Nhom], [GhiChu]) VALUES (6, N'Sổ học từ', 2, NULL)
INSERT [dbo].[LoaiSanPham] ([Id_Loai], [TenLoaiSp], [Id_Nhom], [GhiChu]) VALUES (7, N'Sổ ghi nhanh', 2, NULL)
INSERT [dbo].[LoaiSanPham] ([Id_Loai], [TenLoaiSp], [Id_Nhom], [GhiChu]) VALUES (8, N'Vở thiếp, Tập vở', 2, NULL)
INSERT [dbo].[LoaiSanPham] ([Id_Loai], [TenLoaiSp], [Id_Nhom], [GhiChu]) VALUES (9, N'Giấy nhớ, giấy nhắc, sổ xé', 2, NULL)
INSERT [dbo].[LoaiSanPham] ([Id_Loai], [TenLoaiSp], [Id_Nhom], [GhiChu]) VALUES (10, N'Sổ giấy vẽ', 2, NULL)
INSERT [dbo].[LoaiSanPham] ([Id_Loai], [TenLoaiSp], [Id_Nhom], [GhiChu]) VALUES (11, N'Hộp đựng đồ, ống cắm bút', 3, NULL)
INSERT [dbo].[LoaiSanPham] ([Id_Loai], [TenLoaiSp], [Id_Nhom], [GhiChu]) VALUES (12, N'Móc chìa khóa', 3, NULL)
INSERT [dbo].[LoaiSanPham] ([Id_Loai], [TenLoaiSp], [Id_Nhom], [GhiChu]) VALUES (13, N'Dụng cụ thu dây', 3, NULL)
INSERT [dbo].[LoaiSanPham] ([Id_Loai], [TenLoaiSp], [Id_Nhom], [GhiChu]) VALUES (14, N'Bấm móng tay', 3, NULL)
INSERT [dbo].[LoaiSanPham] ([Id_Loai], [TenLoaiSp], [Id_Nhom], [GhiChu]) VALUES (15, N'Tấm lót chuột', 3, NULL)
SET IDENTITY_INSERT [dbo].[LoaiSanPham] OFF
SET IDENTITY_INSERT [dbo].[NhomSanPham] ON 

INSERT [dbo].[NhomSanPham] ([Id_Nhom], [TenNhom], [ChuThich]) VALUES (1, N'Bút', NULL)
INSERT [dbo].[NhomSanPham] ([Id_Nhom], [TenNhom], [ChuThich]) VALUES (2, N'Sổ & Vở', NULL)
INSERT [dbo].[NhomSanPham] ([Id_Nhom], [TenNhom], [ChuThich]) VALUES (3, N'Đồ dùng thông minh', NULL)
SET IDENTITY_INSERT [dbo].[NhomSanPham] OFF
SET IDENTITY_INSERT [dbo].[SanPham] ON 

INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (1, 2, N'Bút bi nước hero B0473 15g', N'', N'', 8000, NULL, 34, CAST(N'2018-02-26 16:57:48.803' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (2, 2, N'Bút bi nước hình voi B0472 10g', N'', N'', 6000, NULL, 92, CAST(N'2018-02-26 16:57:52.237' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (3, 2, N'Bút bi nước hồng hạc B0471 10g', N'', N'', 6000, NULL, 80, CAST(N'2018-02-26 16:57:52.890' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (4, 3, N'Bút chì kim hình gấu B0470 10g', N'', N'', 4000, NULL, 43, CAST(N'2018-02-26 16:57:54.407' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (5, 2, N'Bút bi nước Totoro xanh trắng B0469 15g', N'', N'', 7000, NULL, 51, CAST(N'2018-02-26 16:57:55.677' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (6, 2, N'Bút bi nước mèo gấu B0468 15g', N'', N'', 6000, NULL, 98, CAST(N'2018-02-26 16:57:56.420' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (7, 2, N'Bút bi nước hình mèo đuôi dài B0467 15g', N'', N'', 6000, NULL, 33, CAST(N'2018-02-26 16:57:57.440' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (8, 5, N'Bút xóa băng I Love You B0466 15g', N'', N'', 8000, NULL, 90, CAST(N'2018-02-26 16:57:58.317' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (9, 2, N'Bút bi nước hình thỏ B0465 10g', N'', N'', 5000, NULL, 46, CAST(N'2018-02-26 16:57:58.930' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (10, 1, N'Bút bi aha hình động vật ngộ nghĩnh B0464 10g', N'', N' 15', 6000, NULL, 63, CAST(N'2018-02-26 16:58:00.263' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (11, 2, N'Bút bi nước hình bàn tay ok B0461 15g', N' đen', N' 16.5 ', 7000, NULL, 62, CAST(N'2018-02-26 16:58:02.940' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (12, 2, N'Bút bi nước hình máy ảnh B0460 10g', N' đen', N' 16.5 ', 6000, NULL, 60, CAST(N'2018-02-26 16:58:03.767' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (13, 1, N'Bút bi Hi B0459 10g', N' xanh', N' 15 ', 5000, NULL, 80, CAST(N'2018-02-26 16:58:04.817' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (14, 1, N'Bút bi quạt hình mặt cười B0453 20g', N' đen', N' 16.5 ', 6000, NULL, 61, CAST(N'2018-02-26 16:58:05.550' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (15, 2, N'Bút bi nước hình cá đen trắng B0456 15g', N' đen', N' 17 ', 6000, NULL, 90, CAST(N'2018-02-26 16:58:06.360' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (16, 1, N'Bút bi hình cá màu sắc B0454 20g', N' đen', N' 17 ', 6000, NULL, 53, CAST(N'2018-02-26 16:58:07.963' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (17, 2, N'Bút bi nước mầm đỗ hồng trắng B0437 10g', N' đen', N' 16 ', 6000, NULL, 53, CAST(N'2018-02-26 16:58:08.690' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (18, 2, N'Bút bi nước Cotton Doll gấu trúc B0452 10g', N' đen', N' 16.5 ', 6000, NULL, 80, CAST(N'2018-02-26 16:58:08.727' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (19, 2, N'Bút bi nước hình gấu mèo đen B0436 10g', N'', N' 17,5 ', 6000, NULL, 61, CAST(N'2018-02-26 16:58:09.860' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (20, 2, N'Bút bi nước noel B0457 10g', N' đen', N' 18 ', 5000, NULL, 75, CAST(N'2018-02-26 16:58:09.963' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (21, 2, N'Bút bi nước hình mặt cảm xúc B0434 10g', N' đen', N' 16 ', 6000, NULL, 56, CAST(N'2018-02-26 16:58:10.603' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (22, 2, N'Bút bi nước tuần lộc B0455 20g', N' đen', N'', 6000, NULL, 72, CAST(N'2018-02-26 16:58:10.633' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (23, 2, N'Bút bi nước Baby B0433 10g', N' xanh', N' 15 ', 5000, NULL, 83, CAST(N'2018-02-26 16:58:11.470' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (24, 1, N'Bút bi mắt kính trơn màu sắc B0451 15g', N' xanh', N' 14.8 ', 5000, NULL, 72, CAST(N'2018-02-26 16:58:11.560' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (25, 1, N'Bút bi hình heo xinh màu hồng B0432 10g', N' đen', N' 16 ', 6000, NULL, 95, CAST(N'2018-02-26 16:58:12.310' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (26, 1, N'Bút bi viên thuốc hình Mickey B0431 10g', N'', N' 11 ', 5000, NULL, 95, CAST(N'2018-02-26 16:58:13.630' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (27, 1, N'Bút bi hình bàn tay dây đeo B0449 20g', N' xanh', N' 14 ', 6000, NULL, 97, CAST(N'2018-02-26 16:58:14.040' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (28, 2, N'Bút bi nước hình doremon màu sắc B0430 10g', N' đen', N' 16.8 ', 6000, NULL, 46, CAST(N'2018-02-26 16:58:14.440' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (29, 2, N'Bút bi nước Picachu B0429 10g', N' Đen', N' 18.5 ', 6000, NULL, 74, CAST(N'2018-02-26 16:58:15.480' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (30, 1, N'Bút bi móc khóa Bowling B0447 10g', N'', N' 7 x 11 ', 5000, NULL, 40, CAST(N'2018-02-26 16:58:16.203' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (31, 2, N'Bút bi nước hình lông gà màu sắc B0445 10g', N' đen', N' 18 ', 6000, NULL, 64, CAST(N'2018-02-26 16:58:17.030' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (32, 2, N'Bút bi nước You No hồng B0427 10g', N' Đen', N' 17 ', 6000, NULL, 83, CAST(N'2018-02-26 16:58:17.300' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (33, 2, N'Bút bi nước hình rĩa màu sắc B0444 15g', N'', N' 17 ', 5000, NULL, 52, CAST(N'2018-02-26 16:58:17.723' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (34, 2, N'Bút bi nước Hello Kitty Hồng B0426 10g', N' đen', N' 16.5 ', 6000, NULL, 93, CAST(N'2018-02-26 16:58:18.020' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (35, 2, N'Bút bi nước Happy Party B0443 10g', N' đen', N' 15.5 ', 6000, NULL, 34, CAST(N'2018-02-26 16:58:18.413' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (36, 2, N'Bút bi nước Friend B0425 10g', N' xanh', N' 18.5 ', 6000, NULL, 85, CAST(N'2018-02-26 16:58:18.580' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (37, 2, N'Bút bi nước hình chồi lá B0442 10g', N' đen', N' 18 ', 5000, NULL, 93, CAST(N'2018-02-26 16:58:19.847' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (38, 4, N'Bút đánh dấu Flourescent B0404 10g', N'', N'', 7000, NULL, 79, CAST(N'2018-02-26 16:58:20.007' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (39, 2, N'Bút bi nước Polar Bear đen trắng B0441 10g', N'', N' 16 ', 6000, NULL, 86, CAST(N'2018-02-26 16:58:20.470' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (40, 2, N'Bút bi nước hình xương rồng Sunday B0424 10g', N' đen', N' 18 ', 6000, NULL, 37, CAST(N'2018-02-26 16:58:20.600' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (41, 2, N'Bút bi nước Evil đen B0440 10g', N' đen', N' 16 ', 6000, NULL, 77, CAST(N'2018-02-26 16:58:21.417' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (42, 2, N'Bút bi nước Pikachu B0423 10g', N' đen', N' 17 ', 6000, NULL, 32, CAST(N'2018-02-26 16:58:21.457' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (43, 1, N'Bút bi đôi B0422 30g', N' đen', N' 16.5 ', 17000, NULL, 77, CAST(N'2018-02-26 16:58:22.317' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (44, 2, N'Bút bi nước Doremon xanh B0439 10g', N' Đen', N' 16.5 ', 6000, NULL, 86, CAST(N'2018-02-26 16:58:23.703' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (45, 2, N'Bút bi nước gà chíp B0421 10g', N'', N' 17 ', 6000, NULL, 72, CAST(N'2018-02-26 16:58:23.960' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (46, 2, N'Bút bi nước tai thỏ B0401 15g', N' đen', N'', 6000, NULL, 91, CAST(N'2018-02-26 16:58:25.177' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (47, 2, N'Bút bi nước thỏ xanh hồng B0420 10g', N' đen', N' 16.5 ', 6000, NULL, 82, CAST(N'2018-02-26 16:58:26.537' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (48, 2, N'Bút bi nước hình quạt tai thỏ B0385 10g', N' đen', N' 27.2 ', 6000, NULL, 35, CAST(N'2018-02-26 16:58:26.827' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (49, 2, N'Bút bi nước Fruit Cool And Refreshing B0419 10g', N'', N' 16.5 ', 6000, NULL, 39, CAST(N'2018-02-26 16:58:27.350' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (50, 2, N'Bút bi nước hình bí ngô B0368 10g', N'', N' 17 ', 6000, NULL, 30, CAST(N'2018-02-26 16:58:27.527' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (51, 2, N'Bút bi nước gấu cú mèo B0384 10g', N' đen', N' 15.5 ', 6000, NULL, 68, CAST(N'2018-02-26 16:58:27.797' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (52, 2, N'Bút bi nước hình người tuyết B0399 15g', N' đen', N' 15 ', 6000, NULL, 79, CAST(N'2018-02-26 16:58:27.993' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (53, 2, N'Bút bi nước Candy Kiss B0367 10g', N'', N' 13.5 ', 8000, NULL, 41, CAST(N'2018-02-26 16:58:28.637' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (54, 1, N'Bút bi để bàn hình hươu cao cổ B0418 15g', N' Đen', N' 15.5 ', 7000, NULL, 41, CAST(N'2018-02-26 16:58:28.757' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (55, 2, N'Bút bi nước mèo Zoo B0383 10g', N' đen', N' 18', 6000, NULL, 83, CAST(N'2018-02-26 16:58:28.770' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (56, 2, N'Bút bi nước Sunny Doll B0398 10g', N'', N' 18.5 ', 6000, NULL, 43, CAST(N'2018-02-26 16:58:29.763' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (57, 2, N'Bút bi nước hình quạt Minion B0366 20g', N' xanh', N' 11 x 19 ', 4000, NULL, 82, CAST(N'2018-02-26 16:58:29.873' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (58, 2, N'Bút bi nước kẹo mút nơ B0382 15g', N' xanh', N' 16.5 ', 6000, NULL, 75, CAST(N'2018-02-26 16:58:29.910' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (59, 2, N'Bút bi nước minion doremon hình quạt B0417 15g', N' đen', N' 22 ', 6000, NULL, 88, CAST(N'2018-02-26 16:58:29.903' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (60, 2, N'Bút bi nước hình doremon B0416 10g', N' đen', N' 15.5 ', 5000, NULL, 64, CAST(N'2018-02-26 16:58:31.510' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (61, 2, N'Bút bi nước B0397 10g', N' đen', N' 16.5 ', 6000, NULL, 50, CAST(N'2018-02-26 16:58:31.527' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (62, 2, N'Bút bi nước Line Friends B0381 10g', N'', N' 16.5 ', 5000, NULL, 69, CAST(N'2018-02-26 16:58:31.530' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (63, 2, N'Bút bi nước mini cute B0365 10g', N'', N' 15 ', 6000, NULL, 41, CAST(N'2018-02-26 16:58:31.547' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (64, 2, N'Bút bi nước thỏ vịt B0415 10g', N' đen', N' 17 ', 6000, NULL, 35, CAST(N'2018-02-26 16:58:32.960' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (65, 2, N'Bút bi nước kẹo hồ lô B0396 10g', N' đen', N' 16 ', 6000, NULL, 35, CAST(N'2018-02-26 16:58:33.077' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (66, 2, N'Bút bi nước cây nấm B0379 15g', N' Xanh', N' 13.5 ', 6000, NULL, 49, CAST(N'2018-02-26 16:58:33.083' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (67, 1, N'Bút bi thỏ uốn dẻo B0378 20g', N' đen', N' 16 ', 6000, NULL, 59, CAST(N'2018-02-26 16:58:34.293' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (68, 3, N'Bút chì màu kẹo hồ lô B0395 10g', N'', N' 11.5 ', 4000, NULL, 41, CAST(N'2018-02-26 16:58:34.297' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (69, 2, N'Bút bi nước thỏ gấu vịt B0414 10g', N' đen', N' 16 ', 6000, NULL, 66, CAST(N'2018-02-26 16:58:34.350' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (70, 2, N'Bút bi nước hình búp bê nga B0363 10g', N'', N' 16 ', 6000, NULL, 46, CAST(N'2018-02-26 16:58:34.620' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (71, 1, N'Bút bi kiêm móc khóa Hello Kitty B0377 30g', N' xanh', N' 5 x 11 ', 10000, NULL, 73, CAST(N'2018-02-26 16:58:35.243' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (72, 2, N'Bút bi nước mèo mắt kính B0412 10g', N' đen', N' 18.5 ', 5000, NULL, 33, CAST(N'2018-02-26 16:58:35.443' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (73, 2, N'Bút bi nước Holiday B0394 10g', N' đen', N' 17 ', 6000, NULL, 38, CAST(N'2018-02-26 16:58:35.470' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (74, 2, N'Bút bi nước hình cừu B0376 15g', N' đen', N' 18.5 ', 6000, NULL, 94, CAST(N'2018-02-26 16:58:36.600' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (75, 2, N'Bút bi nước hình kem ốc quế màu sắc B0411 10g', N'', N' 16 ', 6000, NULL, 82, CAST(N'2018-02-26 16:58:38.343' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (76, 2, N'Bút bi nước thỏ mắt kính B0375 10g', N' xanh', N' 18,5 ', 6000, NULL, 97, CAST(N'2018-02-26 16:58:38.393' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (77, 2, N'Bút bi nước thỏ hồng tai cụp B0410 10g', N' đen', N' 18.5 ', 6000, NULL, 40, CAST(N'2018-02-26 16:58:39.630' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (78, 5, N'Bút xóa băng Bear B0392 18g', N'', N' 8.5 x 3 ', 17000, NULL, 62, CAST(N'2018-02-26 16:58:39.777' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (79, 2, N'Bút bi nước hình quả B0409 10g', N' đen', N' 16.5 ', 6000, NULL, 72, CAST(N'2018-02-26 16:58:40.777' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (80, 4, N'Bút đánh dấu Cotton Doll B0391 20g', N'', N' 14.5 ', 14000, NULL, 94, CAST(N'2018-02-26 16:58:40.777' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (81, 2, N'Bút bi nước thỏ tai dài B0373 10g', N' đen', N' 18.5 ', 6000, NULL, 30, CAST(N'2018-02-26 16:58:40.867' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (82, 2, N'Bút bi nước Kimono B0361 10g', N' đen', N' 16 ', 6000, NULL, 78, CAST(N'2018-02-26 16:58:40.987' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (83, 2, N'Bút bi nước Lemon Bear B0408 10g', N'', N' 16.5 ', 6000, NULL, 66, CAST(N'2018-02-26 16:58:41.593' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (84, 2, N'Bút bi nước hình thỏ Bunny B0364 10g', N' đen', N' 17 ', 8000, NULL, 44, CAST(N'2018-02-26 16:58:42.720' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (85, 2, N'Bút bi nước hình mèo đốm B0359 10g', N' đen', N' 16 ', 4000, NULL, 54, CAST(N'2018-02-26 16:58:42.887' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (86, 1, N'Bút bi màu sắc Classic Diamond B0372 10g', N'', N' 16 ', 7000, NULL, 33, CAST(N'2018-02-26 16:58:43.433' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (87, 2, N'Bút bi nước Hamburg B0358 15g', N' đen', N' 17 ', 6000, NULL, 46, CAST(N'2018-02-26 16:58:44.087' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (88, 2, N'Bút bi nước hình gấu B0407 10g', N' đen', N' 17.7 ', 6000, NULL, 31, CAST(N'2018-02-26 16:58:44.257' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (89, 2, N'Bút bi nước màu sắc chấm bi B0389 10g', N'', N' 16 ', 7000, NULL, 92, CAST(N'2018-02-26 16:58:44.420' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (90, 2, N'Bút bi nước ốc sên B0371 20g', N'', N' 16 ', 5000, NULL, 67, CAST(N'2018-02-26 16:58:44.463' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (91, 2, N'Bút bi nước hình Doremon B0357 15g', N' Đen', N' 17.7 ', 5000, NULL, 44, CAST(N'2018-02-26 16:58:45.687' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (92, 1, N'Bút bi dưa hấu B0403 10g', N' đen', N' 15 ', 5000, NULL, 60, CAST(N'2018-02-26 16:58:45.830' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (93, 2, N'Bút bi nước thỏ mèo gấu vịt B0370 10g', N' đen', N' 17.5 ', 6000, NULL, 43, CAST(N'2018-02-26 16:58:46.543' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (94, 2, N'Bút bi nước MUSTACHE B0356 10g', N' đen', N' 15.3 ', 5000, NULL, 63, CAST(N'2018-02-26 16:58:46.853' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (95, 2, N'Bút bi nước mèo B0402 10g', N' xanh', N'', 5000, NULL, 79, CAST(N'2018-02-26 16:58:46.983' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (96, 4, N'Bộ bút đánh dấu 6 chiếc B0387 40g', N'', N' 10.5 ', 36000, NULL, 83, CAST(N'2018-02-26 16:58:47.237' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (97, 1, N'Bút bi hình thỏi son B0355 10g', N'', N' 9.5 ', 4000, NULL, 66, CAST(N'2018-02-26 16:58:47.623' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (98, 2, N'Bút bi nước vô diện B0354 15g', N' đen', N' 16.1 ', 6000, NULL, 53, CAST(N'2018-02-26 16:58:48.657' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (99, 1, N'Bút bi hình bình sữa Love Milk B0386 10g', N' đen', N'', 6000, NULL, 35, CAST(N'2018-02-26 16:58:48.713' AS DateTime))
GO
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (100, 1, N'Bút bi bò sữa màu sắc B0343 10g', N'', N' 15 ', 78000, NULL, 91, CAST(N'2018-02-26 16:58:48.883' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (101, 2, N'Bút bi nước B0329 10g', N' xanh', N' 15,5 ', 6000, NULL, 69, CAST(N'2018-02-26 16:58:49.977' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (102, 2, N'Bút bi nước Bow Memories kẻ và nơ B0119 10g', N'', N'', 0, NULL, 40, CAST(N'2018-02-26 16:58:50.057' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (103, 3, N'Bút chì gỗ đầu tấy B0351 20g', N'', N' 17.6 ', 4000, NULL, 53, CAST(N'2018-02-26 16:58:50.407' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (104, 3, N'Bút chì gỗ ốc sên bướm vịt B0092 10g', N'', N'', 0, NULL, 54, CAST(N'2018-02-26 16:58:51.570' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (105, 3, N'Bút chì gỗ đầu tẩy hình Noel B0333 15g', N'', N' 21 ', 4000, NULL, 45, CAST(N'2018-02-26 16:58:51.873' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (106, 1, N'Bút bi hình cà rốt B0349 10g', N'', N' 15.3 ', 5000, NULL, 85, CAST(N'2018-02-26 16:58:54.687' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (107, 1, N'Bút bi hình quạt Touch Me B0286 20g', N'', N' 11 x 20 ', 5000, NULL, 62, CAST(N'2018-02-26 16:58:56.343' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (108, 2, N'Bút bi nước hình thỏ Cony B0326 10g', N' xanh', N' 15,5 ', 6000, NULL, 84, CAST(N'2018-02-26 16:58:58.083' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (109, 1, N'Bút bi Aha B0210 10g', N'', N' 14 ', 6000, NULL, 34, CAST(N'2018-02-26 16:58:58.350' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (110, 1, N'Bút bi màu sắc bộ 6 chiếc B0284 60g', N'', N' 15 ', 32000, NULL, 68, CAST(N'2018-02-26 16:58:58.683' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (111, 2, N'Bút bi nước hình mèo Mr A Miao B0328 10g', N' xanh', N' 15.5 ', 5000, NULL, 45, CAST(N'2018-02-26 16:59:00.147' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (112, 1, N'Bút bi hình quạt Summer Loving B0347 15g', N'', N' 11 x 20 ', 4000, NULL, 86, CAST(N'2018-02-26 16:59:00.197' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (113, 2, N'Bút bi nước The Bianconeri B0166 15g', N'', N'', 8000, NULL, 37, CAST(N'2018-02-26 16:59:00.423' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (114, 1, N'Bút bi hình bánh B0289 20g', N'', N' 14 ', 21000, NULL, 49, CAST(N'2018-02-26 16:59:00.523' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (115, 2, N'Bút bi nước hình mèo Lovely Animals B0327 10g', N' xanh', N' 15.5 ', 5000, NULL, 58, CAST(N'2018-02-26 16:59:01.020' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (116, 2, N'Bút bi nước Totoro B0282 20g', N'', N' 16.5 ', 4000, NULL, 86, CAST(N'2018-02-26 16:59:02.877' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (117, 1, N'Bút bi uốn dẻo hình kẹo mút B0165 35g', N'', N'', 14000, NULL, 71, CAST(N'2018-02-26 16:59:03.150' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (118, 2, N'Bút bi nước Super Man hình ống hút B0315 15g', N' Xanh', N' 19 ', 6000, NULL, 60, CAST(N'2018-02-26 16:59:03.170' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (119, 1, N'Bút bi hình quạt B0345 15g', N'', N' 19 ', 4000, NULL, 81, CAST(N'2018-02-26 16:59:03.487' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (120, 1, N'Bút bi Bai Jia hình mèo B0150 10g', N'', N'', 5000, NULL, 51, CAST(N'2018-02-26 16:59:05.833' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (121, 1, N'Bút bi 10 ngòi B0319 30g', N'', N'', 8000, NULL, 89, CAST(N'2018-02-26 16:59:06.000' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (122, 2, N'Bút bi nước B0340 10g', N'', N' 15.3 ', 4000, NULL, 40, CAST(N'2018-02-26 16:59:06.133' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (123, 4, N'Bút đánh dấu Monami Memory S B0199 15g', N'', N'', 10000, NULL, 94, CAST(N'2018-02-26 16:59:07.243' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (124, 1, N'Bút bi kem ốc quế B0154 30g', N'', N'', 6000, NULL, 50, CAST(N'2018-02-26 16:59:07.377' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (125, 2, N'Bút bi nước gấu nâu 0.38mm B0314 15g', N' xanh', N' 15 ', 5000, NULL, 94, CAST(N'2018-02-26 16:59:07.567' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (126, 1, N'Bút bi hình quạt B0280 20g', N'', N'', 5000, NULL, 87, CAST(N'2018-02-26 16:59:07.617' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (127, 4, N'Bút đánh dấu Monami Color Highlighter B0198 15g', N'', N'', 13000, NULL, 43, CAST(N'2018-02-26 16:59:08.417' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (128, 1, N'Bút bi uốn dẻo hình bàn tay B0151 25g', N'', N' 19.2 ', 14000, NULL, 53, CAST(N'2018-02-26 16:59:08.417' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (129, 2, N'Bút bi nước Lovely Puppy Dream B0339 10g', N'', N' 15 ', 3000, NULL, 75, CAST(N'2018-02-26 16:59:08.533' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (130, 2, N'Bút bi nước thỏ ngọc hồng, trắng, xanh B0312 15g', N' xanh', N' 17 ', 6000, NULL, 78, CAST(N'2018-02-26 16:59:08.903' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (131, 1, N'Bút bi hươu cao cổ B0127 10g', N'', N'', 4000, NULL, 30, CAST(N'2018-02-26 16:59:09.120' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (132, 3, N'Bút chì gỗ xe cộ B0041', N'', N'', 0, NULL, 49, CAST(N'2018-02-26 16:59:09.280' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (133, 4, N'Bút đánh dấu sáp màu Monami Inkjet Safe B0197 20g', N'', N'', 20000, NULL, 80, CAST(N'2018-02-26 16:59:09.657' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (134, 1, N'Bút bi 4 ngòi B0338 30g', N'', N' 14.5 ', 7000, NULL, 83, CAST(N'2018-02-26 16:59:09.960' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (135, 2, N'Bút bi nước mèo đen B0276 10g', N'', N' 17 ', 5000, NULL, 33, CAST(N'2018-02-26 16:59:10.000' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (136, 2, N'Bút bi nước gà chíp B0308 15g', N' xanh', N' 17 ', 6000, NULL, 58, CAST(N'2018-02-26 16:59:10.213' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (137, 2, N'Bút bi nước hình hoa quả đầu bi 0.5mm B0306 20g', N' xanh', N'', 6000, NULL, 69, CAST(N'2018-02-26 16:59:11.207' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (138, 3, N'Bút chì gỗ nốt nhạc B0024', N'', N'', 0, NULL, 59, CAST(N'2018-02-26 16:59:11.487' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (139, 2, N'Bút bi nước Minions B0275 10g', N'', N' 18 ', 5000, NULL, 83, CAST(N'2018-02-26 16:59:12.773' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (140, 1, N'Bút bi Eiffel Tower K1227 15g', N'', N' 14 x 4 ', 9000, NULL, 36, CAST(N'2018-02-26 16:59:13.063' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (141, 2, N'Bút bi nước hình gấu thỏ B0317 15g', N' xanh', N' 15 ', 5000, NULL, 32, CAST(N'2018-02-26 16:59:15.473' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (142, 1, N'Bút bi Too Cute B0274 20g', N'', N' 17 ', 5000, NULL, 86, CAST(N'2018-02-26 16:59:15.680' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (143, 1, N'Bút bi quạt mèo xinh K1171 20g', N'', N'', 5000, NULL, 38, CAST(N'2018-02-26 16:59:15.787' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (144, 2, N'Bút bi nước hình khỉ B0305 10g', N' xanh', N' 21 ', 9000, NULL, 68, CAST(N'2018-02-26 16:59:15.980' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (145, 1, N'Bút bi dễ thương Lucky B0146 10g', N'', N' 13.5 ', 4000, NULL, 74, CAST(N'2018-02-26 16:59:17.643' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (146, 5, N'Bút xóa băng B0335 20g', N'', N' 7 x 4.5 ', 17000, NULL, 53, CAST(N'2018-02-26 16:59:17.840' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (147, 1, N'Bút bi gấu bông B0142 10g', N'', N' 22 x 0.8 ', 8000, NULL, 45, CAST(N'2018-02-26 16:59:18.750' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (148, 2, N'Bút bi nước mèo đen trắng B0304 10g', N' xanh', N' 17.5 ', 5000, NULL, 32, CAST(N'2018-02-26 16:59:18.827' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (149, 2, N'Bút bi nước B0193 10g', N'', N'', 3000, NULL, 80, CAST(N'2018-02-26 16:59:18.857' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (150, 5, N'Bút xóa băng Choco Milk B0334 20g', N'', N' 7 x 3.5 ', 17000, NULL, 63, CAST(N'2018-02-26 16:59:19.050' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (151, 1, N'Bút bi mắt kính B0270 14g', N'', N' 13.5 x 3 ', 6000, NULL, 68, CAST(N'2018-02-26 16:59:19.973' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (152, 1, N'Bút bi kẹo mút B0137 10g', N'', N'', 5000, NULL, 78, CAST(N'2018-02-26 16:59:20.057' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (153, 1, N'Bút bi Patin B0190 10g', N'', N'', 6000, NULL, 32, CAST(N'2018-02-26 16:59:21.417' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (154, 2, N'Bút bi nước hình Batman B0297 10g', N' xanh', N' 16 ', 5000, NULL, 61, CAST(N'2018-02-26 16:59:21.527' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (155, 5, N'Bút xóa băng hình gà chíp K1620 20g', N'', N' 4.2 x 7 ', 17000, NULL, 69, CAST(N'2018-02-26 16:59:21.717' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (156, 1, N'Bút bi B0271 10g', N'', N'', 7000, NULL, 97, CAST(N'2018-02-26 16:59:22.560' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (157, 1, N'Bút bi kẹo bông B0056', N'', N'', 7000, NULL, 69, CAST(N'2018-02-26 16:59:23.170' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (158, 4, N'Bút đánh dấu sáp màu Monami Inkjet Safe B0179 2550g', N'', N'', 20000, NULL, 85, CAST(N'2018-02-26 16:59:23.273' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (159, 3, N'Bút chì kim ngòi to Hello Kitty B0323 10g', N'', N' 15.5 ', 5000, NULL, 54, CAST(N'2018-02-26 16:59:24.013' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (160, 5, N'Bút xóa băng Lovely Friends K1382 20g', N'', N' 3 x 6 ', 19000, NULL, 38, CAST(N'2018-02-26 16:59:24.813' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (161, 3, N'Bút chì kim vương miện B0029', N'', N'', 12000, NULL, 78, CAST(N'2018-02-26 16:59:25.820' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (162, 2, N'Bút bi nước hình mèo B0292 10g', N' xanh', N' 17 ', 6000, NULL, 36, CAST(N'2018-02-26 16:59:28.267' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (163, 5, N'Bút xóa Corection Tape B0332 15g', N'', N' 8 x 4.5 ', 30000, NULL, 52, CAST(N'2018-02-26 16:59:29.067' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (164, 1, N'Bút bi uốn dẻo hình quần vợt B0171 35g', N'', N'', 14000, NULL, 55, CAST(N'2018-02-26 16:59:34.097' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (165, 1, N'Bút bi The Bianconeri B0167 15g', N'', N'', 6000, NULL, 75, CAST(N'2018-02-26 16:59:37.090' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (166, 3, N'Bút chì sáp aihao 8 màu B0194', N'', N' 9 ', 9000, NULL, 55, CAST(N'2018-02-26 16:59:37.400' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (167, 3, N'Bút chì Mickey Minnie B0324 10g', N'', N' 15 ', 5000, NULL, 50, CAST(N'2018-02-26 16:59:37.740' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (168, 2, N'Bút bi nước vương miện B0034', N'', N'', 12000, NULL, 88, CAST(N'2018-02-26 16:59:40.490' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (169, 3, N'Bút chì kim 0.5mm B0325 10g', N'', N' 14,5 ', 3000, NULL, 47, CAST(N'2018-02-26 16:59:40.943' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (170, 2, N'Bút bi nước kẻ nắp trắng B0105', N'', N'', 0, NULL, 97, CAST(N'2018-02-26 16:59:40.950' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (171, 1, N'Bút bi vương miện B0028', N'', N'', 15000, NULL, 96, CAST(N'2018-02-26 16:59:42.310' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (172, 1, N'Bút bi kem ốc quế cỡ đại màu trơn B0287 20g', N'', N' 14', 0, NULL, 40, CAST(N'2018-02-26 16:59:44.433' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (173, 3, N'Bút chì kim Minimonster B0322 10g', N'', N' 14.5 ', 0, NULL, 50, CAST(N'2018-02-26 16:59:44.893' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (174, 3, N'Bút chì cầu vồng bộ 2 chiếc B0283 50g', N'', N' 16 ', 0, NULL, 65, CAST(N'2018-02-26 16:59:47.080' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (175, 2, N'Bút bi nước Monami B0204 10g', N'', N'', 0, NULL, 66, CAST(N'2018-02-26 16:59:47.167' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (176, 2, N'Bút bi nước hình hoa Tulip B0321 25g', N' xanh', N' 20', 0, NULL, 93, CAST(N'2018-02-26 16:59:47.293' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (177, 7, N'Sổ lò xo Panda S0943 55g', N'', N'', 10000, NULL, 80, CAST(N'2018-02-26 16:59:47.327' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (178, 2, N'Bút bi nước B0302 10g', N' xanh', N' 16.5 ', 4000, NULL, 54, CAST(N'2018-02-26 16:59:48.977' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (179, 4, N'Bút đánh dấu Monami Hi Star 6015 B0202 10g', N'', N'', 0, NULL, 53, CAST(N'2018-02-26 16:59:48.983' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (180, 1, N'Bút bi Hello kitty B0273 15g', N'', N' 18 ', 0, NULL, 72, CAST(N'2018-02-26 16:59:49.053' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (181, 2, N'Bút bi nước Super Man B0310 15g', N' xanh', N' 19.5 ', 0, NULL, 78, CAST(N'2018-02-26 16:59:49.353' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (182, 1, N'Bút bi quả bowling mặt cảm xúc B0446 10g', N' xanh', N' 7 x 11 ', 0, NULL, 96, CAST(N'2018-02-26 16:59:50.413' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (183, 3, N'Bút chì gỗ B0268 10g', N'', N' 22 ', 0, NULL, 44, CAST(N'2018-02-26 16:59:50.417' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (184, 2, N'Bút bi nước classic vintage a car B0132 0,35 mm', N'', N'', 0, NULL, 51, CAST(N'2018-02-26 16:59:50.647' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (185, 3, N'Bút chì gỗ đầu tẩy hình động vật ngộ nghĩnh B0320 20g', N'', N' 18.5 ', 0, NULL, 53, CAST(N'2018-02-26 16:59:51.117' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (186, 2, N'Bút bi nước Bonjour B0195 10g', N'', N' 17 ', 0, NULL, 89, CAST(N'2018-02-26 16:59:51.130' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (187, 3, N'Bút chì gỗ chữ cái B0267 10g', N'', N' 22 ', 0, NULL, 45, CAST(N'2018-02-26 16:59:51.623' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (188, 2, N'Bút bi nước 0.35 hoa quả caro/chấm bi/kẻ B0125 8g', N'', N'', 0, NULL, 46, CAST(N'2018-02-26 16:59:51.710' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (189, 2, N'Bút bi nước I Love You B0405 10g', N' đen', N' 14.5 ', 0, NULL, 95, CAST(N'2018-02-26 16:59:51.777' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (190, 2, N'Bút bi nước Monami Raina 2075 0.5mm B0191 10g', N'', N'', 0, NULL, 32, CAST(N'2018-02-26 16:59:52.220' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (191, 2, N'Bút bi nước thỏ cụp tai B0380 10g', N' đen', N' 18 ', 0, NULL, 51, CAST(N'2018-02-26 16:59:52.603' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (192, 1, N'Bút bi hình cỏ 4 lá B0318 15g', N'', N' 23 ', 0, NULL, 76, CAST(N'2018-02-26 16:59:52.733' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (193, 2, N'Bút bi nước Monami CANVAS 2076 0.5mm B0187 10g', N'', N'', 0, NULL, 58, CAST(N'2018-02-26 16:59:54.487' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (194, 2, N'Bút bi nước hình thỏ mèo ếch vịt B0316 15g', N' xanh', N' 19.5 ', 0, NULL, 95, CAST(N'2018-02-26 16:59:54.513' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (195, 2, N'Bút bi nước Polar Bear B0369 10g', N'', N' 17 ', 0, NULL, 35, CAST(N'2018-02-26 16:59:54.600' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (196, 2, N'Bút bi nước 0.35 chấm bi đen trắng Jane Eyre B0123 10g', N'', N'', 0, NULL, 47, CAST(N'2018-02-26 16:59:55.840' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (197, 10, N'Sổ giấy vẽ Plant &amp; Nature cỡ trung S0907 270g', N'', N' 19 x 26 ', 68000, NULL, 95, CAST(N'2018-02-26 16:59:56.467' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (198, 10, N'Sổ giấy vẽ Good Time S0937 250g', N'', N' 29 x 21 ', 30000, NULL, 59, CAST(N'2018-02-26 16:59:56.463' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (199, 3, N'Bút chì gỗ B0266 10g', N'', N' 22 ', 0, NULL, 59, CAST(N'2018-02-26 16:59:56.467' AS DateTime))
GO
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (200, 2, N'Bút bi nước hình bánh Donut B0311 15g', N' xanh', N' 18.5 ', 0, NULL, 80, CAST(N'2018-02-26 16:59:56.840' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (201, 2, N'Bút bi nước Donuts B0360 15g', N'', N' 16 ', 0, NULL, 46, CAST(N'2018-02-26 16:59:56.933' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (202, 2, N'Bút bi nước 0.35 trái tim Love we are heart to heart B0122 10g', N'', N'', 0, NULL, 59, CAST(N'2018-02-26 16:59:56.997' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (203, 3, N'Bút chì gỗ B0265 10g', N'', N'', 0, NULL, 87, CAST(N'2018-02-26 16:59:57.380' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (204, 10, N'Sổ giấy vẽ Plant &amp; Nature cỡ đại S0908 550g', N'', N' 38 x 26 ', 140000, NULL, 61, CAST(N'2018-02-26 16:59:57.907' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (205, 4, N'Bút đánh dấu Monami Hi Star 6015 6 màu 108 chiếc B0184 4kg', N'', N'', 0, NULL, 50, CAST(N'2018-02-26 16:59:58.107' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (206, 2, N'Bút bi nước hải quân B0126 10g', N'', N'', 0, NULL, 56, CAST(N'2018-02-26 16:59:58.207' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (207, 2, N'Bút bi nước hình thỏ B0309 15g', N' xanh', N' 18 ', 0, NULL, 95, CAST(N'2018-02-26 16:59:58.410' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (208, 3, N'Bút chì gỗ B0264 10g', N'', N' 22.5 ', 0, NULL, 93, CAST(N'2018-02-26 16:59:58.510' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (209, 2, N'Bút bi nước Cute Monkey B0346 10g', N' đen', N' 17.5 ', 0, NULL, 71, CAST(N'2018-02-26 16:59:58.557' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (210, 10, N'Sổ giấy vẽ gáy lò xo Moon &amp; Planet cỡ đại S0906 550g', N'', N' 38 x 26 ', 140000, NULL, 62, CAST(N'2018-02-26 16:59:59.270' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (211, 3, N'Bút chì gỗ hình cá B0263 10g', N'', N' 22.5 ', 0, NULL, 59, CAST(N'2018-02-26 16:59:59.740' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (212, 1, N'Bút bi hình người tuyết B0307 15g', N' xanh', N'17 ', 0, NULL, 58, CAST(N'2018-02-26 17:00:00.353' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (213, 10, N'Sổ giấy vẽ khổ vuông Moon &amp; Planet S0911 320g', N'', N' 21 x 21 ', 50000, NULL, 80, CAST(N'2018-02-26 17:00:00.513' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (214, 2, N'Bút bi nước Minion B0342 10g', N' Đen', N' 14 ', 0, NULL, 41, CAST(N'2018-02-26 17:00:00.613' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (215, 3, N'Bút chì gỗ B0262 10g', N'', N' 22.5 ', 0, NULL, 35, CAST(N'2018-02-26 17:00:00.950' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (216, 2, N'Bút bi nước màu Monami Jell Line 208 8 màu 144 chiếc B0182 2kg', N'', N'', 0, NULL, 41, CAST(N'2018-02-26 17:00:00.950' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (217, 10, N'Sổ giấy vẽ khổ vuông Break Fust S0910 320g', N'', N' 21 x 21 ', 50000, NULL, 83, CAST(N'2018-02-26 17:00:02.150' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (218, 5, N'Bút xóa băng AWESOME B0341 20g', N'', N' 10 x 2.5 ', 0, NULL, 45, CAST(N'2018-02-26 17:00:02.370' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (219, 3, N'Bút chì gỗ dễ thương B0261 10g', N'', N' 22.5 ', 0, NULL, 93, CAST(N'2018-02-26 17:00:02.517' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (220, 4, N'Bút đánh dấu Monami Memory S 6 màu 108 chiếc B0181 2,5kg', N'', N'', 0, NULL, 33, CAST(N'2018-02-26 17:00:02.757' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (221, 10, N'Sổ giấy vẽ khổ vuông Sunday Time S0900 320g', N'', N' 21 x 21 ', 50000, NULL, 98, CAST(N'2018-02-26 17:00:02.887' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (222, 1, N'Bút bi Minion B0337 10g', N'', N' 14 ', 0, NULL, 79, CAST(N'2018-02-26 17:00:03.317' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (223, 10, N'Sổ giấy vẽ lò xo Moon &amp; Planet cỡ nhỏ S0893 160g', N'', N' 19 x 13 ', 24000, NULL, 87, CAST(N'2018-02-26 17:00:03.510' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (224, 2, N'Bút bi nước Totoro 3D B0295 15g', N' xanh', N' 18 ', 0, NULL, 70, CAST(N'2018-02-26 17:00:04.040' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (225, 4, N'Bút đánh dấu Monami Color Highlighter 108 chiếc B0180 5kg', N'', N'', 0, NULL, 55, CAST(N'2018-02-26 17:00:04.707' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (226, 5, N'Bút xóa băng hình gấu B0336 28g', N'', N' 10 x 3 ', 0, NULL, 43, CAST(N'2018-02-26 17:00:04.833' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (227, 1, N'Bút bi hình quạt B0298 20g', N' xanh', N' 21 ', 0, NULL, 57, CAST(N'2018-02-26 17:00:06.150' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (228, 1, N'Bút bi aha Hello B0250 10g', N'', N' 14 ', 0, NULL, 51, CAST(N'2018-02-26 17:00:06.287' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (229, 5, N'Bút xóa Fruit Profusion B0331 15g', N'', N'', 0, NULL, 88, CAST(N'2018-02-26 17:00:06.887' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (230, 2, N'Bút bi nước ống hút hình con vật B0293 10g', N' Xanh', N' 19 ', 0, NULL, 53, CAST(N'2018-02-26 17:00:08.023' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (231, 4, N'Bút đánh dấu sáp màu B0209 20g', N'', N' 13,4 ', 0, NULL, 57, CAST(N'2018-02-26 17:00:08.157' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (232, 2, N'Bút bi nước Halloween B0291 10g', N'', N' 15.5 ', 0, NULL, 40, CAST(N'2018-02-26 17:00:10.283' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (233, 1, N'Bút bi uốn dẻo hình ô B0173 35g', N'', N'', 0, NULL, 49, CAST(N'2018-02-26 17:00:10.437' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (234, 10, N'Sổ giấy vẽ lò xo Sunday Time cỡ nhỏ S0895 160g', N'', N' 19 x 13 ', 24000, NULL, 60, CAST(N'2018-02-26 17:00:10.480' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (235, 7, N'Sổ mini Im Sweet S0854 21g', N'', N' 12 x 8.5 ', 4000, NULL, 50, CAST(N'2018-02-26 17:00:11.123' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (236, 7, N'Sổ mini Monster Hune S0889 20g', N'', N'', 4000, NULL, 56, CAST(N'2018-02-26 17:00:11.447' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (237, 7, N'Sổ mini Rilackkuma S0813 20g', N'', N'', 4000, NULL, 92, CAST(N'2018-02-26 17:00:12.017' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (238, 1, N'Bút bi uốn dẻo râu ria B0170 35g', N'', N'', 0, NULL, 46, CAST(N'2018-02-26 17:00:12.317' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (239, 4, N'Bút đánh dấu Marker B0290 25g', N'', N'', 0, NULL, 35, CAST(N'2018-02-26 17:00:12.430' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (240, 10, N'Sổ giấy vẽ cỡ đại S0780 340g', N'', N' 14 x 21 ', 65000, NULL, 91, CAST(N'2018-02-26 17:00:13.283' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (241, 7, N'Sổ mini Monster Hune Hoopa S0885 20g', N'', N'', 4000, NULL, 49, CAST(N'2018-02-26 17:00:14.467' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (242, 4, N'Bút đánh dấu Happy B0285 20g', N'', N' 10.5 x 2 ', 0, NULL, 99, CAST(N'2018-02-26 17:00:17.537' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (243, 1, N'Bút bi vương miện chấm bi B0168 15g', N'', N'', 0, NULL, 48, CAST(N'2018-02-26 17:00:17.827' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (244, 7, N'Sổ mini London England S0818 20g', N'', N'', 4000, NULL, 40, CAST(N'2018-02-26 17:00:21.980' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (245, 1, N'Bút bi vương miện Crown Love Magic Mirror B0161 15g', N'', N'', 0, NULL, 60, CAST(N'2018-02-26 17:00:25.237' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (246, 7, N'Sổ mini Best With For You S0817 20g', N'', N'', 4000, NULL, 85, CAST(N'2018-02-26 17:00:25.287' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (247, 7, N'Sổ mini Grace Bell S0633 20g', N'', N' 12 x 8.4 ', 4000, NULL, 82, CAST(N'2018-02-26 17:00:26.467' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (248, 7, N'Sổ mini bìa cứng Animal Shadow S0679 75g', N'', N'', 23000, NULL, 45, CAST(N'2018-02-26 17:00:26.553' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (249, 4, N'Bút đánh dấu Lucky Color B0157 15g', N'', N'', 0, NULL, 66, CAST(N'2018-02-26 17:00:27.610' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (250, 7, N'Sổ mini Postal Card S0631 20g', N'', N' 12 x 8.4 ', 4000, NULL, 91, CAST(N'2018-02-26 17:00:29.007' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (251, 1, N'Bút bi uốn dẻo hình động vật ngộ nghĩnh B0152 40g', N'', N'', 0, NULL, 46, CAST(N'2018-02-26 17:00:29.890' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (252, 10, N'Sổ giấy vẽ Artist cỡ nhỏ S0845 60g', N'', N' 8 x 12.8 ', 12000, NULL, 69, CAST(N'2018-02-26 17:00:29.970' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (253, 6, N'Sổ học từ World Campus S0755 100g', N'', N' 14 x 8.3 ', 22000, NULL, 43, CAST(N'2018-02-26 17:00:30.317' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (254, 7, N'Sổ mini Monster Hune S0747 21g', N'', N'', 4000, NULL, 40, CAST(N'2018-02-26 17:00:34.343' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (255, 7, N'Sổ mini Moco Moco S0630 20g', N'', N' 12 x 8.4 ', 4000, NULL, 83, CAST(N'2018-02-26 17:00:34.593' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (256, 10, N'Sổ giấy vẽ 12 Feather Grapphics S0778 700g', N'', N' 19 x 26 ', 115000, NULL, 69, CAST(N'2018-02-26 17:00:36.050' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (257, 1, N'Bút bi gà chíp B0141 10g', N'', N' 22 x 0.8 ', 0, NULL, 31, CAST(N'2018-02-26 17:00:36.363' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (258, 7, N'Sổ mini sổ ghi nhanh S0517 20g', N'', N' 12 x 8.4 ', 4000, NULL, 94, CAST(N'2018-02-26 17:00:37.187' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (259, 7, N'Sổ mini Good Morning S0629 20g', N'', N' 12 x 8.4 ', 4000, NULL, 94, CAST(N'2018-02-26 17:00:37.347' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (260, 1, N'Bút bi thỏ bông B0140 10g', N'', N'', 0, NULL, 82, CAST(N'2018-02-26 17:00:37.503' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (261, 7, N'Sổ lò xo mini thời tiết S0628 25g', N'', N' 8.5 x 10 ', 9000, NULL, 81, CAST(N'2018-02-26 17:00:40.853' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (262, 10, N'Sổ giấy vẽ A3 South Wind S0673 870g', N'', N' 29 x 42 ', 130000, NULL, 35, CAST(N'2018-02-26 17:00:41.220' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (263, 7, N'Sổ mini Willow Story Notebook S0792 20g', N'', N'', 4000, NULL, 61, CAST(N'2018-02-26 17:00:41.790' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (264, 2, N'Bút bi nước Freshness And Peace 0,38mm 10g', N'', N'', 0, NULL, 83, CAST(N'2018-02-26 17:00:41.843' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (265, 7, N'Sổ mini I love Flower S0621 20g', N'', N'', 4000, NULL, 38, CAST(N'2018-02-26 17:00:44.350' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (266, 8, N'Tập vở Relaxad Brigton B5 S0731 230g', N'', N'', 19000, NULL, 55, CAST(N'2018-02-26 17:00:44.367' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (267, 10, N'Sổ giấy vẽ A3 Shetchbook S0672 870g', N'', N' 29 x 42 ', 130000, NULL, 30, CAST(N'2018-02-26 17:00:45.560' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (268, 3, N'Bút chì gỗ cú mèo gấu heo khỉ ốc sên B0135', N'', N'', 0, NULL, 84, CAST(N'2018-02-26 17:00:47.480' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (269, 10, N'Sổ giấy vẽ mini A6 S0671 110g', N'', N' 10 x 15 ', 24000, NULL, 97, CAST(N'2018-02-26 17:00:49.050' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (270, 3, N'Bút chì gỗ con ong B0136', N'', N'', 0, NULL, 89, CAST(N'2018-02-26 17:00:50.477' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (271, 7, N'Sổ lò xo My Style S0534 68g', N'', N'', 11000, NULL, 66, CAST(N'2018-02-26 17:00:50.910' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (272, 7, N'Sổ lò xo animal S0533 45g', N'', N'', 12000, NULL, 86, CAST(N'2018-02-26 17:00:53.903' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (273, 2, N'Bút bi nước 0.38 ngôi sao Let&#39;s party girl B0120', N'', N'', 0, NULL, 62, CAST(N'2018-02-26 17:00:54.083' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (274, 4, N'Tập giấy nhớ đánh dấu trang Finget It K1509 25g', N'', N' 7 x 9 ', 12000, NULL, 81, CAST(N'2018-02-26 17:00:55.130' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (275, 9, N'Sổ xé giấy nhớ 3 tập Van Gogh&#39;s Flowers S0616 240g', N'', N' 9.5 x 16 ', 55000, NULL, 98, CAST(N'2018-02-26 17:00:56.703' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (276, 10, N'Sổ giấy vẽ Blue Dream S0610 900g', N'', N' 29 x 42 ', 115000, NULL, 39, CAST(N'2018-02-26 17:00:59.307' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (277, 10, N'Sổ giấy vẽ Rainbow S0463 700g', N'', N'', 92000, NULL, 73, CAST(N'2018-02-26 17:00:59.577' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (278, 7, N'Sổ mini Holle S0637 20g', N'', N' 12 x 8.4 ', 4000, NULL, 40, CAST(N'2018-02-26 17:01:01.260' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (279, 7, N'Sổ mini Love You&amp;Me S0851 21g', N'', N' 12 x 8.5 ', 4000, NULL, 56, CAST(N'2018-02-26 17:01:03.300' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (280, 9, N'Giấy nhớ Koreal S0525 5g', N'', N'', 5000, NULL, 72, CAST(N'2018-02-26 17:01:04.403' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (281, 7, N'Sổ mini hình mèo S0720 20g', N'', N'', 4000, NULL, 85, CAST(N'2018-02-26 17:01:05.850' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (282, 7, N'Sổ mini&nbsp; Happy Life With Notebook S0636 20g', N'', N' 12 x 8.4 ', 4000, NULL, 74, CAST(N'2018-02-26 17:01:06.337' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (283, 9, N'Giấy nhớ hình lá S0448 30g', N'', N'', 15000, NULL, 33, CAST(N'2018-02-26 17:01:07.647' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (284, 6, N'Sổ học từ Vocabulary S0604 125g', N'', N'', 35000, NULL, 72, CAST(N'2018-02-26 17:01:08.207' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (285, 7, N'Sổ mini Magic Book A6 S0512 30g', N'', N'', 0, NULL, 58, CAST(N'2018-02-26 17:01:08.407' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (286, 9, N'Giấy nhớ Memo It Romantic Shabby S0524 10g', N'', N'', 5000, NULL, 94, CAST(N'2018-02-26 17:01:10.257' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (287, 7, N'Sổ mini dài Paris Eiffel sky S0444 115g', N'', N'', 23000, NULL, 34, CAST(N'2018-02-26 17:01:12.597' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (288, 7, N'Sổ mini Lucky S0635 20g', N'', N' 12 x 8.4 ', 4000, NULL, 44, CAST(N'2018-02-26 17:01:12.757' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (289, 7, N'Sổ lò xo Solitary S0761 220g', N'', N'', 35000, NULL, 60, CAST(N'2018-02-26 17:01:13.370' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (290, 6, N'Sổ học từ Vocabulary S0603 125g', N'', N'', 35000, NULL, 79, CAST(N'2018-02-26 17:01:13.370' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (291, 7, N'Sổ mini Cooky Shop S0634 20g', N'', N' 12 x 8.4 ', 4000, NULL, 77, CAST(N'2018-02-26 17:01:18.167' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (292, 7, N'Sổ lò xo mini Rosemary S0436 100g', N'', N'', 15000, NULL, 91, CAST(N'2018-02-26 17:01:18.317' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (293, 7, N'Sổ mini Enjoy The Fun Of Life S0516 21g', N'', N'', 4000, NULL, 37, CAST(N'2018-02-26 17:01:20.740' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (294, 7, N'Sổ mini Little Horse S0515 21g', N'', N'', 4000, NULL, 52, CAST(N'2018-02-26 17:01:25.293' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (295, 9, N'Giấy nhớ hoa quả S0422 40g', N'', N'', 12000, NULL, 45, CAST(N'2018-02-26 17:01:25.380' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (296, 7, N'Sổ mini S0538 30g', N'', N' 12 x 8.5 ', 5000, NULL, 36, CAST(N'2018-02-26 17:01:28.913' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (297, 7, N'Sổ mini Episode Diary S0499 30g', N'', N'', 4000, NULL, 37, CAST(N'2018-02-26 17:01:31.860' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (298, 9, N'Giấy nhớ 4 tập Rilakkuma S0466 30g', N'', N'', 0, NULL, 91, CAST(N'2018-02-26 17:01:32.593' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (299, 7, N'Sổ mini Love You &amp; Me S0498 20g', N'', N'', 5000, NULL, 76, CAST(N'2018-02-26 17:01:36.990' AS DateTime))
GO
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (300, 10, N'Sổ giấy vẽ A4 Shetchbook S0397 440g', N'', N'', 0, NULL, 75, CAST(N'2018-02-26 17:01:37.467' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (301, 9, N'Giấy nhớ Memo It S0504 10g', N'', N'', 6000, NULL, 70, CAST(N'2018-02-26 17:01:50.660' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (302, 9, N'Giấy nhớ mèo cười tít S0234 30g', N'', N'', 12000, NULL, 63, CAST(N'2018-02-26 17:01:53.397' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (303, 8, N'Tập vở Happy Love cat S0374 150g', N'', N'', 17000, NULL, 78, CAST(N'2018-02-26 17:01:53.867' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (304, 4, N'Bộ Bookmark đánh dấu trang K1769 10g', N'', N' 4 x 2 ', 8000, NULL, 33, CAST(N'2018-02-26 17:01:53.987' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (305, 7, N'Sổ mini A6 Van Gogh&#39;s Flowers S0474 110g', N'', N'', 23000, NULL, 88, CAST(N'2018-02-26 17:01:54.607' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (306, 9, N'Giấy nhớ I&#39;m + It S0179', N'', N'', 10000, NULL, 38, CAST(N'2018-02-26 17:01:55.700' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (307, 9, N'Sổ xé hình phong bì Black And White Ver.3 S0409 150g', N'', N'', 0, NULL, 59, CAST(N'2018-02-26 17:01:59.273' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (308, 9, N'Sổ xé 3 tập phong cảnh châu âu vẽ chì Lenwa S0369', N'', N' 9 x 16 ', 55000, NULL, 71, CAST(N'2018-02-26 17:02:02.280' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (309, 7, N'Sổ lò xo giấy màu hươu cao cổ S0413 230g', N'', N'', 0, NULL, 70, CAST(N'2018-02-26 17:02:02.380' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (310, 4, N'Bookmark đánh dấu trang Totoro K1757 10g', N'', N' 5.5 x 13 ', 8000, NULL, 93, CAST(N'2018-02-26 17:02:06.720' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (311, 9, N'Sổ xé 2 tập hươu cao cổ S0407 190g', N'', N'', 0, NULL, 56, CAST(N'2018-02-26 17:02:10.157' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (312, 10, N'Sổ giấy vẽ Sketch Book S0399 330g', N'', N'', 0, NULL, 90, CAST(N'2018-02-26 17:02:20.810' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (313, 9, N'Giấy nhớ bươm bướm K0227', N'', N'', 0, NULL, 83, CAST(N'2018-02-26 17:02:22.113' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (314, 9, N'Giấy nhớ dòng bộ 9 tệp K0176', N'', N'', 0, NULL, 64, CAST(N'2018-02-26 17:02:28.187' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (315, 11, N'Hộp đựng bút gỗ languo K0957 60g', N'', N'', 0, NULL, 99, CAST(N'2018-02-26 17:02:49.897' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (316, 4, N'Bookmarker đánh dấu trang K1492 15g', N'', N' 2.5 x 6 ', 8000, NULL, 81, CAST(N'2018-02-26 17:03:00.953' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (317, 9, N'Giấy nhớ giấy nhắn giấy dán Little Talk S0357 10g', N'', N'', 0, NULL, 79, CAST(N'2018-02-26 17:03:01.377' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (318, 7, N'Sổ mini gấu thỏ heo A6 S0290', N'', N'', 0, NULL, 66, CAST(N'2018-02-26 17:03:05.520' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (319, 6, N'Sổ học từ móc treo S0849 50g', N'', N' 7 ', 0, NULL, 67, CAST(N'2018-02-26 17:03:06.043' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (320, 11, N'Hộp đựng bút túi bút Green Life K1168 50g', N'', N'', 50000, NULL, 99, CAST(N'2018-02-26 17:03:06.483' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (321, 11, N'Hộp đựng bút K1427 50g', N'', N'', 0, NULL, 60, CAST(N'2018-02-26 17:03:07.097' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (322, 9, N'Giấy nhớ mặt ngộ Hello K0264', N'', N'', 0, NULL, 42, CAST(N'2018-02-26 17:03:08.437' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (323, 10, N'Sổ giấy vẽ Artist cỡ trung&nbsp; S0844 160g', N'', N' 14 x 21 ', 0, NULL, 81, CAST(N'2018-02-26 17:03:08.553' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (324, 4, N'Book mark, đánh dấu trang, kẹp sách Hello Lucky K1264 17g', N'', N' 3 x 1.8 ', 12000, NULL, 73, CAST(N'2018-02-26 17:03:08.987' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (325, 10, N'Sổ giấy vẽ lò xo In Your Side cỡ nhỏ S0894 160g', N'', N' 19 x 13 ', 0, NULL, 98, CAST(N'2018-02-26 17:03:12.577' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (326, 11, N'Hộp đựng bút Vintage K1072 90g', N'', N'', 0, NULL, 69, CAST(N'2018-02-26 17:03:17.247' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (327, 4, N'Bookmark đánh dấu trang K1383 20g', N'', N' 3.5 x 6 ', 0, NULL, 92, CAST(N'2018-02-26 17:03:20.720' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (328, 13, N'Ví nhỏ ví đựng vé xe tiền lẻ dụng cụ thu dây K1654 55g', N'', N' 7 x 10 ', 32000, NULL, 36, CAST(N'2018-02-26 17:03:21.517' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (329, 4, N'Kẹp sách Book mark đánh dấu trang Rilakkuma K0929 35g', N'', N'', 0, NULL, 51, CAST(N'2018-02-26 17:03:22.120' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (330, 4, N'Dụng cụ đánh dấu trang sách Hello K1021 40g', N'', N'', 0, NULL, 65, CAST(N'2018-02-26 17:03:22.243' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (331, 11, N'Hộp đựng bút kẹp ảnh bò sữa mèo sư tử&nbsp; 65g', N'', N'', 17000, NULL, 85, CAST(N'2018-02-26 17:03:24.787' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (332, 11, N'Hộp đựng bút kẹp ảnh hình hoa K1075 65g', N'', N'', 17000, NULL, 78, CAST(N'2018-02-26 17:03:26.007' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (333, 11, N'Hộp đựng bút kẹp ảnh voi, ếch, gấu, sư tử, hươu cao cổ K1074 65g', N'', N'', 17000, NULL, 90, CAST(N'2018-02-26 17:03:29.020' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (334, 4, N'Bookmark đánh dấu trang FLOADTING TOWN S0387 100g', N'', N'', 0, NULL, 56, CAST(N'2018-02-26 17:03:33.003' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (335, 7, N'Sổ mini Hello Bonjour S0721 21g', N'', N'', 0, NULL, 35, CAST(N'2018-02-26 17:03:37.153' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (336, 7, N'Sổ mini Smile S0719 20g', N'', N'', 0, NULL, 30, CAST(N'2018-02-26 17:03:39.000' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (337, 7, N'Sổ lò xo Beauty Of The Line S0760 230g', N'', N'', 0, NULL, 38, CAST(N'2018-02-26 17:03:39.890' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (338, 7, N'Sổ mini Crayon S0718 20g', N'', N'', 0, NULL, 30, CAST(N'2018-02-26 17:03:41.190' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (339, 9, N'Giấy nhớ giấy nhắn Rilakkuma S0740 15g', N'', N' 7.5 x 5 ', 0, NULL, 52, CAST(N'2018-02-26 17:03:41.397' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (340, 11, N'Hộp đựng bút Mood For Love K1071 90g', N'', N'', 0, NULL, 85, CAST(N'2018-02-26 17:03:42.123' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (341, 9, N'Giấy nhớ 4 tập Rilakkuma S0739 50g', N'', N' 25 x 8.3 ', 0, NULL, 61, CAST(N'2018-02-26 17:03:43.197' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (342, 6, N'Sổ học từ Rainbow S0670 110g', N'', N'', 0, NULL, 71, CAST(N'2018-02-26 17:03:45.047' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (343, 9, N'Giấy nhớ giấy nhắn S0737 10g', N'', N' 8 x 8.5 ', 0, NULL, 36, CAST(N'2018-02-26 17:03:47.567' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (344, 10, N'Sổ giấy vẽ Drawing Note S0666 420g', N'', N'', 0, NULL, 48, CAST(N'2018-02-26 17:03:58.943' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (345, 6, N'Sổ học từ Foreign Language Vocabulary Book S0665 70g', N'', N' 7.4 x 13 ', 0, NULL, 35, CAST(N'2018-02-26 17:04:03.823' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (346, 6, N'Sổ học từ S0764 65g', N'', N' 13 x 8 ', 0, NULL, 48, CAST(N'2018-02-26 17:04:07.323' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (347, 7, N'Sổ mini S0723 20g', N'', N'', 0, NULL, 98, CAST(N'2018-02-26 17:04:07.797' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (348, 7, N'Sổ mini Pau Frank S0722 20g', N'', N'', 0, NULL, 89, CAST(N'2018-02-26 17:04:10.437' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (349, 7, N'Sổ mini Milk Tea bìa nhựa trong S0497 80g', N'', N' 12 x 8.5 ', 0, NULL, 64, CAST(N'2018-02-26 17:04:14.033' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (350, 9, N'Giấy nhớ Fusen Collection S0657 35g', N'', N'', 0, NULL, 41, CAST(N'2018-02-26 17:04:14.297' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (351, 9, N'Giấy nhớ giấy nhắn Flower S0656 10g', N'', N' 7 x 9 ', 0, NULL, 64, CAST(N'2018-02-26 17:04:16.643' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (352, 7, N'Sổ mini hình tim S0655 35g', N'', N' 8,5 8,5 ', 0, NULL, 50, CAST(N'2018-02-26 17:04:18.683' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (353, 6, N'Sổ học từ Vocabulary S0606 125g', N'', N'', 0, NULL, 80, CAST(N'2018-02-26 17:04:22.830' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (354, 6, N'Sổ học từ Vocabulary S0605 125g', N'', N'', 0, NULL, 47, CAST(N'2018-02-26 17:04:24.380' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (355, 6, N'Sổ học từ Vocabulary S0602 125g', N'', N'', 0, NULL, 52, CAST(N'2018-02-26 17:04:27.083' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (356, 6, N'Sổ học từ chấm bi Vocabulary S0601 125g', N'', N'', 0, NULL, 36, CAST(N'2018-02-26 17:04:30.743' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (357, 7, N'Sổ mini You are my best friend S0632 20g', N'', N' 12 x 8.4 ', 0, NULL, 36, CAST(N'2018-02-26 17:04:31.080' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (358, 9, N'Giấy nhớ Stick Marker S0526 20g', N'', N'', 0, NULL, 51, CAST(N'2018-02-26 17:04:32.097' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (359, 9, N'Giấy nhớ hình cánh bướm S0492 30g', N'', N'', 0, NULL, 31, CAST(N'2018-02-26 17:04:32.473' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (360, 7, N'Sổ mini Slobber mèo S0545 135g', N'', N'', 0, NULL, 52, CAST(N'2018-02-26 17:04:32.497' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (361, 9, N'Sổ xé La Tour Eiffel S0483 150g', N'', N'', 0, NULL, 48, CAST(N'2018-02-26 17:04:34.450' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (362, 7, N'Sổ mini Pura Girl S0514 21g', N'', N'', 0, NULL, 94, CAST(N'2018-02-26 17:04:34.593' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (363, 9, N'Sổ xé Every Day A7 S0482 150g', N'', N'', 0, NULL, 36, CAST(N'2018-02-26 17:04:35.177' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (364, 7, N'Sổ mini hình mặt cười màu sắc S0510 40g', N'', N'', 0, NULL, 51, CAST(N'2018-02-26 17:04:35.670' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (365, 9, N'Sổ xé Van Gogh&#39;s Flowers S0481 180g', N'', N'', 0, NULL, 88, CAST(N'2018-02-26 17:04:35.910' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (366, 8, N'Tập vở B5 Love London S0467 90g', N'', N'', 0, NULL, 61, CAST(N'2018-02-26 17:04:36.063' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (367, 6, N'Sổ học từ Screen Vocabulary S0470 70g', N'', N'', 0, NULL, 58, CAST(N'2018-02-26 17:04:37.217' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (368, 7, N'Sổ mini Rilakkuma S0519 110g', N'', N'', 0, NULL, 81, CAST(N'2018-02-26 17:04:37.477' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (369, 9, N'Giấy nhớ Cooky Talk Talk Post It S0437 10g', N'', N'', 0, NULL, 95, CAST(N'2018-02-26 17:04:37.637' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (370, 10, N'Sổ giấy vẽ Scenery S0618 700g', N'', N'', 0, NULL, 80, CAST(N'2018-02-26 17:04:37.653' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (371, 9, N'Sổ xé thời tiết Every Day Is A New Day S0435 150g', N'', N'', 0, NULL, 67, CAST(N'2018-02-26 17:04:39.610' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (372, 9, N'Sổ xé giấy nhắn Pansydaisy S0518 50g', N'', N'', 0, NULL, 54, CAST(N'2018-02-26 17:04:40.040' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (373, 7, N'Sổ mini Gấu Love S0513 21g', N'', N'', 0, NULL, 85, CAST(N'2018-02-26 17:04:41.387' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (374, 9, N'Giấy nhớ thời tiết 4 tập S0433 25g', N'', N'', 0, NULL, 96, CAST(N'2018-02-26 17:04:41.477' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (375, 9, N'Giấy nhớ 4 tập Hello S0469 30g', N'', N'', 0, NULL, 74, CAST(N'2018-02-26 17:04:41.633' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (376, 9, N'Giấy nhớ 12 tập The Cat S0432 30g', N'', N'', 0, NULL, 55, CAST(N'2018-02-26 17:04:42.770' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (377, 7, N'Sổ mini Happy Brownie S0511 25g', N'', N'', 0, NULL, 45, CAST(N'2018-02-26 17:04:43.300' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (378, 10, N'Sổ giấy vẽ Dreaming With Plants S0464 700g', N'', N'', 0, NULL, 75, CAST(N'2018-02-26 17:04:43.560' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (379, 9, N'Giấy nhớ 6 tập The Cat S0430 15g', N'', N' 6 x 16 ', 0, NULL, 59, CAST(N'2018-02-26 17:04:43.570' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (380, 10, N'Sổ giấy vẽ Eiffel Tower B5 S0475 590g', N'', N'', 0, NULL, 31, CAST(N'2018-02-26 17:04:45.367' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (381, 9, N'Sổ xé giấy màu Sea World S0535 60g', N'', N'', 0, NULL, 95, CAST(N'2018-02-26 17:04:45.610' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (382, 7, N'Sổ lò xo H5 Paris Eiffel Sky S0612 220g', N'', N'', 0, NULL, 99, CAST(N'2018-02-26 17:04:45.717' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (383, 7, N'Sổ lò xo Paris Eiffel Sky A5 S0428 200g', N'', N'', 0, NULL, 54, CAST(N'2018-02-26 17:04:46.170' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (384, 7, N'Sổ mini lò xo Paris Eiffel Sky S0427 100g', N'', N'', 0, NULL, 97, CAST(N'2018-02-26 17:04:47.143' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (385, 9, N'Sổ xé My Melody S0607 46g', N'', N' 11 x 6.5 ', 0, NULL, 85, CAST(N'2018-02-26 17:04:47.163' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (386, 6, N'Sổ học từ gáy lò xo Everyday Word Book S0451 75g', N'', N'', 0, NULL, 44, CAST(N'2018-02-26 17:04:48.287' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (387, 7, N'Sổ mini mèo gấu Ver.2 S0500 15g', N'', N'', 0, NULL, 50, CAST(N'2018-02-26 17:04:48.743' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (388, 9, N'Giấy nhớ hình động vật Zoo S0449 10g', N'', N'', 0, NULL, 82, CAST(N'2018-02-26 17:04:49.313' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (389, 9, N'Giấy nhớ 3 tập Roread S0532 100g', N'', N'', 0, NULL, 88, CAST(N'2018-02-26 17:04:49.420' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (390, 7, N'Sổ mini Little Duck A6 S0530 33g', N'', N'', 0, NULL, 77, CAST(N'2018-02-26 17:04:50.630' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (391, 6, N'Sổ học từ I Like To Recite Words Toread S0446 120g', N'', N'', 0, NULL, 48, CAST(N'2018-02-26 17:04:50.647' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (392, 9, N'Sổ xé hình phong bì Black And White Ver.2 S0408 150g', N'', N'', 0, NULL, 56, CAST(N'2018-02-26 17:04:51.210' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (393, 9, N'Giấy nhớ giấy nhắn Sticky Notes S0494 20g', N'', N'', 0, NULL, 53, CAST(N'2018-02-26 17:04:51.227' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (394, 10, N'Sổ giấy vẽ phong cảnh châu âu vẽ chì Lenwa S0358 350g', N'', N'', 0, NULL, 32, CAST(N'2018-02-26 17:04:53.997' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (395, 10, N'Sổ giấy vẽ A4 South Wind S0398 460g', N'', N'', 0, NULL, 64, CAST(N'2018-02-26 17:04:54.990' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (396, 9, N'Giấy nhớ 12 tập South Wind S0386 30g', N'', N'', 0, NULL, 66, CAST(N'2018-02-26 17:04:56.043' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (397, 9, N'Giấy nhớ 12 tập FloadTing Town S0384 30g', N'', N'', 0, NULL, 71, CAST(N'2018-02-26 17:04:58.407' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (398, 9, N'Giấy nhớ 9 tập FloadTing Town S0383 20g', N'', N'', 0, NULL, 86, CAST(N'2018-02-26 17:05:00.407' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (399, 9, N'Giấy nhớ 6 tập FloadTing Town S0382 15g', N'', N'', 0, NULL, 74, CAST(N'2018-02-26 17:05:01.807' AS DateTime))
GO
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (400, 9, N'Sổ xé for love Lenwa S0333 155g', N'', N'', 0, NULL, 58, CAST(N'2018-02-26 17:05:04.200' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (401, 7, N'Sổ lò xo phong cảnh châu âu vẽ chì H5 Lenwa S0368 220g', N'', N'', 0, NULL, 33, CAST(N'2018-02-26 17:05:05.553' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (402, 6, N'Sổ học từ 320 word VOCA S0229 40g', N'', N'', 0, NULL, 33, CAST(N'2018-02-26 17:05:05.870' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (403, 9, N'Sổ xé hình phong bì S0096 150g', N'', N'', 0, NULL, 30, CAST(N'2018-02-26 17:05:10.987' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (404, 11, N'Hộp đựng bút kẹp ảnh K1733 65g', N'', N'', 17000, NULL, 65, CAST(N'2018-02-26 17:06:18.513' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (405, 12, N'Móc khóa hình cừu K1712 27g', N'', N' 7.5 ', 30000, NULL, 51, CAST(N'2018-02-26 17:06:25.470' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (406, 12, N'Móc khóa K1703 5g', N'', N' 5 x 3 ', 5000, NULL, 84, CAST(N'2018-02-26 17:06:31.667' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (407, 14, N'Bấm móng tay K1651 35g', N'', N' 6 x 4 ', 12000, NULL, 69, CAST(N'2018-02-26 17:06:37.220' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (408, 12, N'Móc chìa khóa khóa K1532 20g', N'', N' 4 x 4.5 ', 7000, NULL, 33, CAST(N'2018-02-26 17:06:48.880' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (409, 11, N'Hộp đựng đồ trang trí để bàn Mood For Love K1499 100g', N'', N' 9 x 9 ', 42000, NULL, 83, CAST(N'2018-02-26 17:07:15.857' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (410, 14, N'Bấm móng tay hello kitty K1461 30g', N'', N' 6 x 2 ', 18000, NULL, 85, CAST(N'2018-02-26 17:07:25.723' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (411, 14, N'Bấm móng tay Hello Kitty K1465 30g', N'', N' 6 x 2 ', 18000, NULL, 44, CAST(N'2018-02-26 17:07:28.957' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (412, 12, N'Móc khóa hình bò cạp K1410 25g', N'', N' 7.5 ', 45000, NULL, 95, CAST(N'2018-02-26 17:07:50.407' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (413, 12, N'Móc khóa hình hoa K1413 25g', N'', N' 7.5 ', 25000, NULL, 85, CAST(N'2018-02-26 17:07:55.103' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (414, 12, N'Móc khóa hình cỏ 4 lá K1412 20g', N'', N'', 20000, NULL, 47, CAST(N'2018-02-26 17:07:56.080' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (415, 12, N'Móc khóa K1401 10g', N'', N' 11 x 5 ', 7000, NULL, 42, CAST(N'2018-02-26 17:07:58.250' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (416, 12, N'Móc khóa K1392 10g', N'', N' dài 11 ', 10000, NULL, 88, CAST(N'2018-02-26 17:08:00.890' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (417, 11, N'Hộp đựng đồ mini Floating K1389 30g', N'', N' 4.5 x 7 ', 22000, NULL, 35, CAST(N'2018-02-26 17:08:03.310' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (418, 11, N'Hộp đựng đồ trang trí để bàn K1370 cỡ đại 1700g', N'', N'', 325000, NULL, 31, CAST(N'2018-02-26 17:08:06.190' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (419, 11, N'Hộp đựng bút hộp đựng đồ để bàn K1384 50g', N'', N' 8 x 12 ', 16000, NULL, 31, CAST(N'2018-02-26 17:08:07.837' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (420, 12, N'Móc khóa The Emperor&#39;s New Clothes K1112 20g', N'', N'', 23000, NULL, 42, CAST(N'2018-02-26 17:08:14.327' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (421, 12, N'Móc khóa Hello K1334 10g', N'', N' 4 x 4.5 ', 7000, NULL, 77, CAST(N'2018-02-26 17:08:14.367' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (422, 11, N'Hộp đựng bút kẹp ảnh dễ thương voi, gấu, bò, ếch, sư tử K0958 65g', N'', N'', 17000, NULL, 69, CAST(N'2018-02-26 17:08:14.643' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (423, 15, N'Miếng lót chuột Boautiful Things K0942 65g', N'', N'', 23000, NULL, 41, CAST(N'2018-02-26 17:08:16.617' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (424, 15, N'Miếng lót chuột La Tour Eiffel K0863 25g', N'', N' 20 x 22 ', 25000, NULL, 71, CAST(N'2018-02-26 17:08:21.863' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (425, 15, N'Miếng lót chuột Rilakkuma K1125 25g', N'', N'', 0, NULL, 56, CAST(N'2018-02-26 17:08:29.063' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (426, 12, N'Móc chìa khóa tháp Eiffel K0220', N'', N'', 5000, NULL, 33, CAST(N'2018-02-26 17:08:32.120' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (427, 12, N'Móc chìa khóa, thẻ hành lý Name tab K1335 50g', N'', N'', 0, NULL, 77, CAST(N'2018-02-26 17:08:32.977' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (428, 14, N'Bấm móng tay hình hươu K1460 30g', N'', N' 6 x 2 ', 0, NULL, 70, CAST(N'2018-02-26 17:08:36.283' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (429, 14, N'Bấm móng tay hình voi K1466 30g', N'', N' 6 x 2 ', 0, NULL, 44, CAST(N'2018-02-26 17:08:37.270' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (430, 12, N'Móc khóa K1325', N'', N' 10 x 8 ', 0, NULL, 30, CAST(N'2018-02-26 17:08:38.443' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (431, 14, N'Bấm móng tay gấu mèo K1464 50g', N'', N' 6 x 2 ', 0, NULL, 50, CAST(N'2018-02-26 17:08:38.727' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (432, 12, N'Móc khóa mini hình nhân vật hoạt hình K1779 10g', N'', N' 9 x 3 ', 0, NULL, 85, CAST(N'2018-02-26 17:08:42.227' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (433, 11, N'Hộp đựng đồ Starbox Every Day Lenwa K0986 55g', N'', N'', 0, NULL, 59, CAST(N'2018-02-26 17:08:56.057' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (434, 12, N'Móc khóa hình tháp Eiffel K1411 20g', N'', N' 7.5 ', 0, NULL, 58, CAST(N'2018-02-26 17:08:57.883' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (435, 11, N'Hộp đựng đồ để bàn K1174 85g', N'', N'', 0, NULL, 98, CAST(N'2018-02-26 17:09:00.083' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (436, 11, N'Hộp đựng đồ để bàn K1167 45g', N'', N'', 0, NULL, 49, CAST(N'2018-02-26 17:09:04.017' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (437, 11, N'Hộp đựng đồ Mickey Mouse K1127 220g', N'', N'', 0, NULL, 86, CAST(N'2018-02-26 17:09:05.553' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (438, 12, N'Móc khóa Rilakkuma K1258 10g', N'', N'', 0, NULL, 99, CAST(N'2018-02-26 17:09:06.183' AS DateTime))
INSERT [dbo].[SanPham] ([Id], [Id_Loai], [TenSp], [MauMuc], [KichThuoc], [Gia], [GhiChu], [SoLuongBan], [NgayCapNhat]) VALUES (439, 11, N'Hộp đựng đồ, ống cắm bút&nbsp;4 ngăn K0094', N'', N'', 0, NULL, 72, CAST(N'2018-02-26 17:09:12.890' AS DateTime))
SET IDENTITY_INSERT [dbo].[SanPham] OFF
ALTER TABLE [dbo].[HinhAnhSP]  WITH CHECK ADD  CONSTRAINT [pk4] FOREIGN KEY([Id])
REFERENCES [dbo].[SanPham] ([Id])
GO
ALTER TABLE [dbo].[HinhAnhSP] CHECK CONSTRAINT [pk4]
GO
ALTER TABLE [dbo].[HoaDonSanPham]  WITH CHECK ADD  CONSTRAINT [pk2] FOREIGN KEY([Id])
REFERENCES [dbo].[SanPham] ([Id])
GO
ALTER TABLE [dbo].[HoaDonSanPham] CHECK CONSTRAINT [pk2]
GO
ALTER TABLE [dbo].[HoaDonSanPham]  WITH CHECK ADD  CONSTRAINT [pk3] FOREIGN KEY([Id_HoaDon])
REFERENCES [dbo].[HoaDon] ([Id_HoaDon])
GO
ALTER TABLE [dbo].[HoaDonSanPham] CHECK CONSTRAINT [pk3]
GO
ALTER TABLE [dbo].[LoaiSanPham]  WITH CHECK ADD  CONSTRAINT [pk] FOREIGN KEY([Id_Nhom])
REFERENCES [dbo].[NhomSanPham] ([Id_Nhom])
GO
ALTER TABLE [dbo].[LoaiSanPham] CHECK CONSTRAINT [pk]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [pk1] FOREIGN KEY([Id_Loai])
REFERENCES [dbo].[LoaiSanPham] ([Id_Loai])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [pk1]
GO
