﻿SELECT NGSINH AS NGAYSINH, DCHI AS DIACHI
FROM NHANVIEN
WHERE NHANVIEN.HONV LIKE N'Đinh%' AND
		NHANVIEN.TENLOT LIKE N'Bá%' AND
			NHANVIEN.TENNV LIKE N'Tiên%'