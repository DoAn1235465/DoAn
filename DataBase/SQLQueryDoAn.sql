use master
go
drop database DBSanPhamDA
go
create database DBSanPhamDA
on primary(name='DBSanPhamDA_Dat',filename='D:\hoc\T3h asp\DoAn\DataBase\DBSanPhamDA.mdf')
log on(name='DBSanPhamDA_Log',filename='D:\hoc\T3h asp\DoAn\DataBase\DBSanPhamDA.ldf')

use DBSanPhamDA
go


create table NhomSanPham(
	Id_Nhom int  not null primary key identity,
	TenNhom nVarchar(150) not null,
	ChuThich text)
	go

	insert into NhomSanPham(TenNhom) values(N'Bút'),(N'Sổ & Vở'),(N'Đồ dùng thông minh')
create table LoaiSanPham(
	Id_Loai int not null primary key identity,
	TenLoaiSp nVarchar(150) not null,
	Id_Nhom int,
	GhiChu nVarchar(255),
	constraint pk foreign key (Id_Nhom) references NhomSanPham(Id_Nhom)
	)
	go
	insert into LoaiSanPham (TenLoaiSp,Id_Nhom) values(N'Bút bi',1),(N'Bút bi nước',1),(N'Bút chì',1),
	(N'Bút đánh dấu',1),(N'Bút xóa',1)
	insert into LoaiSanPham (TenLoaiSp,Id_Nhom) values(N'Sổ học từ',2),(N'Sổ ghi nhanh',2),(N'Vở thiếp, Tập vở',2),
	(N'Giấy nhớ, giấy nhắc, sổ xé',2),(N'Sổ giấy vẽ',2)
	insert into LoaiSanPham (TenLoaiSp,Id_Nhom) values(N'Hộp đựng đồ, ống cắm bút',3),(N'Móc chìa khóa',3),(N'Dụng cụ thu dây',3),
	(N'Bấm móng tay',3),(N'Tấm lót chuột',3)
create table SanPham(
	Id int not null primary key identity,
	Id_Loai int,
	constraint pk1 foreign key (Id_Loai) references LoaiSanPham(Id_Loai),
	TenSp nVarchar(150) not null,
	MauMuc nVarchar(150),
	KichThuoc nvarchar(10),
	Gia int not null,
	GhiChu nVarchar(150),
	SoLuongBan int,
	NgayCapNhat datetime not null
)
go
create table HinhAnhSP(
	Id_HA int not null primary key identity,
	Id int,
	constraint pk4 foreign key (Id) references SanPham(Id),
	DiaChi text
)
create table HoaDon(
	Id_HoaDon int not null primary key identity,
	HoTen nvarchar(255) not null,
	DiaChi nVarchar(150) not null,
	Email nvarchar(255) not null,
	DienThoai nvarchar(14) not null,
	fax int not null,
	Cty nVarchar(255) not null,
	NgayDat datetime not null
)
go

create table HoaDonSanPham(
	Id int  not null,
	Id_HoaDon int not null,
	SoLuong int not null,
	DonGia int not null,
	primary key(Id,Id_HoaDon),
	constraint pk2 foreign key (Id) references SanPham(Id),
	constraint pk3 foreign key (Id_HoaDon) references HoaDon(Id_HoaDon)
)
go

create table LienHe(
	Id_LienHe int not null primary key identity,
	HoTen nVarchar(50) not null,
	Cty nVarchar(150) not null,
	Email nVarchar(150) not null,
	DienThoai nVarchar(14) not null,
	Fax Int not null,
	DiaChi nVarchar(150) not null,
	NoiDung nVarchar(255) not null,
	NgayLienHe datetime not null
)

create table TaiKhoan(
	Username varchar(32) not null primary key,
	[Password] varchar(32) Not null,
	Name varchar(128) not null
)

select*from NhomSanPham
select*from SanPham order by Id_Loai,TenSp
select*from LoaiSanPham
select*from HinhAnhSP