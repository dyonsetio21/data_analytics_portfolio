--- JAWAB SOAL
-- 1. Top 3 customers based on orders
select
	c.first_name,
    c.last_name,
    sum(o.total_amount) as total_order_amount
from customers as c
join Orders as o ON o.customer_id = c.customer_id
group by c.customer_id
order by total_order_amount desc
limit 3
;

-- 2. Average order value per customer
select
	c.first_name,
    c.last_name,
    avg(total_amount) as average_order
from customers as c
join orders o ON c.customer_id = o.customer_id
group by c.customer_id
;

-- 3. Employee with >4 resolved support ticket
select
	e.first_name,
    e.last_name,
    count(s.ticket_id) as resolved_ticket
from employees as e
join supporttickets as s ON e.employee_id = s.employee_id
where s.status = 'resolved'
group by e.employee_id
having count(s.ticket_id)>4
;

-- 4. Products never ordered
select
	p.product_name
from products as p
left join orderdetails as od ON od.product_id = p.product_id
where od.order_id is null
;

-- 5. Total revenue
select
	sum(quantity*unit_price) as total_revenue
from orderdetails as od
;

-- 6. Average price per product category
with cte_avg_price as (
select
	p.category,
    avg(price) as average
from products as p
group by category
)
select * 
from cte_avg_price
where average>500
;

-- 7. Customers who have ordered more than 1000
select *
from customers
where customer_id in 
(select
	customer_id
from 
	orders
where total_amount>1000
)
;
