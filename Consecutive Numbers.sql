Table: Logs

+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| id          | int     |
| num         | varchar |
+-------------+---------+
id is the primary key for this table.
id is an autoincrement column.
 

Write an SQL query to find all numbers that appear at least three times consecutively.

Return the result table in any order.


SQL QUERY FOR ABOVE STATEMENT:

SELECT Distinct a.num AS ConsecutiveNums
FROM logs a
JOIN logs b ON a.id=b.id+1 AND a.num=b.num
JOIN logs c ON a.id =c.id+2 AND a.num=c.num
