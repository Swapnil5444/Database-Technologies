DELIMITER //

CREATE PROCEDURE cube_num(IN num INT)
BEGIN
    DECLARE counter INT DEFAULT 1;
    DECLARE  allNum varchar(200) DEFAULT '';

    lbl: repeat 
		SET allNum = concat(allNum,counter * counter*counter,", ","\n");
        SET counter = counter + 1;
        UNTIL counter > num
	
    END REPEAT lbl;

    SELECT allNum AS Cube_Table;
END //

DELIMITER ;
DROP PROCEDURE cube_num;

CALL cube_num(10);

CALL cube_num(20);