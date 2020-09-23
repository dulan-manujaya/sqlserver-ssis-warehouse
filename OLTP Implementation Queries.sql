create Table CustomerSegment(
SegmentId varchar(20),
SegementName varchar(50)

Primary Key (SegmentId)
)

Create Table Customer

(
CustomerId varchar(20),
Name varchar(500),
Address varchar(500),
State varchar (100),
City varchar (100),
Country varchar(100),
SegmentId varchar(20)

Primary Key (CustomerId),
Foreign Key (SegmentId) references CustomerSegment(SegmentId)
)

create Table ProductCat(
ProductCategory varchar(20),
Description varchar(200)

Primary Key (ProductCategory)
)

create Table ProductType(
ProductType varchar(20),
Description varchar(200),
ProductCategory varchar(20)

Primary Key (ProductType),
Foreign Key (ProductCategory) references ProductCat(ProductCategory),
)

create Table Product(
ProductId varchar(20),
Description varchar(200),
UnitofMeasurment varchar(20),
QtyInHand int,
ProductType varchar(20)

Primary Key (ProductId),
Foreign Key (ProductType) references ProductType(ProductType)
)


create Table OrderDetail(
OrderId varchar(20),
ProductId varchar(20),
Qty int,
UnitPrice decimal(18,2)

Primary Key (OrderId)
Foreign Key (ProductId) references Product(ProductId)
)

create table OrderHeader(
OrderId varchar(20),
Date datetime,
Customer varchar(20)

Foreign Key (OrderId) references OrderDetail(OrderId),
Foreign Key (Customer) references Customer(CustomerId),
)