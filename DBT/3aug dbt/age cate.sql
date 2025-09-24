delimiter $$ 
create procedure checkcategory(in age int)
begin
	if age< 13 then 
		select 'child' as Grp_category;
	elseif age>=13 && age<=19 then
		select 'Teenager' as Grp_category;
	elseif age>=20 && age<=59 then
		select 'adult'  as Grp_category;
	else select 'Senior citizen'  as Grp_category;
	END if;
END $$
delimiter ;

call checkcategory(13);
call checkcategory(60);