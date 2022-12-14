use hospital;

select count(doctor_name) from doctor;

select count(patient_name) from patient;

select sum(expirience) from doctor;

select sum(doctor_rank) from doctor;

select upper(doctor_name) from doctor
where lower(address) = 'dd'; 

select * from doctor
group by doctor_rank;

select * from doctor
group by doctor_rank,expirience;

select * from doctor
group by doctor_rank having(expirience > 4);

select sum(expirience) from doctor
having sum(expirience + doctor_rank) > 10;

select * from doctor
order by expirience desc;

insert into doctor values(7,'g','g','g','ggg',8,8,'gg');

update doctor set expirience = 10 where doctor_id = 5;

delete from doctor where doctor_id = 7;
