Assignment – 16

Name _ Tushar Rane.
								
Creating Tables and Indexes.
        
       
 show tables;
       

select * from salesperson;
       

-- 1) Write a command that will enable a user to pull orders grouped by date out of the
-- Orders table quickly.
	
create index i_date on orders(odate);

show indexes from orders;

========================================================================================================================================================== 
   	

2) If the Orders table has already been created, how can you force the onum field to
-- be unique (assume all current values are unique)?

-->alter table orders add primary key(onum);
   
 desc orders;
  
 
=============================================================================================================================================================
  3) Create an index that would permit each salesperson to retrieve his or her orders
-- grouped by date quickly.
	
create index i_date on orders(odate);
===========================================================================================================================================================



4) Let us assume that each salesperson is to have only one customer of a given
-- rating, and that this is currently the case. Enter a command that enforces it.
	
-->Alter table customers add primary key(rating);
    
				
										