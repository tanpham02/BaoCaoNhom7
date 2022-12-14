SELECT * FROM PHANCONG;
SELECT MADA,
	SUM(THOIGIAN) AS 'TOTAL TIME WORKS',
	CEILING(SUM(THOIGIAN)) AS 'TOTAL TIME WORKS - CEILING',
	FLOOR(SUM(THOIGIAN)) AS 'TOTAL TIME WORKS - FLOOR',
	ROUND(SUM(THOIGIAN), 2) AS 'TOTAL TIME WORKS - ROUND-2'
FROM PHANCONG 
GROUP BY MADA;

SELECT	HONV + ' ' + TENLOT + ' ' + TENNV AS HOVATEN, ROUND(LUONG, 2) AS LUONG
FROM NHANVIEN 
WHERE LUONG > (SELECT ROUND(AVG(LUONG), 2) FROM NHANVIEN WHERE PHG IN (SELECT MAPHG FROM PHONGBAN WHERE TENPHG = N'Nghiên Cứu'))