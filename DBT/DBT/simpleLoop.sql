DELIMITER //

CREATE PROCEDURE printNum(IN in_i INT)
BEGIN
    DECLARE counter INT DEFAULT 0;
    DECLARE output VARCHAR(200) DEFAULT '';

    lbl: LOOP
        SET counter = counter + 1;
        IF counter > in_i THEN
            LEAVE lbl;
        END IF;
		IF counter = 5 THEN
        iterate lbl;
        END IF;
        SET output = CONCAT(output, ' ', counter,"\n");
    END LOOP lbl;

    SELECT output AS result;
END //

DELIMITER ;
DROP PROCEDURE printNum;

CALL printNum(10);