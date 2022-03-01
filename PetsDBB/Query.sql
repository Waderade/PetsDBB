USE [Pets Database];
GO
CREATE TABLE Owner_ (
	Owner_ID	INT NOT NULL,
	Title		NVARCHAR(20),
	FirstName	NVARCHAR(50) NOT NULL,
	MiddleInitial	NCHAR(1),
	LastName	NVARCHAR(50) NOT NULL,
	HouseUnitLotNum	NVARCHAR(5) NOT NULL,
	Street		NVARCHAR(50) NOT NULL,
	Suburb		NVARCHAR(50) NOT NULL,
	State_		NVARCHAR(3) NOT NULL,
	PostCode	NCHAR(4) NOT NULL,
	HomePhone	NCHAR(10),
	MobilePhone	NCHAR(10),	
	DateOfBirth	DATE NOT NULL,
	Gender		NCHAR(20) NOT NULL,	
	Pet_ID		INT,
	CONSTRAINT Owner__pk PRIMARY KEY (Owner_ID)
);
GO
CREATE TABLE Pet (
	Pet_ID		INT NOT NULL,
	Name_	NVARCHAR(50) NOT NULL,
	Species	NVARCHAR(50) NOT NULL,
	Weight_	NVARCHAR(5) NOT NULL,
	Colour  NVARCHAR(15) NOT NULL,
	CONSTRAINT Pet_pk PRIMARY KEY (Pet_ID)
);
GO
	ALTER TABLE Owner_	
	ADD CONSTRAINT fk_Pet_Pet_ID
		FOREIGN KEY (Pet_ID) 
		REFERENCES Pet(Pet_ID);
GO

INSERT INTO Pet(Pet_ID, Name_, Species, Weight_, Colour)
VALUES (354,'Max','Dog', '9','Black and White')

INSERT INTO Owner_(Owner_ID, Title, FirstName, MiddleInitial, LastName, HouseUnitLotNum, Street, Suburb, State_, PostCode, HomePhone, MobilePhone, DateOfBirth, Gender, Pet_ID)
VALUES (1, 'Mr', 'Optimus','N','Prime','20', 'Testing Street','Melbourne', 'Vic','2000','60433854','0422378934', '01-01-0001', 'AutoBot', 354);
GO

