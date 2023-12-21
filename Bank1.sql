create table UserAccount(
AccountID Int  primary Key,
Name varchar(40) Not null,
Adress Varchar(50) Not Null,
BranchID char(3) not null, 
ProductID char(3) not null, 
DateOFOpening DateTime not null,
ClearBalance money,
UNClearBalance money,
Status char(1),
ISActive bit Default 1,
createdDate datetime DEFAULT(getdate()),
ModifieDate Datetime
);

create table PRODUCT (
ProductID	CHAR(2)	Primary Key,
PRODUCTNAME VARCHAR(15)	not NULL
)

create table REGION_MASTER	 (
RegionID	INTEGER	Primary Key,
REGION_NAME	CHAR(6)	NOT NULL)

create table BRANCH(
BRANCHID CHAR(3) Primary Key,
BRANCH_NAME	VARCHAR(30)	NOT NULL,
BRANCH_ADDRESS	VARCHAR(50)	NOT NULL,
RID	INT	Foreign Key references REGION_MASTER(RegionID) NOT NULL);
