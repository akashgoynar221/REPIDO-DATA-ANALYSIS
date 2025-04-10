
create database repido;
use  ola;

show databases;
show tables;

select*from repido;

select Booking_status 
from bookings;

SELECT*FROM book46;
Alter table  book46
drop column MyUnknownColumn;

/*ques1*/
select COUNT(Booking_Status)
from book46
where Booking_Status="Success" ;

/*ques2*/
select Vehicle_Type, count(Ride_Distance) from book46 group by  Vehicle_Type;
select Vehicle_Type, avg(Ride_Distance) from book46 group by  Vehicle_Type;

/*ques3*/
select COUNT(Booking_Status)
from book46
where Booking_Status="Canceled by Customer" ;

/*ques4*/
select Customer_ID,count(Booking_ID) as total_rides from book46  
group by(Customer_ID)
order by (total_rides) desc limit 5 ;

/*ques 5*/
select count(Canceled_Rides_by_Driver) 
from book46  where Canceled_Rides_by_Driver="Personal & Car related issue";

 
 /*ques 6*/
 select *
 from book46
 where Vehicle_Type='Prime Sedan' ;
 
 /*QUES 7*/
 SELECT count(Payment_Method) from book46 WHERE Payment_Method='UPI';
 
 /* ques 8*/
 
 select Vehicle_Type,avg(Customer_Rating)
 from book46
 group by Vehicle_Type;
 
 /*QUES 9*/
 create view complete1_rides as
 SELECT sum(Booking_Value)
 FROM book46 where Booking_Status="Success";
 
 select count(Booking_ID)from book46;
 
 
 

 













