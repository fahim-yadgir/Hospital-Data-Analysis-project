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



