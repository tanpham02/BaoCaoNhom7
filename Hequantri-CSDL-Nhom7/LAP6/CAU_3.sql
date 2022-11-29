﻿
--BAI3-A
CREATE TRIGGER DELETETHANHNHAN ON NHANVIEN
INSTEAD OF DELETE
AS
BEGIN
	DELETE FROM THANNHAN WHERE MA_NVIEN IN (SELECT MANV FROM deleted)
	DELETE FROM NHANVIEN WHERE MANV IN (SELECT MANV FROM deleted)

END

DELETE NHANVIEN WHERE MANV='025'
SELECT * FROM NHANVIEN

--BAI3-B

CREATE TRIGGER INSERTNHANVIEN 
ON NHANVIEN
INSTEAD OF INSERT
AS
BEGIN
	INSERT INTO PHANCONG VALUES((SELECT MANV FROM inserted), 1,1,100)
END
 
INSERT INTO NHANVIEN
VALUES('Tran', 'Thanh', 'Tam', '030','1970-10-10', 'Đà Nẵng', N'Nữ', 16000, '005', 1)
	