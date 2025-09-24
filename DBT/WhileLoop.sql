DELIMITER //

CREATE PROCEDURE SumNum(IN num INT)
BEGIN
    DECLARE counter INT DEFAULT 0;
    DECLARE sum INT DEFAULT 0;

    lbl: WHILE (counter <= num) DO
		SET sum = counter + sum;
        SET counter = counter + 1;
        
    END WHILE lbl;

    SELECT sum AS Total;
END //

DELIMITER ;
DROP PROCEDURE SumNum;

CALL SumNum(10);

CALL SumNum(15);