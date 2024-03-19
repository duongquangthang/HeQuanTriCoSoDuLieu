use QLSV
go

insert dbo.KHOA (MaKhoa, TenKhoa, SL_CBGD)
values
(
	'CNTT',
	N'Công nghệ thông tin',
	15
)
insert dbo.KHOA (MaKhoa, TenKhoa, SL_CBGD)
values
(
	'TOAN',
	N'Toán',
	20
)
insert dbo.KHOA (MaKhoa, TenKhoa, SL_CBGD)
values
(
	'SINH',
	N'Sinh học',
	17
)

insert dbo.SINHVIEN (MSSV,Ten,GioiTinh,DiaChi,DienThoai,MaKhoa)
values
(
	'SV001',
	N'BUI THUY AN',
	'Nữ',
	N'223 TRAN HUNG DAO .HCM',
	'0843132202',
	'CNTT'
)
insert dbo.SINHVIEN (MSSV,Ten,GioiTinh,DiaChi,DienThoai,MaKhoa)
values
(
	'SV002',
	N'NGUYEN THANH TUNG',
	'Nam',
	N'140 CONG QUYNH .HCM',
	'0581525678',
	'CNTT'
)
insert dbo.SINHVIEN (MSSV,Ten,GioiTinh,DiaChi,DienThoai,MaKhoa)
values
(
	'SV003',
	N'NGUYEN THANH LONG',
	'Nam',
	N'112/4 CONG QUYNH .HCM',
	'0918345623',
	'TOAN'
)
insert dbo.SINHVIEN (MSSV,Ten,GioiTinh,DiaChi,DienThoai,MaKhoa)
values
(
	'SV004',
	N'HOANG THI HOA',
	'Nữ',
	N'90 NG VAN CU .HCM',
	'0988320123',
	'CNTT'
)
insert dbo.SINHVIEN (MSSV,Ten,GioiTinh,DiaChi,DienThoai,MaKhoa)
values
(
	'SV005',
	N'TRAN HONG SON',
	'Nam',
	N'54 CAO THANG .HANOI',
	'0928345987',
	'CNTT'
)

insert dbo.GIAOVIEN (MaGV,TenGV,MaKhoa )
values
(
	'GV01',
	N'PHAM THI THAO',
	'CNTT'
)
insert dbo.GIAOVIEN (MaGV,TenGV,MaKhoa )
values
(
	'GV02',
	N'LAM HOANG VU',
	'TOAN'
)
insert dbo.GIAOVIEN (MaGV,TenGV,MaKhoa )
values
(
	'GV03',
	N'TRAN VAN TIEN',
	'CNTT'
)
insert dbo.GIAOVIEN (MaGV,TenGV,MaKhoa )
values
(
	'GV04',
	N'HOANG VUONG',
	'CNTT'
)

insert dbo.MONHOC (MaMH,TenMH,SoTC  )
values
(
	'CSDL',
	N'CO SO DU LIEU',
	3
)
insert dbo.MONHOC (MaMH,TenMH,SoTC  )
values
(
	'CTDL',
	N'CAU TRUC DU LIEU',
	4
)
insert dbo.MONHOC (MaMH,TenMH,SoTC  )
values
(
	'KTLT',
	N'KY THUAT LAP TRINH',
	5
)
insert dbo.MONHOC (MaMH,TenMH,SoTC  )
values
(
	'CWIN',
	N'LAP TRINH C TREN  WINDOW',
	4
)

INSERT DBO.GIANGDAY(MaKhoaHoc,MaGV,MaMH,HocKy,Nam)
VALUES
(
	'K1',
	'GV01',
	'CSDL',
	1,
	2021
)
INSERT DBO.GIANGDAY(MaKhoaHoc,MaGV,MaMH,HocKy,Nam)
VALUES
(
	'K2',
	'GV04',
	'KTLT',
	2,
	2020
)
INSERT DBO.GIANGDAY(MaKhoaHoc,MaGV,MaMH,HocKy,Nam)
VALUES
(
	'K3',
	'GV03',
	'CTDL',
	1,
	2020
)
INSERT DBO.GIANGDAY(MaKhoaHoc,MaGV,MaMH,HocKy,Nam)
VALUES
(
	'K4',
	'GV04',
	'CWIN',
	1,
	2020
)
INSERT DBO.GIANGDAY(MaKhoaHoc,MaGV,MaMH,HocKy,Nam)
VALUES
(
	'K5',
	'GV01',
	'CSDL',
	1,
	2021
)

INSERT DBO.KETQUA (MaSV,MaKhoaHoc,Diem )
VALUES
(
	'SV001',
	'K1',
	8.5
)
INSERT DBO.KETQUA (MaSV,MaKhoaHoc,Diem )
VALUES
(
	'SV002',
	'K3',
	7.0
)
INSERT DBO.KETQUA (MaSV,MaKhoaHoc,Diem )
VALUES
(
	'SV003',
	'K4',
	7.5
)
INSERT DBO.KETQUA (MaSV,MaKhoaHoc,Diem )
VALUES
(
	'SV001',
	'K2',
	9.0
)
INSERT DBO.KETQUA (MaSV,MaKhoaHoc,Diem )
VALUES
(
	'SV004',
	'K3',
	6.0
)
INSERT DBO.KETQUA (MaSV,MaKhoaHoc,Diem )
VALUES
(
	'SV005',
	'K3',
	7.0
)
INSERT DBO.KETQUA (MaSV,MaKhoaHoc,Diem )
VALUES
(
	'SV002',
	'K1',
	7.0
)
INSERT DBO.KETQUA (MaSV,MaKhoaHoc,Diem )
VALUES
(
	'SV003',
	'K2',
	8.5
)
INSERT DBO.KETQUA (MaSV,MaKhoaHoc,Diem )
VALUES
(
	'SV005',
	'K5',
	7.0
)
INSERT DBO.KETQUA (MaSV,MaKhoaHoc,Diem )
VALUES
(
	'SV004',
	'K4',
	2.0
)