-- 6. Cho biết số đề án được phân công của từng nhân viên (gồm mã số,tên, số lượng đề án được phân công)
SELECT NV.MANV, NV.TENNV, count(PC.MADA) AS SoLuongDeAn
FROM NHANVIEN NV
LEFT JOIN PHANCONG PC ON NV.MANV = PC.MANV
GROUP BY NV.MANV, NV.TENNV 