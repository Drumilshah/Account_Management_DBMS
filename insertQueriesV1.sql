SET search_path TO AccountingSystem,public;

SET search_path TO AccountingSystem;


INSERT INTO Company 
VALUES
	('C00001','Myntra','22AABCU9603R1ZX','Swastik Society Cross Rd', 'Swastik Society Navrangpura',380009,783,NULL),
('C00002','Amazon','22CCBCU9603R1ZX','G-102 Aakash complex','judges Bunglow Road',380009,783,NULL);
	
INSERT INTO AccountGroup
VALUES
    ('AG001',TRUE,'Balance Sheet','Long-Term Assets','C00001'),
    ('AG002',FALSE,'Trading Account','Sales Account','C00001'),
    ('AG003',TRUE,'Trading Account','Sales return Account','C00001'),
    ('AG004',TRUE,'Trading Account','Purchase Account','C00001'),
    ('AG005',FALSE,'Trading Account','Purchase Return','C00001'),
    ('AG006',TRUE,'Balance Sheet','Capital','C00001'),
    ('AG007',TRUE,'Balance Sheet','Short-Term Assets','C00001'),
    ('AG008',TRUE,'Balance Sheet','Debtors','C00001'),
    ('AG009',TRUE,'Profit and Loss Account','Expense','C00001'),
    ('AG010',FALSE,'Profit and Loss Account','Income','C00001'),
    ('AG011',FALSE,'Balance Sheet','Creditors','C00001'),
('AG021',TRUE,'Balance Sheet','Long-Term Assets','C00002'),
('AG022',FALSE,'Trading Account','Sales Account','C00002'),
('AG023',TRUE,'Trading Account','Sales return Account','C00002'),
('AG024',TRUE,'Trading Account','Purchase Account','C00002'),
('AG025',FALSE,'Trading Account','Purchase Return','C00002'),
('AG026',TRUE,'Balance Sheet','Capital','C00002'),
('AG027',TRUE,'Balance Sheet','Short-Term Assets','C00002'),
('AG028',TRUE,'Balance Sheet','Debtors','C00002'),
('AG029',TRUE,'Profit and Loss Account','Expense','C00002'),
('AG030',FALSE,'Profit and Loss Account','Income','C00002'),
('AG031',FALSE,'Balance Sheet','Creditors','C00002');


INSERT INTO ACCOUNT VALUES
	('E01','Salary','This account is for keeping records of salaries of employees.','AG009'),
	('I01','Rent','This account is for keeping records of amount for rent received.','AG010'),
	('C01','Capital','This account is for keeping records for capitals.','AG006'),
	('STA01','Cash','This account is for keeping records for Cash transactions','AG007'),
	('LTA01','Building','This account is for keeping records for expenditures for building','AG001'),
	('STA02','Banks','This account is for keeping records for Banks','AG007'),
	('LTA02','Printer','This account is for keeping records for printer','AG001'),
	('PURA01','Purchase','This account is for keeping records for purchases','AG004'),
	('SAL01','Sales','This account is for keeping records for sales','AG002'),
	('PRET01','Purchase returns','This account is for keeping records for purchase returns','AG005'),
	('SRET01','Sales returns','This account is for keeping records for sales returns','AG003'),
	('DEBT01','Debtors','This account is for keeping records for Debtors','AG008'),
('STA11','Cash','This account is for keeping records for Cash transactions','AG027'),
('STA12','Banks','This account is for keeping records for Banks','AG027'),
('C11','Capital','This account is for keeping records for capitals.','AG026'),
('PURA11','Purchase','This account is for keeping records for purchases','AG024'),
('SAL11','Sales','This account is for keeping records for sales','AG022'),
('PRET11','Purchase returns','This account is for keeping records for purchase returns','AG025'),
('SRET11','Sales returns','This account is for keeping records for sales returns','AG023'),
('CRED11','Creditor','This account is for keeping records for Creditors','AG031'),
('DEBT11','Debtors','This account is for keeping records for Debtors','AG028'),
('E11','Salary','This account is for keeping records of salaries of employees.','AG029'),
('E02','Electricity expenses','This account is used for keeping track of electricity expenses','AG029'),
('P02','Personal expenses','This account is used for keeping track of personal expenses','AG029'),
('T02','Travelling expenses','This account is used for keeping track of travel expenses','AG029'),
('T03','Travelling advance','This account is used for keeping track of travel advance expenses','AG029'),
('S02','Sample expenses','This account is used for keeping track of sample expenses','AG029');


INSERT INTO PersonalAccount 
VALUES
	('CRED11','Amazon','22CCBCU9603R1ZX','AG003''G-102 Aakash complex','judges Bunglow Road',380009),
	('DEBT11','Amit','22YYBCU9603R1ZX','AG003''G-102 Prime Plaza','judges Bunglow Road',380054),
	('DEBT11','Raman','WDF23U9WP3M231J','AG004''G-103 Prime Plaza','judges Bunglow Road',380054),
	('DEBT11','Surender','KO234CNWQ83W2','AG005''G-104 Prime Plaza','judges Bunglow Road',380054);

--  ERROR DETAIL:  Key (accountid)=(CRED01) is not present in table "account".
-- INSERT INTO PersonalAccount 
-- VALUES

-- ('DEBT01','Raman','WDF23U9WP3M231J','AG008''G-103 Prime Plaza','judges Bunglow Road',380054),
-- ('CRED01','M/SFitnessApparels','WDF23U9WP3M222J','AG011''G-110 Prime Plaza','judges Bunglow Road',380054);


INSERT INTO PersonalAccountContactNumber 
VALUES
	('CRED11', 6789456123),
	('DEBT11', 7990456257);

INSERT INTO PersonalAccountEmail 
VALUES
	('CRED11', 'Amazon@gmail.com'),
	('DEBT11', 'Amit890@gmail.com');

INSERT INTO RealAccount 
VALUES
	('STA01'),
	('LTA01'),
	('LTA02'),
	('PURA01'),
	('SAL01'),
	('PRET01'),
	('SRET01'),
	('STA02'),
	('PURA11'),
	('STA11'),
	('PURA11'),
	('SAL11'),
	('PRET11'),
	('SRET11'),
	('STA12'),
	('DEBT11'),
	('CRED11');

INSERT INTO NominalAccount 
VALUES
	('I01'),
	('E01'),
('E02'),
('E11'),
('C11'),
('P02'),
('T02'),
('S02'),
('T03');


INSERT INTO ItemGroup 
VALUES
	('M01','Men’s ware','C00001',NULL),
	('W01','Women’s ware','C00001',NULL),
	('T01','Traditional','C00001','W01'),
	('B01','Bottom Wear','C00001','M01'),
	('TW01','Topware','C00001','M01'),
	('FS01','Formal shirt','C00001','TW01'),
	('J01','Jeans','C00001','B01'),
	('S01','Suits','C00001','M01');

INSERT INTO Item 
VALUES
	('I00001','HRX','BA1245495050',1500,'TW01'),
	('I00002','Roadster','BA1245495050',1400,'TW01'),
	('I00003','HRX Cyan','BA1245495050',3200,'TW01');
	
	
INSERT INTO PurchaseInvoice
VALUES(1,'23-10-2020','PURA01','C00001');

INSERT INTO PurchaseItem 
VALUES
	(1,'C00001','I00001',1500,3),
	(1,'C00001','I00001',4500,5),
	(1,'C00001','I00003',3200,4),
	(1,'C00001','I00002',1400,2);

INSERT INTO SalesInvoice
VALUES(1,'20-04-2020','SAL01','C00001');


INSERT INTO SalesItem
VALUES
	(1,'C00001','I00001',2000,3),
	(1,'C00001','I00002',5000,1),
	(1,'C00001','I00003',6000,1);


INSERT INTO FinancialTransaction
VALUES
	(1, '08-10-2020', 'Invested capital'),
	(2, '08-10-2020', 'Purchased goods with cash'),
	(3, '05-09-2020', 'Sold clothes with cash'),
	(4, '15-08-2020', 'Purchased printers with cash'),
	(5, '01-04-2019', 'Invested capital'),
	(6, '03-04-2019', 'Loan Taken'),
	(7, '03-04-2019', 'Commercial Space Purchased'),
	(8, '03-04-2019', 'Purchased Furniture'),
	(9, '05-04-2019', 'Invested capital'),
	(10, '07-04-2019', 'Security Deposit paid for Electricity Board'),
	(11, '15-04-2019', 'Security Deposit paid for MTNL'),
	(12, '23-04-2019', 'Additional Furniture Purchased'),
	(13, '30-06-2019', 'Installment and Interest Paid on Bank Loan'),
	(14, '30-09-2019', 'Installment and Interest Paid on Bank Loan'),
	(15, '30-12-2019', 'Installment and Interest Paid on Bank Loan'),
	(16, '30-03-2020', 'Installment and Interest Paid on Bank Loan'),
	(17, '20-02-2020', 'Goods Purchased'),
	(18, '20-02-2020', 'Goods Sold'),
	(19, '30-03-2020', 'Electricity Bill Paid'),
	(20, '30-03-2020', 'Telephone Charges'),
	(21, '30-03-2020', 'Cartage Outwards'),
	(22, '30-03-2020', 'Travelling Expenses'),
	(23, '30-03-2020', 'Business Promotion Expenses'),
	(24, '30-03-2020', 'Maintenance Expenses'),
	(25, '31-03-2020', '5% Depreciation on Building and Furniture'),
	(26, '10-04-2020', 'Invested capital'),
	(27, '10-04-2020', 'Invested capital'),
	(28, '15-04-2020', 'Purchase of exercise machine done by cheque'),
	(29, '01-05-2020', 'Apparels Purchased'),
	(30, '01-05-2020', 'Sale of 2 treadmills against cheque'),
	(31, '01-05-2020', 'Sale of 1 exercise machine to Raman'),
	(32, '01-05-2020', 'Sale of 5 exercise cycles,2 weight bars and 2 set weights'),
	(33, '01-05-2020', 'The amount of cash sale and advance deposit in Bank'),
	(34, '01-05-2020', 'The salaries for the may month paid by cheque '),
	(35, '01-05-2020', 'The amount withdrawn for personal use '),
	(36, '01-05-2020', 'The expenses for the month of may payable '),
	(37, '01-05-2020', 'The depreciation for the month @ 10% p.a. '),
	(38, '07-08-2020', 'Invested Capital'),
	(39, '09-08-2020', 'Invested Capital'),
	(40, '10-09-2020', 'Invested Capital'),
	(41, '12-09-2020', 'Deposited cash in bank'),
	(42, '12-09-2020', 'Purchased goods'),
	(43, '13-09-2020', 'Purchased goods'),
	(44, '14-09-2020', 'Purchased goods'),
	(45, '15-09-2020', 'Purchased goods on credit'),
	(46, '12-09-2020', 'Returned goods'),
	(47, '20-09-2020', 'Sold goods'),
	(48, '21-09-2020', 'Sold goods'),
	(49, '22-09-2020', 'Sold goods'),
	(50, '23-09-2020', 'Sold goods'),
	(51, '12-09-2020', 'Debtor returned goods'),
	(52, '12-09-2020', 'Paid Salary'),
	(53, '18-06-2020', 'Electricity Expenses'),
	(54, '20-06-2020', 'Personal Expenses'),
	(55, '21-06-2020', 'Travelling Expenses'),
	(56, '25-06-2020', 'Travelling Advance'),
	(57, '28-06-2020', 'Travelling Expenses'),
	(58, '30-06-2020', 'Travelling Expenses'),
	(59, '05-07-2020', 'Advance for Machine'),
	(60, '07-07-2020', 'Raman'),
	(61, '09-07-2020', 'Personal Expenses'),
	(62, '11-07-2020', 'Bank'),
	(63, '13-07-2020', 'Telephone Expenses'),
	(64, '15-07-2020', 'Drawing'),
	(65, '17-07-2020', 'Sample Expenses');

INSERT INTO AccountGroup
VALUES
    ('AG015',FALSE,'Balance Sheet','Long Term Liabilities','C00001'),
    ('AG012',TRUE,'Profit and Loss Account','Marketing And Selling Expenses','C00001'),
    ('AG013',TRUE, 'Profit and Loss Account' ,'Financial and Other Expenses','C00001'),
    ('AG014',TRUE,'Profit and Loss Account','Office and Administration Expenses','C00001');

INSERT INTO Account 
VALUES
	('LTA03', 'Furniture and Fixtures', null, 'AG001'),
	('LTL01', 'Bank Loan', null, 'AG015'),
	('SD01','Electricity','Security Deposits for Electricity','AG011'),
	('SD02','Telephone','Security Deposits for Telephone','AG011'),
	('MSE001','Advertisement Banners','Advertisement Made Using Banners','AG012'),
	('MSE002','Carriage Outwards','Expenses Incurred on Transportation during Sales','AG012'),
	('MSE003','Travelling Expenses',null,'AG012'),
	('FOE001','Interest','Interest paid on Bank Loan','AG013'),
	('OAE001', 'Office Electricity', null  ,'AG014'),
	('OAE002', 'Telephone Charges', null  ,'AG014'),
	('OAE005', 'Salaries', null  ,'AG014'),
	('OAE006', 'Insurance', null  ,'AG014'),
	('OAE007', 'Legal Charges', null  ,'AG014'),
	('FOE002','Depreciation',null,'AG013');
	

INSERT INTO Item 
VALUES
	('I00004','Women Beige Solid Felted Shacket','BA1245495053',3000,'W01'),
	('I00005','Women Peach-Coloured Solid Lightweight Hooded Padded Down Jacket','BA1245495054',3000,'W01'),
	('I00006','Suit Felted Shacket','BA1245495053',7000,'S01'),
	('I00007','Sui Peach-Coloured Solid Lightweight Hooded Padded Down Jacket','BA1245495054',3000,'S01'),
	('I00008','Men Pink & Blue Slim Fit Striped Formal Shirt','BA1245495055',800,'FS01'),
	('I00009','Blue & Green Two-Toned Slim Fit Formal Shirt','BA1245495057',800,'FS01'),
	('I00010','Men Grey Skinny Fit Low-Rise Clean Look Stretchable Jeans','BA1245495058',5000,'J01'),
	('I00011','Men Grey Casual Fit West-Rise Smart Look Stretchable Jeans','BA1245495058',10000,'J01');

INSERT INTO PurchaseItem 
VALUES
	(1,'C00001','I00011',10000,50),
	(1,'C00001','I00005',3000,100),
	(1,'C00001','I00006',7000,100),
	(1,'C00001','I00010',5000,40);

INSERT INTO SalesItem
VALUES
	(1,'C00001','I00011',10000,100),
	(1,'C00001','I00005',3000,100),
	(1,'C00001','I00006',7000,100);
	
	
INSERT INTO AccountGroup 
VALUES
('AG017',FALSE,'Balance Sheet','Short Term Liabilities','C00001'),
('AG016',TRUE,'Profit and Loss Account','Drawings','C00001');


INSERT INTO Account 
VALUES
('DRW001','Drawings','Drawings for the different uses','AG016'),
('OAE008','Outstanding Expenses','Outstanding expenses payable in short period','AG017'),
('CRED01','Creditors','This account is for keeping records for Creditors','AG011');

select * from personalaccount;

INSERT INTO PersonalAccount 
VALUES
('DEBT01','Raman','WDF23U9WP3M231J','AG008''G-103 Prime Plaza','judges Bunglow Road',380054),
('CRED01','M/SFitnessApparels','WDF23U9WP3M222J','AG011''G-110 Prime Plaza','judges Bunglow Road',380054);


-- SECOND COMPANY

INSERT INTO ItemGroup 
VALUES
	('M11','Men’s wear','C00002',NULL),
	('W11','Women’s wear','C00002',NULL),
	('TW11','Traditional wear','C00002','W11'),
	('BW11','Bottom ware','C00002','M11'),
	('TOP11','Top wear','C00002','M11'),
	('FS11','Formal wear','C00002','TOP11'),
	('J11','Jeans Bottom wear','C00002','BW11'),
	('BL11','blazzers','C00002','M11');
select * from item;

INSERT INTO Item 
VALUES
	('I00012','Levis T-Shirt','BA1245495050',1500,'TOP11'),
	('I00013','Roadster','BA1245495050',1400,'TOP11'),
	('I00014','HRX Cyan','BA1245495050',3200,'TOP11');


select * from purchaseItem;

INSERT INTO PurchaseItem 
VALUES
	(1,'C00002','I00012',15000.0,10),
	(2,'C00002','I00013',75000.0,100),
	(3,'C00002','I00014',15000.0,20),
	(2,'C00002','I00012',75000.0,100),
	(1,'C00002','I00013',75000.0,100);

INSERT INTO PurchaseInvoice
VALUES
	(1,'12-09-2020','PURA11','C00002'),
	(2,'13-09-2020','PURA11','C00002'),
	(3,'14-09-2020','PURA11','C00002');

INSERT INTO SalesItem
VALUES
	(1,'C00002','I00001',25000.0,10),
	(2,'C00002','I00002',50000.0,100),
	(3,'C00002','I00002',10000.0,20),
	(4,'C00002','I00002',20000.0,100);

INSERT INTO SalesInvoice
VALUES
	(1,'20-09-2020','SAL11','C00002'),
	(2,'21-09-2020','SAL11','C00002'),
	(3,'22-09-2020','SAL11','C00002'),
	(4,'23-09-2020','SAL11','C00002');



INSERT INTO FinancialTransactionEntry
VALUES
(1, 40000, 'C01'),
	(1, 40000, 'STA01'),
	(2, 42600, 'PURA01'),
	(2, -42600, 'STA01'),
	(3, 17000, 'STA01'),
	(3, 17000, 'SAL01'),
	(4, 2000, 'PURA01'),
	(4, -2000, 'STA01'),
	(5, 300000, 'STA02'),
	(5, 300000, 'C01'),
	(6, 300000, 'STA02'),
	(6, 300000, 'LTL01'),
	(7, 500000, 'LTA01'),
	(7, -500000, 'STA02'),
	(8, 75000, 'LTA03'),
	(8, -75000, 'STA02'),
	(9, 200000, 'STA02'),
	(9, 200000, 'C01'),
	(10, 5000, 'SD01'),
	(10, -5000, 'STA02'),
	(11, 2000, 'SD02'),
	(11, -2000, 'STA02'),
	(12, 10000, 'LTA03'),
	(12, -10000, 'STA02'),
	(13, -15000, 'LTL01'),
	(13, 9000, 'FOE001'),
	(13, -24000, 'STA02'),
	(14, -15000, 'LTL01'),
	(14, 8550, 'FOE001'),
	(14, -23550, 'STA02'),
	(15, -15000, 'LTL01'),
	(15, 8100, 'FOE001'),
	(15, -23100, 'STA02'),
	(16, -15000, 'LTL01'),
	(16, 7650, 'FOE001'),
	(16, -22650, 'STA02'),
	(17, 1700000, 'PURA01'),
	(17, -1700000, 'STA02'),
	(18, 2000000, 'STA02'),
	(18, 2000000, 'SAL01'),
	(19, 40000, 'OAE001'),
	(19, -40000, 'STA02'),
	(20, 50000, 'OAE002'),
	(20, -50000, 'STA02'),
	(21, 60000, 'MSE002'),
	(21, -60000, 'STA02'),
	(22, 45000, 'MSE003'),
	(22, -45000, 'STA02'),
	(23, 5000, 'MSE001'),
	(23, -5000, 'STA02'),
	(24, 25000, 'LTA03'),
	(24, -25000, 'STA02'),
	(25, 33500, 'FOE002'),
	(25, -25000, 'LTA01'),
	(25, -8500, 'LTA03'),
	(26, 200000, 'STA01'),
	(26, 200000, 'C01'),
	(27, 1000000, 'STA02'),
	(27, 1000000, 'C01'),
	(28, 75000, 'PURA01'),
	(28, -75000, 'STA02'),
	(29, 25000, 'PURA01'),
	(29, 25000, 'CRED01'),
	(30, 47500, 'STA02'),
	(30, 47500, 'SAL01'),
	(31, 23750, 'DEBT01'),
	(31, 23750, 'SAL01'),
	(32, 27075, 'STA01'),
	(32, 27075, 'SAL01'),
	(33, 28075, 'STA01'),
	(33, -28075, 'STA02'),
	(34, 15000, 'E01'),
	(34, -15000, 'STA02'),
	(35, 10000, 'DRW001'),
	(35, -10000, 'STA01'),
	(36, 2000, 'OAE001'),
	(36, 1000, 'OAE002'),
	(36, -3000, 'OAE008'),
	(37, 30, 'FOE002'),
	(37, -30, 'LTA03'),
	(38, 50000, 'STA11'),
	(38, 50000, 'C11'),
	(39, 100000, 'STA12'),
	(39, 100000, 'C11'),
	(40, 50000, 'STA11'),
	(40, 200000, 'STA12'),
	(40, 250000, 'C11'),
	(41, 10000, 'STA12'),
	(41, -10000, 'STA11'),
	(42, 15000, 'PURA11'),
	(42, -15000, 'STA11'),
	(43, 75000, 'PURA11'),
	(43, -75000, 'STA12'),
	(44, 5000, 'PURA11'),
	(44, -5000, 'STA12'),
	(45, 75000, 'PURA11'),
	(45, 75000, 'CRED11'),
	(46, 7500, 'CRED11'),
	(46, -7500, 'PRET11'),
	(47, 25000, 'STA11'),
	(47, -25000, 'SAL11'),
	(48, 50000, 'STA12'),
	(48, 50000, 'SAL11'),
	(49, 10000, 'STA11'),
	(49, -0000, 'SAL11'),
	(50, 20000, 'DEBT11'),
	(50, 20000, 'SAL11'),
	(51, 5000, 'SRET11'),
	(51, -5000, 'DEBT11'),
	(52, 20000, 'E11'),
	(52, -20000, 'STA11'),
	(53, 2000, 'E02'),
	(53, -2000, 'STA11'),
	(54, 5000, 'P02'),
	(54, -5000, 'STA11'),
	(55, 2500, 'T02'),
	(55, -2500, 'STA11'),
	(56, 5000, 'T02'),
	(56, -5000, 'STA11'),
	(57, 4750, 'T02'),
	(57, 250, 'STA11'),
	(57, -5000, 'T03'),
	(58, 5500, 'T02'),
	(58, 500, 'STA11'),
	(58, -5000, 'T03'),
	(59, 25000, 'T02'),
	(59, -25000, 'T03'),
	(60, 5000, 'DEBT11'),
	(60, -5000, 'T03'),
	(61, 40000, 'P02'),
	(61, -39000, 'STA11'),
	(61, -1000, 'T02'),
	(62, 29500, 'T02'),
	(62, 500, 'T02'),
	(62, -30000, 'DEBT11'),
	(63, 1000, 'T02'),
	(63, -1000, 'STA11'),
	(64, 5000, 'T02'),
	(64, -5000, 'PRET11'),
	(65, 2500, 'S02'),
	(65, -2500, 'PRET11');







