﻿CREATE PROCEDURE TOTAL
	@NUM1 INT, @NUM2 INT
AS
BEGIN 
	DECLARE @SUM int;
	SET @SUM = @NUM1 + @NUM2;

	PRINT N'Tổng là: ' + CAST(@SUM AS VARCHAR)
END;

EXECUTE TOTAL 1, 2