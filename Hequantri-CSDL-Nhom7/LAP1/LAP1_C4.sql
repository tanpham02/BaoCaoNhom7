SELECT	HONV + ' ' + TENLOT + ' ' + TENNV AS HOVATEN, DCHI AS DIACHI 
FROM NHANVIEN
WHERE (NHANVIEN.DCHI LIKE '%HCM%') OR (NHANVIEN.DCHI LIKE N'%Hồ%') 
