CREATE database hospital; 

create role 'doctor'@'localhost';
create role 'patient'@'localhost';
 
 grant select,insert,update,delete on hospital.* to 'doctor'@'localhost';
 grant select on hospital.* to 'patient'@'localhost';
 
 create user 'doctor1'@'localhost'  default role 'doctor'@'localhost';
 create user 'patient1'@'localhost' default role 'patient'@'localhost';
 
 drop role 'doctor'@'localhost';
 drop role 'patient'@'localhost';
 drop user 'doctor1'@'localhost';
 drop user 'patient1'@'localhost';
 
select user,host from mysql.user;

use hospital;

create table disease_history
( disease_history_id int primary key AUTO_INCREMENT,
diagnosis varchar(100) not null,
date_of_illness date not null,
date_of_cure date not null,
type_of_treatment varchar(150) not null,
operation_code int
);

create table patient
( patient_id int primary key AUTO_INCREMENT,
disease_history_id int not null unique,
patient_name varchar(45) not null,
surname varchar(90) not null,
patronomyc varchar(90) not null,
adress varchar (90) not null,
city varchar(90) not  null,
age int not null
check (age > 0),
sex varchar(10) not null
);

create table doctor
( doctor_id int primary key auto_increment,
doctor_name varchar(45) not null,
surname varchar(90) not null,
patronomyc varchar(90) not null,
job_title varchar(50) not null,
expirience int
check (expirience > 0),
doctor_rank varchar(100),
address varchar(100)
);

create table operation
( operation_id int primary key auto_increment,
doctor_id int not null,
operation_description varchar(200),
date_of_operation date not null,
operation_result varchar(200) not null 
);

create table treatment_sheet
( treatment_sheet_id int primary key auto_increment,
patient_id int not null,
doctor_id int not null,
date_of_treatment date not null,
disease varchar(150) not null,
medicines varchar(100) not null,
temperature double,
pressure double,
patient_status varchar(200)  not null
);

create table doctor_disease_history
(
doctor_id int,
disease_history_id int,
primary key(doctor_id ,disease_history_id)
);

create table patient_operation
(
patient_id int,
operation_id int,
primary key (patient_id,operation_id)
);

alter table patient add constraint patient_fk1 foreign key (disease_history_id) references disease_history(disease_history_id);

alter table treatment_sheet add constraint treatment_sheet_fk1 foreign key (patient_id) references patient(patient_id);

alter table treatment_sheet add constraint treatment_sheet_fk2 foreign key (doctor_id) references doctor(doctor_id);

alter table operation add constraint operation_fk1 foreign key (doctor_id) references doctor(doctor_id);

alter table doctor_disease_history add constraint doctor_disease_history_fk1 foreign key (doctor_id)
 references doctor(doctor_id);
alter table doctor_disease_history add constraint doctor_disease_history_fk2 foreign key (disease_history_id)
 references disease_history(disease_history_id);

alter table patient_operation add constraint patient_operation_fk1 foreign key (patient_id) references patient(patient_id);
alter table patient_operation add constraint patient_operation_fk2 foreign key (operation_id) references operation(operation_id);



