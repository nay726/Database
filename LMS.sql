create database LaunchManagementSyatem

go
use LaunchManagementSyatem
go

create table Launch
(
     Launch_Name varchar(50),
	 Launch_id int,
	 Desnination varchar(50),
	 constraint pk_Launch_id primary key(Launch_id)
);




create table Staff
(  
      Staff_Name varchar(50),
	  Staff_id int,
	  Launch_id int,
	  constraint pk_staff_id primary key(Staff_id),
	  constraint fk_Launch_id foreign key(Launch_id) references Launch(Launch_id) 
);





create table Staff_Information
(
     Staff_Name varchar(50),
	 Staff_id int,
	 Staff_phn_no bigint,
	 Staff_address varchar(100),
	 constraint pk_staff_Phn_No primary key(Staff_Phn_No),
	 constraint fk_Staff_id foreign key(Staff_id) references Staff(Staff_id)
);




create table Staff_Salary
(
Staff_id int,
Staff_age int,
Stff_salary numeric(10,3)
)



create table Passenger
(
     Launch_Name varchar(50),
	 Launch_id int,
	 Pass_name varchar(50),
	 Pass_id int,
	 constraint pk_Pass_id primary key(Pass_id),
);      


create table Passenger_Information
( 
      Pass_id int,
	  Pass_Phn_No bigint,
	  pass_mail varchar(50),
	  constraint pk_Pass_Phn_No primary key(Pass_Phn_No),
	  constraint fk_Pass_id foreign key(Pass_id) references Passenger(Pass_id)
);






create table Ticket_Management
(
	 Pass_Phn_No bigint,
	 Ticket_Price int,
	 Ticket_type varchar(50),
	 constraint fk_Pass_Phn_No foreign key(Pass_Phn_No) references Passenger_Information(Pass_Phn_No)
);      






create table Canteen
(
    Food_item varchar(50),
	Food_price int,
	Friuts_item varchar(50),
	Friuts_price int,
    constraint pk_Food_item_Friuts_item primary key(Food_item,Friuts_item)
)   




create table PassengerBuyFood
(  
     Food_item varchar(50),
	 Friuts_item varchar(50),
	 Pass_id int,
)




