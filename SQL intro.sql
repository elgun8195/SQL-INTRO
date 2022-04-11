CREATE DATABASE Department
USE Department 

CREATE TABLE Employee(
Id int primary key identity,
Fullname nvarchar(255) NOT NULL,
Age tinyint NOT NULL,
Email nvarchar(255) NOT NULL UNIQUE,  --ozum maksimum 255 eledim
Salary FLOAT CHECK(Salary BETWEEN 300 AND 2000) NOT NULL
)
DROP TABLE Employee


INSERT INTO Employee
VALUES('Elgun Qocayev',19,'eloqola@gmail.com',1500),
	('Qezenfer Allahveriyev',20,'qezenfer@gmail.com',1600),
		('Cefer Abbasov',21,'Ceferbb@gmail.com', 750),
			('Ilkin Memmedov',23,'ilkinmemmedov@gmail.com',1650),
				('Salmanli Resul',22,'resul1@gmail.com',1450),
					('Jale Memmedova',18,'jalmmd@gmail.com',1900)

INSERT INTO Employee
VALUES('ehedhe',11,'qezenfeüssr@gmail.com',1110.1) 
-- yoxlanildi ki heqiqeten de email ust uste dusmur 
-- age menfi de olmur
--ve salary kesr goturur hemcinin intervali da yoxlayir


SELECT * FROM	Employee -- Butun datalari gosteri

UPDATE Employee Set Salary=2000 WHERE Id=1 --Id=1 olanin salarysini 2000 eledi

SELECT * FROM Employee   -- salarysi 500 ile 1500 arasi olan datalari gosterdi
WHERE Salary>=500 AND Salary<=1500


SELECT Fullname,Email,Salary FROM Employee   ORDER BY Salary DESC  -- salarysine gore datalari azalan sira ile Fullname,Email ve salaryni gosterdi