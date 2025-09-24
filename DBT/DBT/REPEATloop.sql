DELIMITER //

CREATE PROCEDURE Square(IN num INT)
BEGIN
    DECLARE counter INT DEFAULT 0;
    DECLARE  allNum varchar(200) DEFAULT '';

    lbl: repeat 
		SET allNum = concat(allNum,counter * counter,", ","\n");
        SET counter = counter + 1;
        UNTIL counter > num
	
    END REPEAT lbl;

    SELECT allNum AS Square_Table;
END //

DELIMITER ;
DROP PROCEDURE square;

CALL Square(10);

CALL Square(15);