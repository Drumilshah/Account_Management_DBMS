CREATE SCHEMA AccountingSystem;

SET search_path TO AccountingSystem,public;
--Create Types Queries--
CREATE TYPE FinalAccount AS ENUM (
'Trading Account',
'Profit and Loss Account',
'Balance Sheet'
);

--Create Table Queries--
CREATE TABLE Country (
 CountryId SERIAL PRIMARY KEY,
 CountryName varchar UNIQUE
);

CREATE TABLE State (
 StateId SERIAL PRIMARY KEY,
 StateName varchar,
 CountryId int REFERENCES Country(CountryId)
);

CREATE TABLE City (
 CityId SERIAL PRIMARY KEY,
 CityName varchar,
 StateId int REFERENCES State(StateId)
);

Create Table Company (
CompanyID varchar(20) PRIMARY KEY,
CompanyName varchar(50) NOT NULL UNIQUE,
GSTIN varchar(15) NOT NULL UNIQUE,
AddresLine1 varchar(300),
AddresLine2 varchar(300),
Pincode varchar(6) ,
CityID INT REFERENCES City(CityID) ON DELETE RESTRICT ON UPDATE CASCADE
NOT NULL,
Logo varchar(50)
);

CREATE TABLE COMPANY_ContactNumber (
CompanyID varchar(20) REFERENCES COMPANY(CompanyID) ON DELETE CASCADE
ON UPDATE CASCADE NOT NULL,
ContactNumber decimal(10,0) UNIQUE
);

CREATE TABLE AccountGroup(
 AccountGroupId varchar(20) PRIMARY KEY,
 Header boolean NOT NULL,
 ShowIn FinalAccount NOT NULL,
 Name varchar(50) NOT NULL,
 CompanyId varchar(20) NOT NULL REFERENCES Company(CompanyId) ON DELETE
CASCADE ON UPDATE CASCADE
);

CREATE TABLE Account(
 AccountId varchar(20) PRIMARY KEY,
 AccountName varchar(50) NOT NULL,
 Description varchar(300),
 AccountGroupId varchar(20) NOT NULL REFERENCES AccountGroup(AccountGroupId) ON
DELETE RESTRICT ON UPDATE CASCADE
);

CREATE TABLE ItemGroup (
 ItemGroupID varchar(20) PRIMARY KEY,
 Category varchar(100) NOT NULL UNIQUE,
 CompanyID varchar(20) NOT NULL REFERENCES Company(CompanyID) ON UPDATE
CASCADE ON DELETE CASCADE,
 ParentItemGroupID varchar(20) REFERENCES ItemGroup(ItemGroupID) ON UPDATE
CASCADE ON DELETE CASCADE,
 --One Company has its own set of UNIQUE Categories--
 UNIQUE(Category, CompanyID)
);
CREATE TABLE Item (
 ItemID varchar(20) PRIMARY KEY,
 ItemName varchar(100) NOT NULL,
 Barcode varchar(40),
 Price numeric(15,2),
 --Shifting the Items belonging to a Category to 'Other' Category when its own Category is deleted--
 ItemGroupID varchar(20) DEFAULT 'OTH01' NOT NULL REFERENCES
ItemGroup(ItemGroupID) ON UPDATE CASCADE ON DELETE SET DEFAULT,
 --One Category has its own set of UNIQUE Items--
 UNIQUE(ItemName, ItemGroupID)
);

CREATE TABLE PurchaseInvoice(
 ReceiptID int,
 Date date NOT NULL,
 AccountID varchar(20) NOT NULL REFERENCES Account(AccountID) ON DELETE
RESTRICT,
 CompanyID varchar(20) NOT NULL REFERENCES Company(CompanyID) ON DELETE
CASCADE ON UPDATE CASCADE,
PRIMARY KEY (ReceiptID, CompanyID)
);

CREATE TABLE PurchaseItem(
 ReceiptID int NOT NULL,
CompanyID varchar(20),
 ItemID varchar(20) NOT NULL REFERENCES Item(ItemID) ON DELETE RESTRICT ON
UPDATE CASCADE,
 Amount decimal(15,2) NOT NULL,
 Qty real NOT NULL CHECK(Qty>0),
FOREIGN KEY (ReceiptID, CompanyID) REFERENCES PurchaseInvoice(ReceiptID,
CompanyID) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE SalesInvoice(
 InvoiceId int,
 Date date NOT NULL,
 AccountID varchar(20) NOT NULL REFERENCES Account(AccountID) ON DELETE
RESTRICT ON UPDATE CASCADE,
 CompanyID varchar(20) NOT NULL REFERENCES Company(CompanyID) ON DELETE
CASCADE ON UPDATE CASCADE,
 PRIMARY KEY (InvoiceId, CompanyID)
);

CREATE TABLE SalesItem(
 InvoiceId int NOT NULL,
CompanyID varchar(20),
 ItemId varchar(20) NOT NULL REFERENCES Item(ItemID) ON DELETE RESTRICT ON
UPDATE CASCADE,
 Amount decimal(15,2) NOT NULL,
 Qty real NOT NULL CHECK(Qty>0),
FOREIGN KEY (InvoiceId, CompanyID) REFERENCES SalesInvoice(InvoiceId, 
CompanyID) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE FinancialTransaction(
TransactionNumber int PRIMARY KEY,
TransactionDate date NOT NULL,
TransactionDescription varchar(300)
);

CREATE TABLE FinancialTransactionEntry(
 TransactionNumber int NOT NULL REFERENCES FinancialTransaction(TransactionNumber) ON
UPDATE CASCADE ON DELETE CASCADE,
 Amount decimal(15,2),
 AccountId varchar(20) NOT NULL REFERENCES Account(AccountId) ON UPDATE CASCADE
ON DELETE RESTRICT
);

CREATE TABLE PersonalAccount(
 AccountID varchar(20) NOT NULL REFERENCES Account(AccountID) ON DELETE
RESTRICT ON UPDATE CASCADE,
 CompanyName varchar(50) NOT NULL,
 GSTIN varchar(15),
 AddressLine1 varchar(300),
 AddressLine2 varchar(300),
 Pincode varchar(6)
);

CREATE TABLE PersonalAccountContactNumber(
 AccountID varchar(20) NOT NULL REFERENCES Account(AccountID) ON DELETE
RESTRICT ON UPDATE CASCADE,
 ContactNumber decimal(10,0) NOT NULL UNIQUE
);

CREATE TABLE PersonalAccountEmail(
 AccountID varchar(20) NOT NULL REFERENCES Account(AccountID) ON DELETE
RESTRICT ON UPDATE CASCADE,
 EmailAddress varchar(100),
 PRIMARY KEY(AccountID, EmailAddress)
);

CREATE TABLE RealAccount(
 AccountID varchar(20) NOT NULL REFERENCES Account(AccountID) ON DELETE
RESTRICT ON UPDATE CASCADE
);

CREATE TABLE NominalAccount(
 AccountID varchar(20) NOT NULL REFERENCES Account(AccountID) ON DELETE
RESTRICT ON UPDATE CASCADE
);
ALTER TABLE company_ContactNumber ALTER COLUMN
contactNumber SET NOT NULL;