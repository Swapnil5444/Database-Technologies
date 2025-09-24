delimiter $$ 
create procedure checkunitPrice(in unit int)
begin
	if unit<= 100 then 
		select unit*5  as unit_per_price;
	elseif unit<=300 then
		select unit*7 as unit_per_price;
	else 
		select unit*10 as unit_per_price;
	END if;
END $$
delimiter ;

call checkunitPrice(350);
call checkunitPrice(50);