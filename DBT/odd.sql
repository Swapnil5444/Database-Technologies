DROP PROCEDURE IF EXISTS Odd;

DELIMITER //

CREATE PROCEDURE Odd(IN num INT)
BEGIN
    DECLARE counter INT DEFAULT 0;
    DECLARE allOdd TEXT DEFAULT '';

    loop_label: LOOP
        IF counter > num THEN
            LEAVE loop_label;
        END IF;

        IF counter % 2 = 1 THEN
            SET allOdd = CONCAT(allOdd, counter, '\n');
        END IF;

        SET counter = counter + 1;
    END LOOP loop_label;

    SELECT allOdd AS Odd_Numbers;
END //

DELIMITER ;

call Odd(30);