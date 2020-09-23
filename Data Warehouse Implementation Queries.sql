create Table dim_Product(
Id int identity(1,1),
ProductId varchar(20),
ProductDescription varchar(200),
UnitOfMeasurement varchar(20),
QtyInHand int,
Current_QtyInHand int,
Previous_QtyInHand int,
ProductType varchar(20),
ProductTypeDescription varchar(200),
ProductCategory varchar(20),
ProductCatDescription varchar(200)

PRIMARY KEY (Id)
)

create Table dim_Customer(
Id int identity(1,1),
CustomerId varchar(20),
SegmentId varchar(20),
SegmentName varchar(50),
Name varchar(500),
Address varchar(500),
State varchar (100),
City varchar (100),
Country varchar(100),
StartDate datetime,
EndDate datetime,

PRIMARY KEY (Id)
)




create Table dim_Date (
DateId int,
Date datetime,
Day int,
Week int,
Month int,
Year int,

Primary Key (DateId)
)

create table f_Sales (
Id int identity(1,1),
OrderId varchar(20) ,
ProductId int,
CustomerId int,
DateId int,
Qty int,
UnitPrice decimal(18,2),
TotalPrice decimal(18,2)

Primary Key (Id),
Foreign Key (ProductId) references dim_Product (Id),
Foreign Key (CustomerId) references dim_Customer (Id),
Foreign Key (DateId) references dim_Date (DateId)
)
