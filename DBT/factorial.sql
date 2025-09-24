DELIMITER //

CREATE PROCEDURE fact(IN num INT)
BEGIN
    DECLARE counter INT DEFAULT 1;
    DECLARE factNum INT DEFAULT 1;

    lbl: WHILE (counter <= num) DO
		SET factNum = counter * factNum;
        SET counter = counter + 1;
        
    END WHILE lbl;

    SELECT factNum AS Factorial;
END //

DELIMITER ;
DROP PROCEDURE fact;

CALL fact(10);
CALL fact(5);