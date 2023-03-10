-- write your queries here

-- Join the two tables so that every column and record appears, regardless of if there is not an owner_id.

select *
from owners o
join vehicles v
on o.id = v.owner_id;

-- Count the number of cars for each owner. Display the owners first_name, last_name and count of vehicles. The first_name should be ordered in ascending order. 

select o.first_name, o.last_name, count(v.model) as count
from owners o
join vehicles v 
on o.id = v.owner_id
group by o.id
order by count;

-- Count the number of cars for each owner and display the average price for each of the cars as integers.

How do I round the avg(v.price) in this query: 

select o.first_name, o.last_name, round(cast(avg(v.price) as numeric),2) as average_price, count(v.model) as count 
from owners o
join vehicles v 
on o.id = v.owner_id
group by o.id
having count(v.model) > 1
and avg(v.price) > 10000
order by o.first_name desc;