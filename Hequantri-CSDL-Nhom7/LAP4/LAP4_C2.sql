SELECT TENNV, MANV 
FROM NHANVIEN
WHERE CAST(MANV AS INT) % 2 = 0;

SELECT * FROM NHANVIEN;
DECLARE @MAX INT, @i INT;
SELECT @MAX = MAX(CAST(MANV AS INT)) FROM NHANVIEN;
SET @i = 1;
WHILE @i < @MAX
BEGIN
	IF @i = 4
	BEGIN
		SET @i = @i +1;
		CONTINUE;
	END
	IF @i %2 =0
	SELECT MANV, HONV, TENLOT, TENNV from NHANVIEN where cast (MANV as int) = @i;
	SET @i = @i + 1;
END