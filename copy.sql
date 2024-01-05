CREATE TABLE employees2 (
    employee_id smallint NOT NULL,
    last_name varchar(20) NOT NULL,
    first_name varchar(10) NOT NULL,
    title varchar(30),
    title_of_courtesy varchar(25),
    birth_date date,
    hire_date date,
    address varchar(60),
    city varchar(15),
    region varchar(15),
    postal_code varchar(10),
    country varchar(15),
    home_phone varchar(24),
    extension varchar(4),
    notes varchar(max),
    reports_to smallint,
    photo_path varchar(255),
	salary real
);



copy employees2 
from 's3://northwindocopy/employees.csv' 
CREDENTIALS 'aws_access_key_id=AKIA26DMOKGYWQZ5UO6T;aws_secret_access_key=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' 
delimiter ';' 
region 'sa-east-1'
IGNOREHEADER 1
DATEFORMAT AS 'YYYY-MM-DD HH:MI:SS'
removequotes;

