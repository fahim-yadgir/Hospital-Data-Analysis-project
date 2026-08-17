create database healthcare;
use healthcare;

select * from healtcare_dataset;

alter table healtcare_dataset
rename column ï»¿Patient_name to name;

alter table healtcare_dataset
rename column `Blood Type` TO Blood_Type;

alter table healtcare_dataset
rename column `Medical Condition` to Medical_Condition;

alter table healtcare_dataset
rename column `Date of Admission` to Date_of_Admission;

alter table healtcare_dataset
rename column `Insurance Provider` to Insurance_Provider;

alter table healtcare_dataset
rename column `Billing Amount` to Billing_Amount;

alter table healtcare_dataset
modify column Age int;

select * from healtcare_dataset
where Age = '' or Age is null;

alter table healtcare_dataset
rename column `Room Number` to Room_Number;

alter table healtcare_dataset
rename column `Admission Type` to  Admission_Type;

alter table healtcare_dataset
rename column `Discharge Date` to  Discharge_Date;

alter table healtcare_dataset
rename column `Test Results` to Test_Results;

SET SQL_SAFE_UPDATES = 0;

alter table healtcare_dataset
modify column Date_of_Admission date;

DELETE FROM healtcare_dataset
WHERE Name = '' OR Name IS NULL;

alter table healtcare_dataset
modify column Age int;

alter table healtcare_dataset
modify column Date_of_Admission date;

alter table healtcare_dataset
drop column Date_of_Admission;

alter table healtcare_dataset
drop column Discharge_Date;

alter table healtcare_dataset
modify column Billing_Amount bigint;

alter table healtcare_dataset
modify column Room_Number int;

create view Runnig_total as
select *,
	sum(Billing_Amount) over (order by name)as runnig_total
from healtcare_dataset
end ;
select * from Runnig_total;

select name , age , blood_type,
sum(billing_amount) over (order by name) as blood_type_runnig
from healtcare_dataset
where blood_type = 'O-';

select * ,
sum(billing_amount)over(order by name)as runnig_total_by_gender
from healtcare_dataset
where gender = 'Female';

select * ,
sum(billing_amount) over (order by name)as total_runnig_amount_for_emergency
from healtcare_dataset
where Admission_Type = 'Emergency';

select `name`,count(*)
from healtcare_dataset
group by `name`;

delimiter $$

create procedure Update_test_result
(
in p_name varchar(100),
in P_age int,
in P_test_r varchar(100)
)
begin
update healtcare_dataset
set Test_Results = P_test_r
where `name` = p_name and Age = P_age;
select * from healtcare_dataset;
end $$
drop procedure Update_test_result;
call Update_test_result ('Bobby Jackson',30,'Abnormal');

select age , count(*)as total_count
from healtcare_dataset
group by age
order by age ;

select  age , count(*)as total_count
from healtcare_dataset
where age = 85 and billing_amount > 40000
group by age;

select age , count(*)as total_count
from healtcare_dataset
where age = 85
group by age;

select `name` , age , billing_amount 
from healtcare_dataset
where age = 85 and billing_amount > 40000;

select `name` , sum(billing_amount)as total_billing_Amount,count(*)as total_count
from healtcare_dataset
group by `name`
order by total_count desc;

select Hospital , sum(billing_amount)as total_billing,count(*)as total_Count
from healtcare_dataset
group by Hospital
order by total_Count desc;

select * from healtcare_dataset;

select `name` ,count(*)as total_count
from healtcare_dataset
where age > 54 and billing_amount > 40000 and Test_Results = 'Normal'
group by `name`
order by total_count desc;

