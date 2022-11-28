SELECT TENDEAN ,SUM(PHANCONG.THOIGIAN) AS TOTAL ,ROUND(SUM(PHANCONG.THOIGIAN), 2) AS "Tong thoi gian lam viec mot tuan"
From  NHANVIEN, DEAN INNER JOIN PHANCONG
ON PHANCONG.MA_NVIEN = DEAN.MADA 
GROUP BY  DEAN.TENDEAN;

SELECT TENDEAN ,SUM(PHANCONG.THOIGIAN) AS TOTAL ,CAST(SUM(PHANCONG.THOIGIAN) AS VARCHAR) AS "Tong thoi gian lam viec mot tuan"
From  NHANVIEN, DEAN INNER JOIN PHANCONG
ON PHANCONG.MA_NVIEN = DEAN.MADA 
GROUP BY  DEAN.TENDEAN;

SELECT TENDEAN ,SUM(PHANCONG.THOIGIAN) AS TOTAL ,CONVERT(VARCHAR, SUM(PHANCONG.THOIGIAN)) AS "Tong thoi gian lam viec mot tuan"
From  NHANVIEN, DEAN INNER JOIN PHANCONG 
ON PHANCONG.MA_NVIEN = DEAN.MADA 
GROUP BY  DEAN.TENDEAN;

SELECT TENNV AS TENNV , TENPHG AS TENPHONG , REPLACE(CAST(AVG(LUONG) AS DECIMAL(7,2)), '.', ',' ) AS LuongTrungBinh
From NHANVIEN INNER JOIN  PHONGBAN
ON  NHANVIEN.PHG = PHONGBAN.MAPHG 
GROUP BY LUONG, TENNV, TENPHG;

SELECT TENNV AS TENNV , TENPHG AS TENPHONG ,
LEFT(RIGHT(CONVERT(varchar(30),AVG(LUONG)), 7) ,2) + ',' + RIGHT(LEFT(CONVERT(varchar(30),AVG(LUONG)), 7) ,3) + ',' + RIGHT(LEFT(CONVERT(varchar(30),AVG(LUONG)), 7) ,2) AS LuongTrungBinh
From NHANVIEN INNER JOIN  PHONGBAN
ON  NHANVIEN.PHG = PHONGBAN.MAPHG 
GROUP BY LUONG, TENNV, TENPHG