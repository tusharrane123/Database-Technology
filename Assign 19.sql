Assignment – 19
												
Views.
 

 use sales;

select * from orders;

select * from salesperson;





1) Create a view that shows all of the customers who have the highest ratings.

	
-->create view Vcust as select * from customers 
where rating = (select max(rating) from customers);


select * from Vcust;
===========================================================================================================================================================



2) Create a view that shows the number of salespeople in each city.
		
create view Vscity as select city,count(city) from salesperson group by city; 
	
	
select * from Vscity;
 
===========================================================================================================================================================      



3) Create a view that shows the average and total orders for each salesperson after his or her name. Assume all names are unique.

	
-->create view Vavg_tot_order as 

select distinct sname,Avg(Amt),count(onum) from orders,salesperson
where orders.snum= salesperson.snum group by salesperson.sname;
	



4) Create a view that shows each salesperson with multiple customers.

	
-->create view Vm_c as
 
select sname,cname from customers,salesperson 
where salesperson.snum=customers.Snum order by sname;

============================================================================================================================================================
    