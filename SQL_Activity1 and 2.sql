Create Table Nandini_activities ;  -- data base creation Activity 1

desc Nandini_activities.Testing; -- describing Table

select * from Nandini_activities.salesman ;  -- Activity 2 

create table Nandini_activities.salesman
(
salesman_id int primary key ,
name  varchar(20),
city varchar(20),
commission int
);

desc Nandini_activities.salesman;

select * from Nandini_activities.salesman order by commission asc , city desc ;

alter table Nandini_activities.salesman add grade int;

select * from Nandini_activities.salesman where city ='Paris' or  grade ='500';

update Nandini_activities.salesman set grade=500 where city ='Paris';

update Nandini_activities.salesman set name='Pierre' where name='McLyon';

-- Create a table named orders
create table Nandini_activities.orders(
    order_no int primary key, purchase_amount float, order_date date,
    customer_id int, salesman_id int);
    
    desc Nandini_activities.orders;
    
    select * from Nandini_activities.orders;
    

insert into Nandini_activities.orders values
(70001, 150.5, '2012-10-05', 3005, 5002), (70009, 270.65, '2012-09-10', 3001, 5005),
(70002, 65.26, '2012-10-05', 3002, 5001), (70004, 110.5, '2012-08-17', 3009, 5003),
(70007, 948.5, '2012-09-10', 3005, 5002), (70005, 2400.6, '2012-07-27', 3007, 5001),
(70008, 5760, '2012-08-15', 3002, 5001), (70010, 1983.43, '2012-10-10', 3004, 5006),
(70003, 2480.4, '2012-10-10', 3009, 5003), (70012, 250.45, '2012-06-27', 3008, 5002),
(70011, 75.29, '2012-08-17', 3003, 5007), (70013, 3045.6, '2012-04-25', 3002, 5001);





insert Nandini_activities.salesman values 
    (1002, 'Nail Knite', 'Paris', 13), 
    (1005, 'Pit Alex', 'London', 11), 
    (1006, 'McLyon', 'Paris', 14), 
    (1007, 'Paul Adam', 'Rome', 13),
    (1003, 'Lauson Hen', 'San Jose', 12);
    
    
