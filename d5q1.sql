create table assignment5_q1_customer(cust_id int, iname nvarchar(50), primary key(cust_id));

create table assignment5_q1_order(order_id int, cust_id int, amount money, 
order_date smalldatetime, primary key(order_id), foreign key(cust_id) references assignment5_q1_customer(cust_id));

select c.iname, COUNT(o.order_id) 'sum'
from assignment5_q1_customer c join assignment5_q1_order o ON c.cust_id = o.cust_id
where YEAR(o.order_date) = 2002
group by c.iname
;