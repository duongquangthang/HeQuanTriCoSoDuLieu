
insert into dbo.DocGia values 
('DG1', N'TRẦN', N'HÀ LAN', N'ANH','20100504'),
('DG2', N'PHẠM', N'ĐÌNH', N'DƯƠNG','19940916'),
('DG3', N'DƯƠNG', N'LỆ', N'TÂM','19961217'),
('DG4', N'PHẠM', N'THẾ', N'CHIẾN','20091209'),
('DG5', N'CAO', N'TRẦN LÊ', N'HƯNG','20120506'),
('DG6', N'BÙI', N'TRẦN TUẤN', N'HẢI','20010519'),
('DG7', N'CAO', N'TRẦN', N'KHÁNH','19890417')

INSERT INTO DBO.NguoiLon VALUES 
('DG2', N'123', N'TRẦN QUANG KHẢI', N'Q1', N'0111111111', N'3 tháng'),
('DG3', N'196', N'NGUYỄN THỊ MINH KHAI', N'Q3', N'02222222222', N'6 tháng'),
('DG6', N'85', N'HAI BÀ TRƯNG', N'Q2', N'0333333333', N'1 tháng'),
('DG7', N'226', N'TRẦN BÌNH TRỌNG', N'Q1', N'0444444444', N'4 tháng')

INSERT INTO DBO.TreEm VALUES 
('DG1','DG6'),
('DG4','DG3'),
('DG5','DG3')

INSERT DBO.TuaSach (MaTuaSach, TuaSach, TacGia )VALUES 
('TS1', N'Doraemon',N'Fujiko Fujio'),
('TS2', N'Thám Tử Lừng Danh Connan',N'Aoyama Yoshimasa'),
('TS3', N'Mắt Biếc',N'Nguyễn Nhật Ánh'),
('TS4', N'One Piece',N'Oda Eiichiro'),
('TS5', N'Think And Grow Rich',N'Napoleon Hill'),
('TS6', N'Trí Tuệ Do Thái',N'Eran Katz')

INSERT INTO DBO.DauSach VALUES 
('ISBN1', N'TS1', N'Tiếng Việt', N'Xanh Lam', N'Mới'),
('ISBN2', N'TS4', N'Tiếng Việt', N'Vàng Nâu', N'Mới'),
('ISBN3', N'TS6', N'Tiếng Anh', N'Xanh Lam', N'Cũ'),
('ISBN4', N'TS3', N'Tiếng Việt', N'Xanh Lam', N'Cũ'),
('ISBN5', N'TS2', N'Tiếng Việt', N'Nâu Xanh', N'Mới'),
('ISBN6', N'TS5', N'Tiếng Anh', N'Đen', N'Cũ')

INSERT INTO DBO.CuonSach VALUES
('ISBN1', 'CS1', N'Mới'), 
('ISBN2', 'CS4', N'Mới'), 
('ISBN2', 'CS5', N'Cũ'), 
('ISBN3', 'CS1', N'Cũ'), 
('ISBN3', 'CS3', N'Mới'),
('ISBN4', 'CS6', N'Cũ'),
('ISBN5', 'CS1', N'Mới'),
('ISBN5', 'CS4', N'Cũ'),
('ISBN5', 'CS6', N'Cũ'),
('ISBN6', 'CS2', N'Mới'),
('ISBN6', 'CS3', N'Mới')

INSERT INTO DBO.Muon VALUES
('ISBN1', 'CS1', 'DG1', '20230215', '20230815' ),
('ISBN2', 'CS4', 'DG7', '20230513', '20230813' ),
('ISBN2', 'CS5', 'DG2', '20230703', '20230803' ),
('ISBN4', 'CS6', 'DG1', '20230816', '20231216' ),
('ISBN5', 'CS1', 'DG6', '20230117', '20230217' ),
('ISBN5', 'CS6', 'DG4', '20230110', '20230410' ),
('ISBN6', 'CS3', 'DG5', '20230918', '20130318' )

INSERT DBO.QuaTrinhMuon (ISBN, MaCuonSach, NgayMuon, MaDocGia, NgayHetHan, NgayTra, TienMuon, TienDaTra, TienDatCoc ) VALUES
('ISBN1', 'CS1', '20230215', 'DG1', '20230815', '20230810', '30000', '20000', '10000'),
('ISBN2', 'CS5', '20230703', 'DG4', '20230803', '20230715', '20000', '15000', '5000'),
('ISBN2', 'CS5', '20230403', 'DG4', '20230803', '20230617', '40000', '20000', '20000'),
('ISBN4', 'CS6', '20230816', 'DG3', '20231216', '20231019', '17000', '10000', '7000'),
('ISBN4', 'CS6', '20230828', 'DG7', '20231216', '20230928', '26000', '24000', '2000'),
('ISBN5', 'CS1', '20230417', 'DG5', '20230517', '20230429', '27000', '10000', '17000'),
('ISBN5', 'CS4', '20230118', 'DG1', '20230410', '20230218', '16000', '6000', '10000'),
('ISBN6', 'CS3', '20230118', 'DG2', '20230318', '20230218', '53000', '25000', '28000')