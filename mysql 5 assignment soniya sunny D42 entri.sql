create database employee_1 ;

use employee_1 ;

CREATE TABLE Country_1 (
    Id INT PRIMARY KEY,
    Country_name VARCHAR(50),
    Population INT,
    Area INT
);

INSERT INTO Country_1 (Id, Country_name, Population, Area) VALUES
(1, 'USA', 331000000, 9833520),
(2, 'India', 1380000000, 3287263),
(3, 'China', 1440000000, 9596961),
(4, 'Brazil', 213000000, 8515767),
(5, 'Russia', 145000000, 17098242),
(6, 'Japan', 126000000, 377975),
(7, 'Germany', 83000000, 357022),
(8, 'UK', 67000000, 243610),
(9, 'France', 67000000, 551695),
(10, 'Canada', 38000000, 9984670);

CREATE TABLE Persons_1 (
    Id INT PRIMARY KEY,
    Fname VARCHAR(50),
    Lname VARCHAR(50),
    Population INT,
    Rating DECIMAL(3, 2),
    Country_Id INT,
    Country_name VARCHAR(50),
    FOREIGN KEY (Country_Id) REFERENCES Country_1(Id)
);

INSERT INTO Persons_1 (Id, Fname, Lname, Population, Rating, Country_Id, Country_name) VALUES
(1, 'John', 'Doe', 300000, 4.5, 1, 'USA'),
(2, 'Jane', 'Smith', 500000, 3.9, 1, 'USA'),
(3, 'Raj', 'Kumar', 600000, 4.1, 2, 'India'),
(4, 'Ling', 'Wei', 800000, 4.7, 3, 'China'),
(5, 'Carlos', 'Mendez', 200000, 3.5, 4, 'Brazil'),
(6, 'Yuri', 'Ivanov', 150000, 4.0, 5, 'Russia'),
(7, 'Hiro', 'Tanaka', 400000, 4.6, 6, 'Japan'),
(8, 'Hans', 'Muller', 120000, 3.8, 7, 'Germany'),
(9, 'Emily', 'Clark', 70000, 4.2, 8, 'UK'),
(10, 'Pierre', 'Dupont', 100000, 3.9, 9, 'France');

SELECT LEFT(Country_name, 3) AS Short_Country_name FROM Country_1;


SELECT CONCAT(Fname, ' ', Lname) AS Full_Name FROM Persons_1;

SELECT COUNT(DISTINCT Country_name) AS Unique_Countries FROM Persons_1;

SELECT MAX(Population) AS Max_Population FROM Country_1;

SELECT MIN(Population) AS Min_Population FROM Persons_1;
select * from persons_1 where id='12' ;
SELECT * FROM persons_1 WHERE id = '11';

DELETE FROM persons_1 WHERE primary_key_column = '11';
select *from persons_1 ;

INSERT INTO Persons_1  VALUES(
11, 'Alex', NULL, 500000, 3.7, 10, 'Canada'),
(12, 'Laura', NULL, 600000, 3.6, 10, 'Canada');
select * from persons_1 ;
-- Count Lname
SELECT COUNT(Lname) AS Count_Lname FROM Persons_1;

SELECT COUNT(*) AS Total_Rows FROM Persons_1;

SELECT Population FROM Country_1 LIMIT 3;

SELECT * FROM Country_1 ORDER BY RAND() LIMIT 3;

SELECT * FROM Persons_1 ORDER BY Rating DESC;

SELECT Country_name, SUM(Population) AS Total_Population
FROM Persons_1
GROUP BY Country_name;

SELECT Country_name, SUM(Population) AS Total_Population
FROM Persons_1
GROUP BY Country_name
HAVING SUM(Population) > 50000;

SELECT Country_name, COUNT(*) AS Total_Persons, AVG(Rating) AS Average_Rating
FROM Persons_1
GROUP BY Country_name
HAVING COUNT(*) > 2
ORDER BY Average_Rating asc ;

desc country_1 ;
desc persons_1 ;

-- syntax inner join

SELECT P.Id AS Person_Id, P.Fname, P.Lname, P.Rating, C.Country_name
FROM Persons_1 AS P
INNER JOIN Country_1 AS C ON P.Country_Id = C.Id;

-- syntax left join

SELECT P.Id AS Person_Id, P.Fname, P.Lname, P.Rating, C.Country_name
FROM Persons_1 AS P
left JOIN Country_1 AS C ON P.Country_Id = C.Id;

-- syntax right join

SELECT P.Id AS Person_Id, P.Fname, P.Lname, P.Rating, C.Country_name
FROM Persons_1 AS P
left JOIN Country_1 AS C ON P.Country_Id = C.Id;

select distinct country_name from country_1
union
select distinct country_name from persons_1 ;

select country_name from country_1
union all
select country_name from persons_1 ;

select id,fname,lname ,round(rating) as rounded_rating from persons_1 ;








