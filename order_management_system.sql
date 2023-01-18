-- Creating db
create database if not exists order_management;

Use order_management;
-- product table

-- creating table

CREATE TABLE product(
product_id varchar(30) primary key ,product_name varchar(100),
product_desc varchar(200),category varchar(100),
subcategory varchar(100),manufacturer varchar(100));

desc product;

-- Inserting values

INSERT INTO product VALUES
('p1','Kinely soda','plain soda','Beverages','soda','kinley'),
('p2','Little hearts',	'sweet biscuits','Snacks','chips','Britania'),
('p3',	'Amul butter',	'fresh delicious butter',	'Dairy',	'Butter',	'amul'),
('p4','Redbull',	'Energy drink'	,'Beverages'	,'juice','Rauch'),
('p5',	'Brown bread',	'Brown bread made of wheat',	'Bread & Bakery',	'Bread',	'TopNTown'),
('p6','potato chips',	'crunchy chips',	'Snacks'	,'chips'	,'sakshi foods'),
('p7'	,'Amul fresh milk',	'Cow milk',	'Dairy',	'milk'	,'amul'),
('p8',	'paperboat amras',	'Fruit juice',	'Beverages',	'juice'	,'paperboat'),
('p9'	,'Amul fresh yoghurt',	'flavoured yoghurt',	'Dairy',	'yoghurt',	'amul'),
('p10'	,'Potato wafers',	'crunchy chips',	'Snacks'	,'chips',	'sakshi foods'),
('p11'	,'Goodday cookie',	'Fresh baked cookies',	'Bread & Bakery',	'cookies'	,'Goodday'),
('p12'	,'Nuts',	'nuts',	'Snacks',	'nuts'	,'delicacy foods'),
('p13',	'Amul fresh cheese',	'cheesy cheese',	'Dairy','cheese'	,'amul'),
('p14'	,'Bhakarvadi'	,'crunchy chips',	'snacks'	,'chips'	,'chitale'),
('p15',	'epigama yoghurt',	'falvoured yoghurt',	'Dairy',	'yoghurt',	'Epigama'),
('p16	','50-50 small biscuits',	'salty biscuits',	'Snacks',	'biscuits',	'Britania'),
('p17'	,'Saksh butter',	'fresh delicious butter'	,'Dairy',	'butter',	'saksh'),
('p18'	,'Nestle coffee','chilled coffee'	,'Beverages',	'coffee'	,'Nestle'),
('p19','Foxnuts'	,'healthy snacks',	'Snacks',	'nuts',	'Mr.Makhana'),
('p20' ,'Whitebread','White bread','Bread & Bakery','Bread','TopNTown');

select * from product;
-- ----------------------------------------------------------------------------------------------------------------------------------------------
-- Customer table

-- creating table

CREATE TABLE customer(
cust_id int primary key , salutation varchar(20),
cust_name varchar(100),cust_type varchar(100),
dob datetime, mobile numeric,email varchar(100),
educ varchar(100),profession varchar(100),
marital_status varchar(100),gender varchar(20));

desc customer;

-- Inserting values

INSERT INTO customer VALUES 
(101,'Mr','Jason','Frequent','2000-12-23 00:00:00',8977401651,'json@gmail.com','BTECH','Software developer','Married','Male'),
(102,'Mrs','Aisha','Not-Frequent','1982-1-2 00:00:00',5067496468,'aisha@gmail.com','BSC','Housewife','Married','Female'),
(103,'Mrs','Vihana','Not-Frequent','2001-2-22 00:00:00',4752535104,'vihana2@gmail.com','BCOM','Business development executive','single','Female'),
(104,'Mr','Kashish','Frequent','1997-11-23 00:00:00',4796482968,'kkashish@gmail.com','MCOM','Software developer','Married','Male'),
(105,'Mrs','Emily','Frequent','1999-03-23 00:00:00',4245749387,'emily23@gmail.com','BCA','Data analyst','single','Female'),
(106,'Mrs','Maze','Not-Frequent','2000-05-05 00:00:00',6404903806,'maze@gmail.com','BCA','Software developer','Married','Female'),
(107,'Mr','Richard','Frequent','1995-12-1 00:00:00',9549903229,'richard@gmail.com','BMS','Business development executive','single','Male'),
(108,'Mr','Gabriel','Frequent','1998-3-1 00:00:00',7011440509,'gabriel34@gmail.com','BTECH','Data scientist','single','Male'),
(109,'Mrs','Palak','Frequent','2002-07-3 00:00:00',5039522852,'pals@gmail.com','BBM','Journalist','single','Female'),
(110,'Mr','Alfie','Frequent','2000-05-21 00:00:00',6363212934,'alfieee@gmail.com','BA','Enterpreneur','single','Male');

select * from customer;

-- ----------------------------------------------------------------------------------------------------------------------------------------------

-- product details

-- creating table

CREATE TABLE product_details(
product_id varchar(100) primary key, product_ver int,
active Boolean,price decimal not null,discount decimal,instock varchar(20),
current_stock_count int,reorder_level int,
FOREIGN KEY(product_id) REFERENCES product(product_id));

desc product_details;

-- Inserting values

INSERT INTO product_details VALUES
('p1',1,True,20,0,'yes',35,2),
('p2',2,True,5,0,'yes',20,2),
('p3',1,	True,50,0,'yes',10,1),
('p4',3,True,100,0,'yes',5,1),
('p5',2,True,45,5,'yes',3,2),
('p6',3,	False,40,0,'yes',50,3),
('p7',1,	True,35,0,'yes',15,1),
('p8',3,	True,40,0,'yes',20,2),
('p9',2,	True,20,0,'yes',17,2),
('p10',2,	True,25,0,'yes',30,2),
('p11',1,	True,20,0,'yes',40,2),
('p12',2,	True,100,0,'yes',20,2),
('p13',1,	True,125,5,'yes',16,2),
('p14',1,True,30,0,'yes',15,2),
('p15',2,	True,30,0,'no',6,1),
('p16	',1,True,10,0,'yes',12,1),
('p17',3,	True,30,0,'yes',9,1),
('p18',1,True,20,0,'no',10,1),
('p19',1,True,20,0,'yes',20,2),
('p20',1,True,36,2,'yes',6,1);

select * from product_details;

-- ----------------------------------------------------------------------------------------------------------------------------------------------

-- address table 

-- creating table

CREATE TABLE address(
addr_type varchar(100),add1 varchar(100),add2 varchar(100),
city varchar(50),state varchar(50),pin int,country varchar(50),
cust_id int,
FOREIGN KEY (cust_id) REFERENCES customer(cust_id));

desc address;

-- Inserting values

INSERT INTO address VALUES
('Residential','Kavuri Incor9, B-Block, 1st floor','','Mumbai','Maharshtra',230532,'India',101),
('office','ARTY RECORDS NASIK ROAD CAMP','','Nasik','Maharshtra',422008,'India',102),
('Residential','sanghvii block Incor9, B-Block, 1st floor','','Hyderabad','Telangana',500081,'India',103),
('Residential','exoctica, dahisar east','','Mumbai','Maharshtra',230532,'India',104),
('Residential','f-block kavi nagar, 1st floor','','Hyderabad','Telangana',500081,'India',105),
('Residential','bre house building,belapur 1st floor','','Navi Mumbai','Maharshtra',400001,'India',106),
('Residential','Amrapali ,305 flat ','','Mumbai','Maharshtra',230532,'India',107),
('office','vashi near central','','Navi Mumbai','Maharshtra',400001,'India',108),
('Residential','marine lines','','Mumbai','Maharshtra',230532,'India',109),
('Residential','nerul east anand vila','','Navi Mumbai','Maharshtra',400001,'India',110);

select * from address;

-- ----------------------------------------------------------------------------------------------------------------------------------------------


-- Agent table

-- creating table

CREATE TABLE Agent(
agent_id int primary key, agent_name varchar(50),
agent_type varchar(50), role varchar (50), dept_id int,
status varchar(50));

desc Agent;

-- Inserting values

INSERT INTO Agent VALUES
(10,'Arush','Distributor','Distribution Manager',111,'Active'),
(20,'piyush', 'Sales Agent','Sales Executive',112,'Active'),
(30,'krishna','Sales Agent','Sales Executive',113,'Active'),
(40,'Madhur','Sales Agent','Sales Executive',114,'Not-Active'),
(50,'Vamika','Distributor','Distribution Manager',115,'Active');

select* from Agent;


-- ----------------------------------------------------------------------------------------------------------------------------------------------
-- order_details table

-- creating table

CREATE TABLE order_details(
product_id varchar(100),p_name varchar(100),
prod_price decimal,qty int,delivery_date datetime,
delivery_number int unique,order_id varchar(100) primary key,
FOREIGN KEY (product_id) REFERENCES product(product_id));

desc order_details;

-- stored procedure
CREATE  PROCEDURE `add_order_detail`(in_pid varchar(100),in_qty int,in_del_date datetime,in_order_id varchar(20))
BEGIN
	#declarations
    declare v_del int;
    declare price decimal;
    declare p_query decimal;
    declare p_name varchar(100);
    
    
    
    #product price
    set p_query = (select product_details.price from product_details  where product_details.product_id=in_pid);
    set price = in_qty * p_query;
    
    #getting product name
    set p_name = (select product.product_name from product  where product.product_id=in_pid);
    
    
    
    #random nuber for delivery number
     set v_del = floor(rand()*4506);
    
      #add record to table 
     insert into order_details values(in_pid,p_name,price,in_qty,in_del_date,
                                 v_del,in_order_id);

END


-- Created a stored procedure to insert data

call add_order_detail('p3',4,'2021-02-12','O1');call add_order_detail('p13',2,'2021-02-12','O2');
call add_order_detail('p7',4,'2021-02-12','O3');call add_order_detail('p8',2,'2021-02-12','O4');
call add_order_detail('p15',4,'2021-02-13','O5');call add_order_detail('p1',2,'2021-02-13','O6');
call add_order_detail('p2',4,'2021-02-13','O7');call add_order_detail('p14',2,'2021-02-14','O8');
call add_order_detail('p3',4,'2021-02-14','O9');call add_order_detail('p13',2,'2021-02-14','O10');
call add_order_detail('p5',3,'2021-02-11','O11');call add_order_detail('p19',7,'2021-02-12','O12');
call add_order_detail('p20',6,'2021-02-16','O13');call add_order_detail('p8',4,'2021-02-11','O14');
call add_order_detail('p2',4,'2021-02-15','O15');


select * from order_details;

-- --------------------------------------------------------------------------------------------------------------------------------------------


-- order table

-- creating table

CREATE TABLE orders(
order_id varchar(100) unique ,product_name varchar(100), order_amt Decimal,order_Date Date,
delivery_type varchar(40),cust_id int,agent_id int,
FOREIGN KEY (cust_id) REFERENCES customer(cust_id),
FOREIGN KEY (agent_id) REFERENCES Agent(agent_id),
FOREIGN KEY (order_id) REFERENCES order_details(order_id));
 

desc orders;

-- stored procedure

CREATE PROCEDURE `add_order_info`(in_order_id varchar(100),o_date datetime,cust_id int ,agent_id int)
BEGIN

   declare pname varchar(100);
   declare o_amt varchar(100);
   declare p_dis decimal;
   declare p_query decimal;
   declare del varchar(40);
   declare o_status varchar(30);
   declare deli_date datetime;
  
    #getting product name
    set pname = (select p_name from order_details where order_id=in_order_id);

    
        
	#getting order amount
    set p_query = (select prod_price from order_details  where order_id=in_order_id);
    set p_dis = (select discount from  product_details as t1 join  order_details as t2
                  on t1.product_id = t2.product_id where order_id=in_order_id);
    set o_amt = p_query- p_dis;
    
     # order status
        set deli_date = (select delivery_date from order_details where order_details.order_id = in_order_id);
		if (day(deli_date) - day(o_date))<2
          then
			set o_status = 'One day Delivery';
            set o_amt = o_amt +120; #delivery charge
		elseif (day(deli_date) - day(o_date))>=2 then
			set o_status = 'Normal Delivery';
		end if;
        
        
    #add record to table 
     insert into orders values(in_order_id,pname,o_amt,o_date,o_status,
                                 cust_id,agent_id);
 
END

-- inserting values using stored procedure

call add_order_info('O1','2021-02-11',105,30);call add_order_info('O2','2021-01-22',103,30);
call add_order_info('O3','2021-02-1',107,20);call add_order_info('O4','2021-02-1',109,40);
call add_order_info('O5','2021-01-25',104,30);call add_order_info('O6','2021-02-9',105,20);
call add_order_info('O7','2021-02-2',107,40);call add_order_info('O8','2021-02-13',105,30);
call add_order_info('O9','2021-02-14',108,20);call add_order_info('O10','2021-02-3',101,40);
call add_order_info('O11','2021-0-8',102,30);call add_order_info('O12','2021-01-7',110,40);
call add_order_info('O13','2021-01-15',107,20);call add_order_info('O14','2021-01-10',106,30);
call add_order_info('O15','2021-02-14',101,40);

select * from orders;

-- -------------------------------------------------------------------------------------------------------------------
-- -------------------------------------------------------------------------------------------------------------------


-- --------------------------------------**DATA ANALYSIS OF THE CREATED SCEHEMA**--------------------------------------
 
 -- 1.Top 3 Products that are ordered the most
 
select p_name, count(product_id) as order_count
from order_details
group by p_name
Order by order_count desc Limit 3 ;

-- *********************************************************************************************************************

-- 2. what is the total number of sales made per catgeory

SELECT p.category, sum(order_amt) as Total_sales
FROM product as p join order_details as od join orders as o
ON p.product_id = od.product_id AND od.order_id = o.order_id
GROUP BY p.category ORDER BY Total_sales desc;

-- Interpretation:Dairy product category items are sold the most.

-- *********************************************************************************************************************

-- 3. Which city has most number of sales.alter

SELECT a.city, sum(order_amt) as Total_sales
FROM orders as o join  address as a
ON o.cust_id = a.cust_id 
GROUP BY a.city ORDER BY Total_sales desc;

-- Interpretation:Mumbai city sold highest number of products.

-- **********************************************************************************************************************

-- 4. Which are the products that to be redordered as soon as possible.(i.e reorder level = 1)

SELECT product_name, reorder_level  
FROM product_details as pd join product as p
ON pd.product_id = p.product_id
WHERE  reorder_level =  1;

-- **********************************************************************************************************************

-- 5.what is the % of married people buying the products and single people buying products

Select round(100*sum(case when marital_status = 'Married' then 1 else 0 end)/count(*),2) Married,
round(100*sum(case when marital_status = 'single' then 1 else 0 end)/count(*),2) Single
 from customer as c join orders as o 
On c.cust_id = o.cust_id;

-- **********************************************************************************************************************

-- 6.what is the % of Male and female people buying the products 

SELECT round(100*sum(case when gender = 'Male' then 1 else 0 end)/count(*),2) Male,
round(100*sum(case when gender = 'Female' then 1 else 0 end)/count(*),2) Female
FROM customer as c join orders as o 
On c.cust_id = o.cust_id;


-- **********************************************************************************************************************

-- 7.Customers who took one day delivery with their order amount

SELECT c.cust_name ,od.p_name, o.order_id,o.delivery_type,o.order_amt as 'Amount with delivery fee',
od.prod_price as ' Amount before delivery fee'
FROM customer as c join orders as o join order_details as od
On c.cust_id = o.cust_id and o.order_id = od.order_id
WHERE o.delivery_type = 'One day Delivery';

-- **********************************************************************************************************************

-- 8.Which agent took most of the orders

SELECT a.agent_name , count(o.order_id) as 'Total_orders'
FROM agent as a join orders as o
ON a.agent_id = o.agent_id
Group by o.agent_id 
Order by Total_orders desc;

#Interpretation: Agent Krishna took most of the orders.

-- **********************************************************************************************************************
-- 9.Which top 3 products which were sold in largest quantity

SELECT P_name, sum(qty) as Quantity_sold From order_details group by  P_name order by Quantity_sold desc Limit 3;

-- **********************************************************************************************************************

-- 10. Ranking customers as per their sales

select* from(
select c.cust_id, c.cust_name,o.order_id,o.order_amt,
      dense_rank() over(order by o.order_amt desc) as 'DenseRank' 
      from customer as c join orders as o
      on c.cust_id = o.cust_id)t1 
      ;

-- **********************************************************************************************************************
-- 11. Create a view for people who have ordered just once

Create view Rare_customers as(
    Select c.cust_name,count(o.cust_id) as Order_count
    from customer as c join orders as o
    on c.cust_id=o.cust_id
    group by c.cust_name having Order_count=1);
    
    
-- *********************************************************END*************************************************************


