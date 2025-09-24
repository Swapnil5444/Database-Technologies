delimiter $$ 
create procedure checkTrafficLight(in T_signal varchar(20))
begin
	case T_signal
		when'R' then select 'STOP' AS Traffic_Signal;
        when 'Y' then select 'WAIT' AS Traffic_Signal;
        when 'G' then select 'GO' AS Traffic_Signal;
         else select 'Invalid signal' AS Traffic_Signal;
	END CASE;
END $$
delimiter ;

call checkTrafficLight('R');
call checkTrafficLight('Y');
call checkTrafficLight('G');
call checkTrafficLight('W');