create database a11;
use a11;
create table item_sales(
id int not null,
nam varchar(255),
price int ,
salesd Date
)

insert into item_sales values(1,'Apple',50,'2022-12-10'),
(1,'Apple',50,'2022-11-01'),
(2,'Pear',100,'2022-12-31'),
(2,'Pear',100,'2022-12-03'),
(3,'grapes',200,'2022-3-03');
 

create table item_discount(
id int not null,
Nam varchar(255),
dprice int ,
frsales Date ,
tosales Date
);

insert into item_discount values(1,'Apple',10,'2022-12-01','2022-12-31'),
(2,'Pear',20,'2022-12-01','2022-12-05');




select s.id,s.nam,s.salesd, 
case 
	when s.salesd between d.frsales and d.tosales then s.price - d.dprice
    else s.price
end as overall_price 

from item_sales s  left join item_discount  d on   s.id = d.id ;

