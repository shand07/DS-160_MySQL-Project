use premier_products;

#1
select * from customer, order_line, orders, part, sales_rep;

#2
select last_name, first_name, sales_rep_num, city from sales_rep;

#3
select order_num, customer_num from orders; 

#4
select * from orders limit 2;

#5
select * from customer where sales_rep_num = 20;

#6
select customer_name, balance, credit_limit from customer where sales_rep_num = 20;

#7
select part_num, num_ordered, quoted_price, num_ordered*quoted_price as total_price from order_line 
where num_ordered = 1 and order_num = 21617;

#8
select * from orders where order_date between '2010-10-20' and '2010-10-22';

#9
select * from part where part_description like 'D%er';

#10
select sum(balance) as total_balance from customer;

#11
select min(balance) as minimum_balance from customer;

#12
select count(customer_name) as number_of_customers from customer;

#13
select order_num from order_line where quoted_price>500 and quoted_price<1000;

#14
select c.customer_name, s.last_name, s.first_name from customer c join sales_rep s on c.sales_rep_num = s.sales_rep_num;
