use cdac;
select * from student;
select name ,
	case 
		when percent >= 90 then 'Grade A'
		when percent >= 75 then 'Grade B'
        when percent >= 50 then 'Grade C'
        else
			'fail'
		END AS grade
From Student;


delimiter $$ 
create procedure checkDay1(in dayNum int)
begin
	case dayNum
		when 1 then select 'monday' AS TOday_day;
        when 2 then select 'tuesday' AS TOday_day;
        when 3 then select 'wednesday' AS TOday_day;
        when 4 then select 'thrusday'AS TOday_day;
        when 5 then select 'friday'AS TOday_day;
        when 6 then select 'saturday'AS TOday_day;
        when 7 then select 'sunday' AS TOday_day;
        else select 'Invalid day' AS TOday_day;
	END CASE;
END $$
delimiter ;

call checkDay1(7);

-- month


delimiter $$ 
create procedure checkMonthNo(in month_name int)
begin
	case month_name
		when 1 then select 'jan' AS Month_name;
        when 2 then select 'feb' AS Month_name;
        when 3 then select 'march' AS Month_name;
        when 4 then select 'april'AS Month_name;
        when 5 then select 'may'AS Month_name;
        when 6 then select 'june'AS Month_name;
        when 7 then select 'july' AS Month_name;
        when 8 then select 'aug' AS Month_name;
        when 9 then select 'sept' AS Month_name;
        when 10 then select 'oct' AS Month_name;
        when 11 then select 'nov' AS Month_name;
        when 12 then select 'dec' AS Month_name;
        else select 'Invalid month' AS Month_name;
	END CASE;
END $$
delimiter ;

call checkMonthNo(5);
call checkMonthNo(6);
call checkMonthNo(13);



DELIMITER $$

CREATE PROCEDURE evenOROdd(IN Num INT)
BEGIN
    IF Num % 2 = 0 THEN
        SELECT 'Number is even' AS Even_or_Odd;
    ELSE
        SELECT 'Number is odd' AS Even_or_Odd;
    END IF;
END $$

DELIMITER ;

call evenOROdd(15);

