---EXCEPT--------------

/* 
The conditions to execute SQL EXCEPT statement
There are a couple of conditions that have to be met before you can use the EXCEPT statement in SQL Server:

The number of columns and orders in the tables that are being used to execute the SELECT statements should be the same
The data types of the corresponding columns of both tables involved in the corresponding SELECT queries should be either the same or compatible

The SQL EXCEPT statement is one of the most commonly used statements to filter records when two SELECT statements are being used to select records.

The SQL EXCEPT statement returns those records from the left SELECT query, that are not present in the results returned by the SELECT query on the right side of the EXCEPT statement.

A SQL EXCEPT statement works very similarly to the way that the minus operator does in mathematics.
*/
DROP TABLE Books1;
DROP TABLE Books2;

CREATE OR REPLACE TABLE Books1
(
    id INT,
    name VARCHAR(50) NOT NULL,
    category VARCHAR(50) NOT NULL,
    price INT NOT NULL
 );
 
CREATE OR REPLACE TABLE Books2
(
    id INT,
    name VARCHAR(50) NOT NULL,
    category VARCHAR(50) NOT NULL,
    price INT NOT NULL
 );


INSERT INTO Books1
VALUES
(1, 'Book1', 'Cat1', 1800),
(2, 'Book2', 'Cat2', 1500),
(3, 'Book3', 'Cat3', 2000),
(4, 'Book4', 'Cat4', 1300),
(5, 'Book5', 'Cat5', 1500),
(6, 'Book6', 'Cat6', 5000),
(7, 'Book7', 'Cat7', 8000),
(8, 'Book8', 'Cat8', 5000),
(9, 'Book9', 'Cat9', 5400),
(10, 'Book10', 'Cat10', 3200);
 
INSERT INTO Books2
VALUES
(6, 'Book6', 'Cat6', 5000),
(7, 'Book7', 'Cat7', 8000),
(8, 'Book8', 'Cat8', 5000),
(9, 'Book9', 'Cat9', 5400),
(10, 'Book10', 'Cat10', 3200),
(11, 'Book11', 'Cat11', 5000),
(12, 'Book12', 'Cat12', 8000),
(13, 'Book13', 'Cat13', 5000),
(14, 'Book14', 'Cat14', 5400),
(15, 'Book15', 'Cat15', 3200);

-- It is important to mention that the last 5 records in the Books1 table and the first 5 records in the Books2 table are the same.

SELECT id, name, category, price FROM Books1
Except
SELECT id, name, category, price FROM Books2
ORDER BY ID;

SELECT id, name, category, price FROM BOOKS2
Except
SELECT id, name, category, price FROM BOOKS1
ORDER BY ID;

-- In addition to using a SQL EXCEPT statement for filtering records from two tables, an EXCEPT statement can also be used to filter records from a single table.
-- For example, the following EXCEPT statement will return all the records from the Books1 table where the price is less than or equal to 5000:

SELECT id, name, category, price FROM Books1
Except
SELECT id, name, category, price FROM Books1 WHERE price > 5000;

--EXCEPT vs NOT NULL
/* 
Now that you know how an EXCEPT statement works, it is important to understand the difference between SQL EXCEPT statement and NOT IN statement. 
There are two major differences:

The EXCEPT statement only returns the distinct records, whereas a NOT IN statement returns all the records that are not filtered by the NOT IN statement

In the EXCEPT statement, the comparison between two SELECT statements is based on all the columns in both the tables. 
While a NOT IN statement compares values from a single column
*/

-- Here is an example of how a NOT IN statement can be used to filter all records from the Books1 table, that also exist in the Books2 table:

SELECT id, name, category, price FROM Books1
WHERE id NOT IN (SELECT id from Books2)
ORDER BY ID;





