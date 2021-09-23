create table assignment5_q3_person(pid int, mid_id int null, name varchar(100) not null);

select p1.name, tmp.num
from assignment5_q3_person p1 
	join (select p2.mid_id, COUNT(p2.pid) 'num' from assignment5_q3_person p2 group by p2.mid_id) tmp
	ON tmp.mid_id = p1.pid
where p1.mid_id is null
;