Table: Tree

+-------------+------+
| Column Name | Type |
+-------------+------+
| id          | int  |
| p_id        | int  |
+-------------+------+
id is the primary key column for this table.
Each row of this table contains information about the id of a node and the id of its parent node in a tree.
The given structure is always a valid tree.
 

Each node in the tree can be one of three types:

"Leaf": if the node is a leaf node.
"Root": if the node is the root of the tree.
"Inner": If the node is neither a leaf node nor a root node.
Write an SQL query to report the type of each node in the tree.

Return the result table ordered by id in ascending order.


SQL QUERY FOR ABOVE STATEMENT:


SELECT id,'Root' AS Type
FROM
    tree
WHERE
    p_id IS NULL
UNION

SELECT id ,'Leaf'AS Type
FROM
    tree
WHERE
    id NOT IN (SELECT DISTINCT 
              p_id
              FROM 
                  tree
              WHERE
                  p_id IS NOT NULL)
              AND p_id IS NOT NULL
 UNION
 
 SELECT id,'Inner'AS Type
 FROM
     tree
 WHERE
    id IN(SELECT DISTINCT 
              p_id
              FROM 
                  tree
              WHERE
                  p_id IS NOT NULL)
              AND p_id IS NOT NULL
              
              
ORDER BY id;
