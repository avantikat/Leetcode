Table: Seat

+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| id          | int     |
| student     | varchar |
+-------------+---------+
id is the primary key column for this table.
Each row of this table indicates the name and the ID of a student.
id is a continuous increment.
 

Write an SQL query to swap the seat id of every two consecutive students. If the number of students is odd, the id of the last student is not swapped.

Return the result table ordered by id in ascending order.




SQL QUERY FOR ABOVE STATEMENT:

select if(id<(select max(id) from seat), if(id%2=0,id-1,id+1),if(id%2=0,id-1,id))as id,
student from seat
order by id;
