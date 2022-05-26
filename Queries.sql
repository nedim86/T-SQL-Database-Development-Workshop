
/* DATABASE DEVELOPMENT - Od ideje do realizacije */




-- UPIT 1
SELECT * FROM Product



-- UPIT 2
SELECT ProductID, 
       Name, 
	   ProductNumber, 
	   Color,
	   Weight,
	   ISNULL(Weight, 0.00) AS Weight,
	   SellStartDate,
	   CONVERT(NVARCHAR(20), SellStartDate, 104) AS EuroFormat	   
FROM Product



-- UPIT 3
SELECT pc.Name,
       COUNT(ProductID) AS ProductCount         
FROM Product AS p
JOIN ProductCategory pc
ON pc.ProductCategoryID = p.ProductCategoryID
GROUP BY pc.Name
ORDER BY ProductCount DESC



-- UPIT 4
SELECT p.ProductID,
       p.Name, 
	   COUNT(p.ProductID) AS ProductCount,
	   SUM(sod.LineTotal) AS TotalRevenue
FROM SalesOrderDetail AS sod
JOIN Product AS p
ON p.ProductID = sod.ProductID
GROUP BY Name, p.ProductID
ORDER BY TotalRevenue DESC



-- UPIT 5 (Nagradna igra)

CREATE TABLE Ucesnici
(ImePrezime nvarchar(50));



INSERT INTO Ucesnici VALUES ('Mićić Pavle')
INSERT INTO Ucesnici VALUES ('Kahrović Emina')
INSERT INTO Ucesnici VALUES ('Dženana Durak')
INSERT INTO Ucesnici VALUES ('Šljivo Dino')	
INSERT INTO Ucesnici VALUES ('Lošić Marko')	
INSERT INTO Ucesnici VALUES ('Čelebić Eldin')
INSERT INTO Ucesnici VALUES ('Elez Dragana')
INSERT INTO Ucesnici VALUES ('L Anisa')	
INSERT INTO Ucesnici VALUES ('Đemidžić Damir')	
INSERT INTO Ucesnici VALUES ('Vujinović Alija')	
INSERT INTO Ucesnici VALUES ('Husić Arijana')
INSERT INTO Ucesnici VALUES ('Delimustafic Haris')	
INSERT INTO Ucesnici VALUES ('Mrdić Miomira')
INSERT INTO Ucesnici VALUES ('Hubić Eldan')	
INSERT INTO Ucesnici VALUES ('Goran Grabež')
INSERT INTO Ucesnici VALUES ('Muslić Hana')	
INSERT INTO Ucesnici VALUES ('Hairlahović Eldin')
INSERT INTO Ucesnici VALUES ('Esmir Mustafić')
INSERT INTO Ucesnici VALUES ('Bašić Alma')
INSERT INTO Ucesnici VALUES ('Muratović Emir')
INSERT INTO Ucesnici VALUES ('Franjić Tina')
INSERT INTO Ucesnici VALUES ('Ajla')
INSERT INTO Ucesnici VALUES ('Haris Kordic')
INSERT INTO Ucesnici VALUES ('Faruk Arapovic')
INSERT INTO Ucesnici VALUES ('Amina Mevic')
INSERT INTO Ucesnici VALUES ('Kenan Kljuno')
INSERT INTO Ucesnici VALUES ('Džana Porča-Čepalo')
INSERT INTO Ucesnici VALUES ('Aleksandar Putica')
INSERT INTO Ucesnici VALUES ('Mirza Mustabasic')
INSERT INTO Ucesnici VALUES ('Anes Prentic')
INSERT INTO Ucesnici VALUES ('Nedim Dedovic')
INSERT INTO Ucesnici VALUES ('Sanja')
INSERT INTO Ucesnici VALUES ('Alen Lovic')
INSERT INTO Ucesnici VALUES ('Марко Лошић')
INSERT INTO Ucesnici VALUES ('Zlatan Ribica')
INSERT INTO Ucesnici VALUES ('Ahmed Krdžalić')
INSERT INTO Ucesnici VALUES ('Merima R')
INSERT INTO Ucesnici VALUES ('Muharem Spica')
INSERT INTO Ucesnici VALUES ('Aida Hadzic')
INSERT INTO Ucesnici VALUES ('Ernad Aganovic')
INSERT INTO Ucesnici VALUES ('Amer Čengić')		
INSERT INTO Ucesnici VALUES ('Kerim Imamović')		
INSERT INTO Ucesnici VALUES ('Eldar Demir')		
 


SELECT * FROM Ucesnici;



SELECT COUNT(*) AS UkupanBroj FROM Ucesnici



SELECT TOP 1 * FROM Ucesnici
ORDER BY NEWID()  


