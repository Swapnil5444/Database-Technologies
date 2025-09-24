DELIMITER //

CREATE PROCEDURE Even(IN num INT)
BEGIN
    DECLARE counter INT DEFAULT 0;

    loop_label: LOOP
        IF counter > num THEN
            LEAVE loop_label;
        END IF;

        IF counter % 2 = 0 THEN
            SELECT counter AS Even_Number;
        END IF;

        SET counter = counter + 1;
    END LOOP loop_label;
END //

DELIMITER ;
call Even(30);

