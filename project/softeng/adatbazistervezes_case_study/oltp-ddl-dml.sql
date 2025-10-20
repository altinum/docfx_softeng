
set nocount on

drop table if exists InvoiceLine
drop table if exists Payment
drop table if exists Invoice
drop table if exists Staff
drop table if exists ClientService
drop table if exists Service
drop table if exists Client
drop table if exists ServiceType
go
Create table ServiceType (ServiceTypeId int not null identity primary key, Name varchar(300) not null)
Create table Service (ServiceId int not null identity primary key, Name varchar(300) not null, Price decimal(10,2) not null, ServiceTypeId int not null foreign key references ServiceType (ServiceTypeId))
Create table Client(ClientId int not null identity primary key, Name varchar(50)not null, City varchar(50) not null, Country varchar(50) not null, Postalcode varchar(10) not null, Address varchar(300) not null, email varchar(100) not null, Phone varchar(50))
Create table ClientService(ServiceId int not null Foreign key references Service(Serviceid) , ClientId  int not null foreign key references Client(ClientId), ValidFrom date not null, ValidTo date null, Interval int not null, Constraint PK_ClientService Primary key(Clientid, ServiceId))
Create table Staff(StaffId int not null identity primary key, Name varchar(50)not null, City varchar(50) not null, Country varchar(50) not null, Postalcode varchar(10) not null, Address varchar(300) not null, email varchar(100) not null, Phone varchar(50))
Create table Invoice (InvoiceId int not null  primary key, Date date not null, DueDate date not null,  DiscountValue decimal(10,2), ClientId  int not null foreign key references Client(ClientId),  StaffId  int not null foreign key references Staff(StaffId))
Create table Payment(PaymentId int not null identity primary key, Amount decimal(10,2) not null,  ClientId  int not null foreign key references Client(ClientId), InvoiceId  int not null foreign key references Invoice(InvoiceId), StaffId int not null foreign key references Staff(Staffid))
Create table InvoiceLine (InvoiceLineId int not null identity primary key, ServiceId int not null Foreign key references Service(serviceid), InvoiceId  int not null foreign key references Invoice(InvoiceId), Unitprice decimal(10,2) not null, Quantity decimal(10,2) not null, Vat decimal(2,2))
go
/*import flat file as "sampledata" as tablename*/
Insert Servicetype (Name) values ('Placeholder')
Insert Service (name, price, servicetypeid) select distinct service_name, service_price, 1 from sampledata
Insert Client (Name, email, phone, city, country, postalcode, address) select distinct Client_name, Client_email, client_phone, 'nd.',  'nd.', 'nd.', 'nd.' from sampledata
Insert Staff (Name, email, phone, city, country, postalcode, address) select distinct staff_name, 'nd.', 'nd.', 'nd.',  'nd.', 'nd.', 'nd.' from sampledata
insert invoice (invoiceid, date, duedate, discountvalue, clientid, staffid)
select distinct invoice_id, invoice_date, due_date, isnull(discount_amount,0), c.clientid, s.staffid
from sampledata sd join client c on sd.client_name=c.name join staff s on sd.staff_name=s.name
insert invoiceline (serviceid, invoiceid, unitprice, quantity, vat)
select distinct s.serviceid, invoice_id, service_price, 1, 0 from sampledata sd join service s on sd.service_name=s.name
insert payment (ClientId, InvoiceId, StaffId, Amount)
select distinct c.clientid, invoice_id, s.staffid, payment_amount
from sampledata sd join client c on sd.client_name=c.name join staff s on sd.staff_name=s.name
where payment_amount is not null
