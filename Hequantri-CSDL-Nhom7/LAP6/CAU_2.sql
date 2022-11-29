﻿
--BAI2-A

CREATE TRIGGER SUMISNERT
	ON NHANVIEN
	AFTER INSERT
AS
	DECLARE @MALE INT, @FEMALE INT
	SELECT @FEMALE = COUNT(MANV) FROM NHANVIEN WHERE PHAI = N'Nữ'
	SELECT @MALE = COUNT(MANV) FROM NHANVIEN WHERE PHAI = N'Nam'

	PRINT N'Tổng số nhân viên là nữ: ' + CAST(@FEMALE AS VARCHAR)
	PRINT N'Tổng số nhân viên là nam: ' + CAST(@MALE AS VARCHAR)

--BAI2-B
CREATE TRIGGER SUMUPDATE
	ON NHANVIEN
	AFTER UPDATE
AS
	DECLARE @MALE INT, @FEMALE INT
	SELECT @FEMALE = COUNT(MANV) FROM NHANVIEN WHERE PHAI = N'Nữ'
	SELECT @MALE = COUNT(MANV) FROM NHANVIEN WHERE PHAI = N'Nam'

	PRINT N'Tổng số nhân viên là nữ: ' + CAST(@FEMALE AS VARCHAR)
	PRINT N'Tổng số nhân viên là nam: ' + CAST(@MALE AS VARCHAR)

--BAI2-C
CREATE TRIGGER SUMDELETE
	ON DEAN
	AFTER DELETE
AS
	SELECT MA_NVIEN, COUNT(MADA) AS 'Tổng số đề án đã tham gia'
	FROM PHANCONG
	GROUP BY MA_NVIEN