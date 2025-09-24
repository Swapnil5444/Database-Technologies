DELIMITER $$
CREATE procedure Reverse_Num()
begin
	declare i int DEFAULT 20;
    DECLARE output VARCHAR(200) DEFAULT '';
    lbl: WHILE (i >= 0) DO	
		SET output = CONCAT(output, i, ', ',"\n");
        SET i = i - 1;
	END WHILE lbl;	
SELECT output AS reverse_num;

end $$

drop procedure Reverse_Num;

DELIMITER ;

call Reverse_Num();










