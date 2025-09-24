DELIMITER //

CREATE PROCEDURE _TABLE(IN num INT)
BEGIN
    DECLARE counter INT DEFAULT 1;
    DECLARE  EIGHTtABLE varchar(200) DEFAULT '';

    lbl: repeat 
		SET EIGHTtABLE = concat(EIGHTtABLE,num * counter,", ","\n");
        SET counter = counter + 1;
        UNTIL counter >10
	
    END REPEAT lbl;

    SELECT EIGHTtABLE AS Num_Table;
END //

DELIMITER ;
DROP PROCEDURE _TABLE;

CALL _TABLE(10);
CALL _TABLE(8);
CALL _TABLE(15);