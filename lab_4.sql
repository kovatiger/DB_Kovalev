use hospital;
-- 1 procedure
DELIMITER //
create procedure p2()
BEGIN
DECLARE a INT;
DECLARE str CHAR(30);
SET a = (SELECT COUNT(*) FROM doctor);
IF a >10 then SET str = 'there are more than 10 doctors';
ELSE SET str = 'there are less than 10 doctors';
select str;
END IF;
END//
DELIMITER ;
call p2();

-- 2 procedure
DELIMITER //
create procedure p3()
BEGIN
DECLARE expirience,variable1 INT;
SET expirience = (SELECT COUNT(*) FROM doctor);
SET variable1 = 0;
WHILE variable1 < expirience DO
SET variable1 = variable1 + 1;
END WHILE;
select variable1,expirience;
END//
DELIMITER ;
call p3();

-- 3 function
DELIMITER //
CREATE FUNCTION FunctCalc ( starting_value INT )
RETURNS INT
DETERMINISTIC
BEGIN
   DECLARE income INT;
   SET income = 0;
   WHILE income <= 8000 DO
   SET income = income + starting_value;
   END WHILE;
   RETURN income;
END//
DELIMITER ;

select FunctCalc(50);

-- 4 procedure
DELIMITER //
create procedure p4()
BEGIN
DECLARE a INT;
SET a = (SELECT COUNT(expirience) FROM doctor where expirience > 4);
select a;
END//
DELIMITER ;
call p4();

-- 5 procedure
DELIMITER //
create procedure p5(in param int)
BEGIN
DECLARE a INT;
SET a = (SELECT COUNT(expirience) FROM doctor where expirience > param);
select a;
END//
DELIMITER ;
call p5(6);

-- 6 procedure
DELIMITER //
create procedure p6()
BEGIN
update doctor set expirience = expirience - 2 where doctor_name = 'e';
END//
DELIMITER ;
call p6();

-- 7 procedure
DELIMITER //
create procedure p7()
BEGIN
select * from doctor where expirience > 6;
END//
DELIMITER ;
call p7();


-- 8 function

DELIMITER //
CREATE FUNCTION f8 ( a INT,b int, c char(1))
RETURNS INT
DETERMINISTIC
BEGIN
   DECLARE result INT;
   SET result = 0;
   if c = '+' then set result = a + b;
   elseif c = '-' then set result = a - b;
   end if;
   RETURN result;
END//
DELIMITER ;

select f8 (10,5,'-');










