select * from institude;
select * from student;
select i.Ins_id, i.Ins_name,s.S_name from student s left join institude i on i.Ins_id = s.Ins_id where s.Ins_id is not null;
select i.Ins_id, i.Ins_name,s.S_name from student s left join institude i on i.Ins_id = s.Ins_id where s.Ins_id is  null;
select i.Ins_id, i.Ins_name,s.S_name from student s left join institude i on i.Ins_id = s.Ins_id  ;
select * from institude i left join student s on i.Ins_id = s.Ins_id union
select * from institude i left join student s on i.Ins_id = s.Ins_id ;
select s.S_name, s.course,i.Ins_name from student s left join institude i on i.Ins_id = s.Ins_id where city = 'mumbai';


