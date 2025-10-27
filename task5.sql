CREATE DATABASE internship_db;
USE internship_db;

-- creating two tables-Interns & Mentors
CREATE TABLE Interns(
   intern_id INT PRIMARY KEY,
   intern_name VARCHAR(50),
   domain VARCHAR(50),
   mentor_id INT
);

CREATE TABLE Mentors(
   mentor_id INT PRIMARY KEY,
   mentor_name VARCHAR(50),
   specialization VARCHAR(50),
   experience INT
);
ALTER TABLE Interns
ADD COLUMN college varchar(50);

-- Inserting sample data
INSERT INTO Mentors (mentor_id, mentor_name, specialization, experience)
VALUES
(101, 'Ravi Kalburgi', 'Data Analytics', 5),
(102, 'Krutika Salimath', 'Digital Marketing', 4),
(103, 'Karthik Bhat', 'Web Development', 6),
(104, 'Pooja Neeralgi', 'Finance', 3);

INSERT INTO Interns (intern_id, intern_name, domain, college, mentor_id)
VALUES
(1, 'Anushree Kagadal', 'Data Analytics', 'KJC', 101),
(2, 'Kalpavruksha M', 'Digital Marketing', 'ST Joseph', 102),
(3, 'Amita Pillai', 'Finance', 'NITTE University', 104),
(4, 'Amruta K', 'Web Development', 'NIT Suratkal', NULL),
(5, 'Neha Joshi', 'Machine Learning', 'Alliance University', NULL);

-- Joins
-- Inner Join-- Returns only the rows that have matching values in both tables
-- shows only interns who has been assigned mentors.
SELECT i.intern_name, i.domain, m.mentor_name, m.specialization 
FROM Interns AS i
INNER JOIN Mentors AS m ON i.mentor_id=m.mentor_id;

-- Left Join -- Returns all rows from the left table and the matching rows from the right table.
-- 1. returns all interns even those without mentors.
SELECT 
    i.intern_name, i.domain, m.mentor_name, m.specialization
FROM Interns i
LEFT JOIN Mentors m
ON i.mentor_id = m.mentor_id;

-- 2. how many interns each mentor is handling.
SELECT 
    m.mentor_name,
    m.specialization,
    COUNT(i.intern_id) AS total_interns
FROM Mentors m
LEFT JOIN Interns i
ON m.mentor_id = i.mentor_id
GROUP BY m.mentor_id, m.mentor_name, m.specialization;

-- Right Join -- Returns all rows from the right table and the matching rows from the left table.
-- 1. returns all mentors even those who dont have interns under them.
SELECT 
    i.intern_name, i.domain, m.mentor_name, m.specialization
FROM Interns i
RIGHT JOIN Mentors m
ON i.mentor_id = m.mentor_id;

-- 2. shows mentors who dont have any interns assigned
SELECT 
    m.mentor_name,
    m.specialization,
    m.experience
FROM Interns i
RIGHT JOIN Mentors m
ON i.mentor_id = m.mentor_id
WHERE i.intern_id IS NULL;


-- Full Join ( Full Outer Join) -- Combines the results of LEFT and RIGHT joins.
-- returns all interns and mentors even unassigned ones too
SELECT 
    i.intern_name, i.domain, m.mentor_name, m.specialization
FROM Interns i
LEFT JOIN Mentors m
ON i.mentor_id = m.mentor_id

UNION

SELECT 
    i.intern_name, i.domain, m.mentor_name, m.specialization
FROM Interns i
RIGHT JOIN Mentors m
ON i.mentor_id = m.mentor_id;

-- Natural Join -- Automatically joins tables based on columns with the same name and data type.
 SELECT 
    intern_name, domain, mentor_name, specialization
FROM Interns
NATURAL JOIN Mentors;
  
-- Cross Join -- Returns the Cartesian product of both tables — every row from the first table is combined with every row from the second.
-- Returns all combinations of interns and mentors
SELECT 
    i.intern_name, m.mentor_name
FROM Interns i
CROSS JOIN Mentors m;
