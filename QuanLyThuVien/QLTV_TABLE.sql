CREATE DATABASE QLTV


create table DocGia 
(
	MaDocGia varchar(5) not null,
	Ho nvarchar(20),
	TenLot nvarchar(100),
	Ten nvarchar(20),
	NgaySinh datetime,
	constraint PK_DocGia primary key (MaDocGia)
)

create table NguoiLon
(
	MaDocGia varchar(5) not null,
	SoNha nvarchar(50),
	Duong nvarchar(50),
	Quan nvarchar(50),
	DienThoai nvarchar(20),
	HanSuDung nvarchar(50),
	constraint PK_NguoiLon primary key (MaDocGia),
	constraint FK_NguoiLon foreign key (MaDocGia) references dbo.DocGia (MaDocGia)
)

create table TreEm 
(
	MaDocGia varchar(5) not null,
	MaDocGia_NguoiLon varchar(5),
	constraint PK_TreEm primary key (MaDocGia),
	constraint FK1_TreEm foreign key (MaDocGia) references dbo.DocGia (MaDocGia),
	constraint FK2_TreEm foreign key (MaDocGia_NguoiLon) references dbo.NguoiLon (MaDocGia)
)

create table TuaSach
(
	MaTuaSach varchar(5) not null,
	TuaSach nvarchar(100),
	TacGia nvarchar(100),
	TomTat nvarchar(500),
	constraint PK_TuaSach primary key (MaTuaSach)
)

create table DauSach
(
	ISBN varchar(5) not null,
	MaTuaSach varchar(5),
	NgonNgu nvarchar(20),
	Bia nvarchar(100),
	TrangThai nvarchar(20),
	constraint PK_DauSach primary key (ISBN),
	constraint FK1_DauSach foreign key (MaTuaSach) references dbo.TuaSach (MaTuaSach)
)

create table CuonSach 
(
	ISBN varchar(5) not null,
	MaCuonSach varchar(5) not null,
	TinhTrang nvarchar(20),
	constraint PK_CuonSach primary key (ISBN, MaCuonSach),
	constraint FK_CuonSach foreign key (ISBN) references dbo.DauSach (ISBN)
)

create table DangKy
(
	ISBN varchar(5) not null,
	MaDocGia varchar(5) not null,
	NgayDK datetime,
	GhiChu nvarchar(100),
	constraint PK_DangKy primary key (ISBN, MaDocGia),
	constraint FK1_DangKy foreign key (ISBN) references dbo.DauSach (ISBN),
	constraint FK2_DangKy foreign key (MaDocGia) references dbo.DocGIa (MaDocGia)
)

create table Muon
(
	ISBN varchar(5) not null,
	MaCuonSach varchar(5) not null,
	MaDocGia varchar(5),
	NgayMuon datetime,
	NgayHetHan datetime,
	constraint PK_Muon primary key (ISBN, MaCuonSach),
	constraint FK1_Muon foreign key (MaDocGia) references dbo.DocGia (MaDocGia),
	constraint FK2_Muon foreign key (ISBN, MaCuonSach) references dbo.CuonSach (ISBN, MaCuonSach)
)

create table QuaTrinhMuon
(
	ISBN varchar(5) not null,
	MaCuonSach varchar(5) not null,
	NgayMuon datetime not null,
	MaDocGia varchar(5),
	NgayHetHan datetime,
	NgayTra datetime,
	TienMuon money,
	TienDaTra money,
	TienDatCoc money,
	GhiChu nvarchar(100),
	constraint PK_QuaTrinhMuon primary key (ISBN, MaCuonSach, NgayMuon),
	constraint FK1_QuaTrinhMuon foreign key (MaDocGia) references dbo.DocGia (MaDocGia),
	constraint FK2_QuaTrinhMuon foreign key (ISBN, MaCuonSach) references dbo.CuonSach (ISBN, MaCuonSach)
)