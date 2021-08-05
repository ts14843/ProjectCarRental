create table CarReg(CarNo int primary key,Company nvarchar(50),
Model nvarchar(50),Availabe nvarchar(3))

create table Customer(CustId int primary key,CustName nvarchar(50) 
, CustAdd nvarchar(100),CustNumber nvarchar(10))

create table Rent(RentId int primary key, CarNo int foreign key references CarReg,
CustId int foreign key references Customer,StartDate datetime,EndDate datetime)

create table ReturnCar(RentId int foreign key references Rent,CarNo int foreign key references CarReg,
CustId int foreign key references Customer,DayOfReturn datetime,Fees float)

