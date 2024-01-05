create external schema schema_northwind
from data catalog 
database 'northwind' 
iam_role 'arn:aws:iam::751846707633:role/iam_role_redshift' 
create external database if not exists;


create external table schema_northwind.employees (
EmployeeID bigint ,
LastName varchar ,
FirstName varchar ,
Title varchar,
TitleOfCourtesy varchar,
BirthDate bigint,
HireDate bigint,
Address varchar,
City  varchar,
Region varchar,
PostalCode varchar,
Country varchar,
HomePhone varchar,
Extension bigint,
Notes varchar,
ReportsTo bigint,
PhotoPath varchar,
Salary FLOAT8   
)
stored as parquet 
location 's3://employeesexternaldw/';

