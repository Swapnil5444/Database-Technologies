DELIMITER //

CREATE PROCEDURE Fibbo(IN num INT)
BEGIN
    DECLARE FirstNum INT DEFAULT 0;
    DECLARE  SecondNum INT DEFAULT 1;
    DECLARE NextNum int ;
    DECLARE  counter INT DEFAULT 1;
	select FirstNUM as Fibo_num;
    lbl: repeat 
		select SecondNum as Fibo_num;
		SET NextNum = FirstNum + SecondNum;
        SET FirstNum = SecondNum;
        Set SecondNum = FirstNum;
        Set counter = counter + 1;
	UNTIL counter >= num
    END REPEAT lbl;

    SELECT NextNum AS Fibbo_Table;
END //

DELIMITER ;
DROP PROCEDURE square;

CALL Fibbo(10);

CALL Fibbo(15);