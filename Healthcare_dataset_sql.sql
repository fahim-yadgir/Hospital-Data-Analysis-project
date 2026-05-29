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