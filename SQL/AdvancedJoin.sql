1. Projects

SET @lag_date=(SELECT MIN(end_date) FROM projects);
SET @grp_date=(SELECT MIN(end_date) FROM projects);

SELECT start_date, end_date FROM
(SELECT 
	MIN(start_date) AS start_date, MAX(end_date) AS end_date
 FROM    
	(SELECT start_date, end_date,
            	CASE WHEN DATEDIFF(end_date, @lag_date) <> 1 THEN @grp_date:=@lag_date 
           	ELSE @grp_date:=@grp_date END as grp_date, 
		@lag_date:=end_date
    	FROM    projects ORDER BY start_date) AS projects 
	GROUP BY grp_date) projects
ORDER BY DATEDIFF(end_date, start_date), start_date;


2. Placements

SELECT name FROM (SELECT  s.id, s.name, f.friend_id, p.salary
FROM    students s
JOIN    friends f ON s.id = f.id
JOIN    packages p ON s.id = p.id) t JOIN packages p ON t.friend_id = p.id AND t.salary < p.salary ORDER BY p.salary;


3. 
