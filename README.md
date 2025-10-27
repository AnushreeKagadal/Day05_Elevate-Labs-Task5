# Task 5 - SQL Developer Internship (Elevate Labs)
## Topic: SQL Joins (INNER, LEFT, RIGHT, FULL, NATURAL, CROSS)

### Objective
To understand how to combine data from multiple tables using different SQL joins and explore how data relationships can be represented efficiently.

---
### Tools Used
- MySQL Workbench  

---

### Tables Created
For this task, I created two related tables:
- **Mentors** – containing mentor details such as name, specialization, and experience.  
- **Interns** – containing intern details such as name, domain, college, and assigned mentor.  

---

## Types of Joins Performed

### 1️.INNER JOIN
I started with an **INNER JOIN** to fetch only the records where both interns and mentors have matching `mentor_id`.  
This join helped me understand how related data from two tables can be combined when there’s a relationship between them.

---

### 2️.LEFT JOIN
Next, I performed a **LEFT JOIN** to display all interns, even if they don’t have a mentor assigned.  
It helped identify interns who are yet to be mapped to mentors.  

I also did an **LEFT JOIN with aggregation** to count how many interns each mentor is handling — including mentors with zero interns.

---

### 3️.RIGHT JOIN
I used **RIGHT JOIN** to list all mentors, even those who don’t have any interns assigned yet.  
This helped identify mentors who are available or not currently guiding anyone.

I also did **Right Join** to shows mentors who dont have any interns assigned using filtering.

---

### 4️.FULL OUTER JOIN
Since MySQL doesn’t directly support **FULL OUTER JOIN**, I achieved it by combining the results of both LEFT and RIGHT joins using **UNION**.  
This gave me a complete view of all mentors and interns, including those who have no matches on either side.

---

### 5️.NATURAL JOIN
Then, I explored **NATURAL JOIN**, which automatically joins tables based on common column names.  
In this case, both tables had the column `mentor_id`, so the system joined them without an explicit ON condition.

---

### 6️.CROSS JOIN
Finally, I performed a **CROSS JOIN**, which displayed all possible combinations between interns and mentors.  
It generated a Cartesian product, which can be useful in simulations or data analysis scenarios.

---

## Summary of Learnings
- Learned how to merge and analyze data from multiple related tables.  
- Understood the difference between **INNER**, **LEFT**, **RIGHT**, and **FULL** joins.  
- Explored **NATURAL JOIN** and **CROSS JOIN** for automatic matching and combinations.  
- Practiced using joins along with **aggregate functions**.  

---

All screenshots of queries and outputs are attached in the [Task 5 Document](Task_5-Joins.docx)
The SQL Script is in the file [Task5 SQL Script](task5.sql)




---

**Task Outcome:** 
Successfully demonstrated understanding and practical use of all SQL join types with real internship-related data tables.
Successfully demonstrated understanding and practical use of all SQL join types with real internship-related data tables.

