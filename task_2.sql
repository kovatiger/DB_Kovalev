use hospital;
-- Задание 1
-- Вывести имя доктора по фамилии
select doctor_name as 'имя доктора' from doctor
where surname = 'a';

-- Вывести ФИО доктора по опыту работы 
select doctor_name,surname,patronomyc from doctor
where expirience = 6;

-- Вывести ФИО доктора по айди
select doctor_name,surname,patronomyc  from doctor
where doctor_id = 2;

-- Вывести ФИО пациента у которого возраст 18 и пол мужской
select patient_name,surname,patronomyc from patient
where age = 18 and sex = 'm';

-- Вывести ФИО пациента мужского или женского пола
select patient_name,surname,patronomyc from patient
where sex = 'f' or sex = 'm';

-- Вывести ФИО пациента где пол не мужской
select patient_name,surname,patronomyc from patient
where not sex = 'm';

-- Вывести ФИО пациента где возраст больше 20 и пол мужской или женский
select patient_name,surname,patronomyc from patient
where age > 20 and (sex = 'f' or sex = 'm');

-- Вывести ФИО доктора где опыт работы больше 5 и стаж равен 3 или 4 года
select doctor_name,surname,patronomyc  from doctor
where expirience > 5 and (doctor_rank = 3 or doctor_rank = 4 );

-- Вывести ФИО доктора где сумма опыта работы и стажа больше 10
select doctor_name,surname,patronomyc  from doctor
where expirience + doctor_rank > 10;

-- Вывести ФИО доктора где опыт прин множесту 3,5,7
select doctor_name,surname,patronomyc  from doctor
where expirience in (3,5,7);

-- Вывести ФИО доктора где опыт не прин множесту 3,5,7
select doctor_name,surname,patronomyc  from doctor
where expirience not in (3,5,7);

-- Вывести диагноз где дата между ...
select diagnosis from disease_history
where date_of_illness between '2022-04-13' and '2022-04-15' ;

-- Вывести диагноз где дата не между ...
select diagnosis from disease_history
where date_of_illness not between '2022-04-13' and '2022-04-15' ;
 
-- Вывести ФИО доктора где назв работы заканч на а 
select doctor_name,surname,patronomyc  from doctor
where job_title like '%a';

-- Вывести ФИО доктора где назв работы состоит из 3 букв и начинается на е
select doctor_name,surname,patronomyc  from doctor
where job_title like 'e__';

-- Вывести ФИО доктора где опыт работы не налл
select doctor_name,surname,patronomyc  from doctor
where expirience is not null;








