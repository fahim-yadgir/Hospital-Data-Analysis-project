use healthcare;

select * from healtcare_dataset;


select name , age , gender , medical_condition , hospital ,Billing_amount
from healtcare_dataset
where Medical_condition = 'Cancer';

select * from healtcare_dataset
where blood_type = 'A+';

select * from healtcare_dataset
where gender = 'Female';

select name , age , gender , medical_condition , test_results
from healtcare_dataset
where age >= 60;

select * from healtcare_dataset
where Admission_Type = 'Emergency';

select distinct medical_condition
from healtcare_dataset;

select count(name) as total_patient
from healtcare_dataset;

select avg(age) as avg_age
from healtcare_dataset;

select name , billing_amount
from healtcare_dataset
where billing_amount = (select max(billing_amount)
						from healtcare_dataset);
                        
select name , billing_amount
from healtcare_dataset
where billing_amount = (select min(billing_amount) from healtcare_dataset);

select medical_condition ,count(name)
from healtcare_dataset
group by medical_condition;

select Insurance_Provider , avg(billing_amount)
from healtcare_dataset
group by Insurance_Provider;

select medical_condition , max(billing_amount)
from healtcare_dataset
group by medical_condition;

select gender , count(*)
from healtcare_dataset
group by gender;

select Blood_Type , count(*)
from healtcare_dataset
group by blood_type;

select Hospital , sum(billing_amount)
from healtcare_dataset
group by hospital;

select doctor , avg(billing_amount)
from healtcare_dataset
group by doctor;

select medical_condition , count(*) as patient_count
from healtcare_dataset
group by medical_condition
having count(*) > 5000;

select hospital ,sum(billing_amount)
from healtcare_dataset
group by hospital
having sum(billing_amount) > 1000000 ;

select doctor , count(*) as patient_count
from healtcare_dataset
group by doctor
having count(*) >= 8;

select blood_type , count(*) as patient_count
from healtcare_dataset
group by blood_type
having count(*) > 5500;

select Insurance_Provider , avg(billing_amount)
from healtcare_dataset
group by Insurance_Provider
having avg(billing_amount) > 20000;

select name , billing_amount
from healtcare_dataset
order by billing_amount desc
limit 10;

select name , age, hospital
from healtcare_dataset
order by age asc;

select hospital , sum(billing_amount) as total_revenue
from healtcare_dataset
group by hospital
order by total_revenue desc;

select doctor , avg(billing_amount) as avg_billing
from healtcare_dataset
group by doctor
order by avg_billing desc;

select name ,gender,Hospital
from healtcare_dataset;

select name , age , Medical_Condition , Doctor , Insurance_Provider , Billing_Amount
from healtcare_dataset
where Billing_Amount = (select max(Billing_Amount)from healtcare_dataset);

select max(billing_amount)
from healtcare_dataset;

select name,blood_type , doctor , hospital , billing_amount
from healtcare_dataset
where blood_type = 'B-' and billing_amount > 50000;


select age , gender , medical_condition , max(blood_type)
from healtcare_dataset
group by age,gender,medical_condition;

select gender , medical_condition , max(age)
from healtcare_dataset
group by gender , medical_condition;

select * from healtcare_dataset;

select medical_condition ,max(billing_amount)
from healtcare_dataset
group by medical_condition;

select medical_condition , max(age)
from healtcare_dataset
group by medical_condition;


select medical_condition , admission_type,count(*) as total_patient
from healtcare_dataset
group by medical_condition , admission_type;

select age , blood_type , medical_condition
from healtcare_dataset
where medical_condition = 'Obesity';

-- Intermediate Questions

select * from healtcare_dataset
where billing_amount > (select avg(billing_amount) 
						from healtcare_dataset);
                        
select * from healtcare_dataset
where billing_amount = (select max(billing_Amount) from healtcare_dataset
						where billing_amount < (select max(billing_amount) from healtcare_dataset));
                        
                        
select * from healtcare_dataset
where age = (select min(age) from healtcare_dataset);

select * from healtcare_dataset
where age = (select max(age)from healtcare_dataset);

select * from healtcare_dataset
where medical_condition = (select medical_condition from healtcare_dataset
							where name = 'Bobby Jackson');
                            
                            
select * from healtcare_dataset
where doctor = (select doctor from healtcare_dataset
				where name = 'Andrew Watts');
                
-- CASE Statement

select name , billing_amount,
case
when billing_amount > 40000 then 'high'
when billing_amount > 20000 then 'medium'
else 'low'
end as billing_catogory
from healtcare_dataset;

select name , age ,
case
when age > 60 then 'Senior Citizen' 
when age > 18 then 'Adult'
end as age_categorize
from healtcare_dataset;

create view emergency_patients as
select * from healtcare_dataset
where admission_type = 'emergency';

select * from emergency_patients;

select * from healtcare_dataset;

select name , Billing_Amount,
case
when billing_amount > 0 then 'Allowed'
when billing_amount < 0 then 'Not_allowed'
end as billing_categore
from healtcare_dataset;

select * from healtcare_dataset
where billing_amount < 0 ;

create view Negative_billing_amount as
select * from healtcare_dataset
where billing_amount < 0;

select * from Negative_billing_amount;

select * from healtcare_dataset;


select name , age
from healtcare_dataset
where age = (select max(age)from healtcare_dataset
			where Medical_condition = 'Cancer');
            
select medical_condition,count(*)as patient_count
from healtcare_dataset
group by medical_condition
order by patient_count desc
limit 1;

select medical_condition ,count(*) as patient_count
from healtcare_dataset
group by medical_condition;

select name , age , medical_condition
from healtcare_dataset
where medical_condition = 'Diabetes' and
			age = (select round(avg(age))
			from healtcare_dataset);
            
select medical_condition , billing_amount
from healtcare_Dataset
where billing_amount = (select max(billing_amount) from healtcare_dataset);

select sum(billing_amount)as total_billing_amount
from healtcare_dataset;

select medical_condition , round(avg(billing_amount))
from healtcare_dataset
group by medical_condition;

select name , billing_amount
from healtcare_dataset
where billing_amount = (select max(billing_amount)from healtcare_dataset);

select name , billing_amount
from healtcare_Dataset
order by billing_amount desc
limit 5;

select name , medical_condition , Insurance_Provider
from healtcare_Dataset
where Insurance_Provider = (select max(Insurance_Provider)from healtcare_dataset);

select name , medical_condition , Insurance_Provider , billing_amount
from healtcare_dataset
where billing_amount = (select max(billing_amount) from healtcare_dataset);

select count(*)as patient_count
from healtcare_Dataset
where age = 85;

select doctor , count(*) as patient_count
from healtcare_dataset
group by doctor
order by patient_count desc
limit 1;

select hospital , count(*) as patient_count
from healtcare_dataset
group by hospital
order by patient_count desc
limit 1;

select doctor, count(*) as patient_count
from healtcare_dataset
group by doctor
having count(*) > 10;

select hospital , sum(billing_amount) as total_revenue
from healtcare_Dataset
group by hospital
order by total_revenue desc
limit 1;

select doctor , round(avg(billing_amount))
from healtcare_dataset
group by doctor;

select Admission_type , count(*) as patient_count
from healtcare_dataset
group by Admission_type;

select admission_type , max(billing_amount) as avgbilling
from healtcare_Dataset
group by Admission_type
having avgbilling > avg(billing_amount)
order by avgbilling desc
limit 1;

select medical_condition
,count(*)as patient_count
from healtcare_dataset
group by medical_condition
order by patient_count
limit 1;

select medical_condition , avg(billing_amount) as avgb
from healtcare_Dataset
group by medical_condition;

select doctor , avg(billing_amount) as avg_billing
from healtcare_dataset
group by doctor
order by avg_billing desc;

alter table healtcare_dataset
rename column ega to Age;

select medication , count(*)as patient_count
from healtcare_dataset
group by medication
order by patient_Count
limit 1;

select medication , count(*)as patient_count
from healtcare_dataset
group by medication;

select medication , round(avg(billing_amount))
from healtcare_dataset
group by medication;

select medication , 
		count(*)as patient_count
from healtcare_Dataset
where medical_condition = 'Diabetes'
group by medication
order by patient_count desc
limit 1;

select medication , count(*)as patient_Count
from healtcare_dataset
group by medication
order by patient_count asc
limit 1;

select Test_Results , count(*)as patient_count
from healtcare_Dataset
group by Test_Results;

select medical_condition , count(*) as patient_count
from healtcare_Dataset
where test_results = 'abnormal'
group by medical_condition
order by patient_count desc
limit 1;

select name , count(*) as duplicate_count
from healtcare_dataset
group by name
having count(*) > 1
order by duplicate_count desc;

select * from healtcare_Dataset
where name is null 
	or age is null
    or gender is null
    or medical_condition is null
    or billing_amount is null;
    
select name,doctor,insurance_provider,billing_amount
from healtcare_dataset
where billing_amount < 0;

select name , billing_amount
from healtcare_Dataset
where billing_Amount > (select avg(billing_amount) from healtcare_dataset);

select avg(billing_amount)from healtcare_Dataset;

select name , billing_Amount
from healtcare_dataset
where billing_amount = (select max(billing_amount)from healtcare_dataset 
						 where billing_amount < (select max(billing_amount)from healtcare_dataset));
                         
                         
select max(billing_amount)from healtcare_Dataset;


select doctor , avg(billing_amount) as avg_billing_amount
from healtcare_Dataset
group by doctor
having avg(billing_amount) > 30000
order by avg_billing_amount desc;

select name , doctor
from healtcare_dataset
where doctor = (select doctor
				from healtcare_Dataset
                where name = 'Andrew Watts');
                
select name , count(*)as patient_count
from healtcare_dataset
group by name
having count(*) > 1
order by patient_count desc;

select name , doctor
from healtcare_Dataset
where name = 'michael williams';

select * from healtcare_Dataset
where medical_condition = (select medical_condition 
							from healtcare_Dataset
                            where name = 'Bobby Jackson');
                            
select name ,billing_amount as ba,
case
when billing_amount > 50000 then 'high'
when billing_amount > 20000 then 'medium'
when billing_amount > 0 then 'low'
when billing_amount < 0 then 'not_Allowed'
end as billing_Amount
from healtcare_dataset
order by ba desc;

select hospital , sum(billing_amount) as billing_amount
from healtcare_dataset
group by hospital
order by billing_amount desc
limit 3;

select medical_condition , count(*) as patient_Count
from healtcare_Dataset
where test_results = 'abnormal'
group by medical_condition
order by patient_Count desc
limit 1;

select doctor , sum(billing_amount) as billing_amt
from healtcare_Dataset
group by doctor
order by billing_amt desc
limit 1;

select hospital , avg(billing_amount) as billing_amt
from healtcare_dataset
group by hospital
order by billing_amt desc
limit 1;


select blood_type , avg(billing_amount) as billing_amt
from healtcare_dataset
group by blood_type
order by billing_amt desc
limit 1;

select * from healtcare_dataset
where name = '';

select Insurance_Provider , sum(Billing_Amount) as billing_amt
from healtcare_dataset
group by Insurance_Provider
order by billing_amt desc
limit 3;