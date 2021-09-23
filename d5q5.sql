create table ass5_company (id int, name varchar(50), location  varchar(100), primary key(id));

create table ass5_division 
	(id int, cid int, dname varchar(50), location varchar(100), contact_id int
	primary key(id), foreign key(cid) references ass5_company(id), foreign key(contact_id) references ass5_contacts(id));

create table ass5_contacts (id int, first_name varchar(20), last_name varchar(20), address varchar(100), primary key(id));



-- drop table ass5_division