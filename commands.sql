--Basic Syntax 

SELECT <column1> , <column2> FROM table_name WHERE <condition1> <condition2> 

--MySql SELECT 
SELECT * FORM CUSTOMERS;     --  note {customer is a table }
SELECT City,Address FROM CUSTOMERS; --note (city and address is a content of customers)
SELECT DISTINCT Country FROM CUSTOMERS;     --note (DISTINCT is for selceting all coloums in country)

--MySql WHERE

SELECT * FROM CUSTOMERS WHERE City="Berlin"; -- a {is qual to}
SELECT * FROM CUSTOMERS WHERE Price > 30;    -- { select the values that price is greater than 30 }
SELECT * FROM CUSTOMERS WHERE Price < 30;    -- {select the values that price is less than 30 }
SELECT * FROM CUSTOMERS WHERE Price >=30;    -- {the price is greater than equal to 30}
SELECT * FROM CUSTOMERS WHERE Price <=30;    -- {the price is less than equal to 30}
SELECT * FROM CUSTOMERS WHERE Price <>30;    -- {not equal to 30 }
                                             -- { Note: In some versions of SQL this operator may be written as !=}
SELECT * FROM CUSTOMERS WHERE Price BETWEEN 45 AND 60; --{select price between 45 to 60}
SELECT * FROM CUSTOMERS WHERE City LIKE 'a%';  --{Finds any values that start with "a"} 
SELECT * FROM CUSTOMERS WHERE City IN ('paris','london'); -- {we need city is paris on london}

--MySql AND OR NOT 

SELECT * FROM CUSTOMERS WHERE NOT Price=18;     --{ price is not 18}
SELECT * FROM CUSTOMERS WHERE City='Berlin'AND PoatalCode=12209;  --{printing to condition at same time}
SELECT * FROM CUSTOMERS WHERE City='Berlin' OR City='London'; --or operator for selecting condition in one column.

--MySql ORDER BY Keyword

SELECT * FROM CUSTOMERS ORDER BY Country;        -- {its used to sort the result in asending and denceding order }
                                                 -- {by default its in asending order}
SELECT * FROM CUSTOMERS ORDER BY Country DESC;   -- {used when we need our output in decending order}
SELECT * FROM CUSTOMERS ORDER BY Country , City;  -- { for oredering two coloums}
SELECT * FROM Customers ORDER BY Country DESC , CustomerName ASC ; -- {for seperate operations}

--MySql INSERT INTO Statement 

INSERT INTO Customers (Customername , city , country) VALUES (mayur , pune , india ); 

--MySql NULL Values

SELECT * FROM Customers WHERE address  IS NULL;       --  {A field with a NULL value is a field with no value.}
SELECT * FROM Customers WHERE address  IS NOT NULL;  --{where addree is not null}

--MySQL UPDATE Statement 

UPDATE Customers SET ContactName = 'Alfred Schmidt', City = 'Frankfurt' WHERE CustomerID = 1;  
-- its for single records its depend on the condition of where 
UPDATE Customers SET ContactName = 'Alfred Schmidt', City = 'Frankfurt' WHERE City=Maxico;
-- you see that where statement has a condition that returns multiple times.
--more examples :--
UPDATE Customers SET City=Maxico -- its dangerous its update all
UPDATE Customers SET City=Maxico  WHERE city="Maxico"

--MySql DELETE Statement 

DELETE FROM Customers WHERE id=45;
DELETE FROM Customers WHERE CustomerName="Mayur" AND id=45;
DELETE FROM Cutomers; -- {this means its possible to delete all rows in table without deleting table}

--MySql  LIMIT Clause 

--The LIMIT clause is used to specify the number of records to return. 
SELECT * FROM Customers WHERE id=1 LIMIT 3 ;
SELECT * FROM Customers WHERE Country='Germany' AND City="Berlin" LIMIT 3 ;

--MySQL MIN() and MAX() Functions 

SELECT  MIN(CategoryID) AS minprice FROM Products;  -- finding minimun value in CategoryID 
SELECT  MAX(CategoryID) AS maxprice FROM Products;  -- finding maximum value in CategoryID
SELECT  MIN(Price) FROM Products;

--MySQL COUNT(), AVG() and SUM() Functions .

SELECT COUNT(ProductID) From Products; -- {in simple word its count the rows of the table}
                                       -- The COUNT() function returns the number of rows that matches a specified criterion
SELECT AVG(Price) FROM Products;       -- {finding average of price column}
SELECT SUM(Quantity) FROM Products;    -- {finding sum of all column}
SELECT COUNT(*) FROM Products WHERE Price=18;

--MySQL LIKE Operator 

WHERE CustomerName WHERE CustomerName LIKE 'a%'    --	Finds any values that start with "a"
WHERE CustomerName WHERE CustomerName LIKE '%a'    --	Finds any values that end with "a"
WHERE CustomerName WHERE CustomerName LIKE '%or%' 	--  Finds any values that have "or" in any position
WHERE CustomerName WHERE CustomerName LIKE '_r%' 	--  Finds any values that have "r" in the second position
WHERE CustomerName WHERE CustomerName LIKE 'a_%' 	--  Finds any values that start with "a" and are at least 2 characters in length
WHERE CustomerName WHERE CustomerName LIKE 'a__%' 	--  Finds any values that start with "a" and are at least 3 characters in length
WHERE ContactName  WHERE CustomerName LIKE 'a%o' 	--  Finds any values that start with "a" and ends with "o" 

--more example 
SELECT * FROM Customers WHERE City LIKE "a%" -- {find values that start with a}
SELECT * FROM Customers WHERE City LIKE "%a" -- {find values that end with a}
SELECT * FROM Customers WHERE City LIKE "%a%" -- {find values that City column contains the letter "a".} --imp
SELECT * FROM Customers WHERE City LIKE "a%b" --{records that start with "a" and end with "b"}
SELECT * FROM Customers WHERE City NOT LIKE "a%" -- {the records does not start with a}


--MySQL Wildcard Characters 
--its easy we learn already about character(% , _)

SELECT * FROM Customers WHERE City LIKE 'b_%';
SELECT * FROM Customers WHERE City LIKE '_ondon';

-- MySQL IN Operator
--using IN operator we can select multiple values in where  condition.

SELECT * FROM Customers WHERE City IN ('germony' ,'london', 'poland' , 'india');
SELECT * FROM Customers WHERE City  NOT IN ('germony' ,'london', 'poland' , 'india');
SELECT * FROM Customers WHERE Country IN ('Norway' , 'France');

--MySQL BETWEEN Operator 

SELECT * FROM Customers WHERE Price BETWEEN 10 AND 20;
SELECT * FROM Customers WHERE Price NOT BETWEEN 10 AND 20;
SELECT * FROM Products  WHERE ProductName BETWEEN 'Geitost' AND 'Pavlova' ORDER BY ProductName DESC;

--MySQL Aliases 
--Aliases are used to give a table, or a column in a table, a temporary name.

SELECT CustomerID AS ID, CustomerName AS Customer FROM Customers;
SELECT * FROM Customers AS Consumers;

--MySql Joins 
--{in that we can can able to join the two tables} 
-- so its not related to that we want to learn so i skip this part.


--MySql UNIONS 

-- { The UNION operator is used to combine the result-set of two or more SELECT statements.}
SELECT Country FROM Customers UNION SELECT Country FROM Suppliers; 

-- {The UNION operator selects only distinct values by default. To allow duplicate values, use UNION ALL:}
SELECT Country FROM Customers UNION ALL SELECT Country FROM Suppliers; 

--more example 
SELECT City, Country FROM Customers
WHERE Country='Germany'
UNION
SELECT City, Country FROM Suppliers
WHERE Country='Germany'
ORDER BY City;




























