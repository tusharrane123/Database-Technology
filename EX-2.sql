#1. Display the Supplier table in the descending order of CITY.
-->select city from s order by city desc;



 2.Display the Part Table in the ascending order of CITY and within the city in 
the ascending order of Part names.*/
-->

select city from p order by city,pname;



#3. Display all the Suppliers with a status between 10 and 20.*/


-->select * from s where stetus between 10 and 20;




#4. Display all the Parts and their Weight, which are not in the range of 10 and 15.
-->

select pname,weight from p where weight not between 10 and 15;



# 5. Display all the Part names starting with the letter ‘S’.
-->

select pname from p where pname like 'S%';



#6. Display all the Suppliers, belonging to cities starting with the letter ‘L’.


select sname,city from s where Sname like 'L%' OR city like 'L%';


select * from s where city like 'L%';

#7. Display all the Projects, with the third letter in JNAME as ‘n’.


select * from j where Jname like '__n%';




