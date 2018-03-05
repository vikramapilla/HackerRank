/* 1. Asian Population */

SELECT SUM(city.population) FROM city JOIN country on city.countrycode = country.code AND UPPER(continent) = 'ASIA';

/* 2. African Cities */

SELECT city.name FROM city JOIN country on city.countrycode = country.code AND UPPER(continent) = 'AFRICA';

/* 3. Average Population of Each Continent */

SELECT cn.continent, FLOOR(AVG(c.population)) FROM city AS c
JOIN country AS cn ON c.countrycode = cn.code
GROUP BY cn.continent;

/* 4. The Report */

SELECT 
    CASE WHEN grade < 8 THEN 'NULL' ELSE name END as sname, 
    grade, marks 
FROM students 
JOIN grades ON marks BETWEEN min_mark AND max_mark
ORDER BY grade DESC, sname, marks;

/* 5. Top Competitors */

SELECT s.hacker_id, h.name
FROM submissions s 
JOIN hackers h on s.hacker_id = h.hacker_id
JOIN challenges c ON s.challenge_id = c.challenge_id
JOIN difficulty d ON d.difficulty_level = c.difficulty_level AND s.score = d.score
GROUP BY s.hacker_id, h.name HAVING count(s.hacker_id) > 1
ORDER BY count(s.hacker_id) DESC, s.hacker_id;

/* 6. Ollivander's Inventory */

SELECT wa.id, wap.age, wa.coins_needed, wa.power
FROM wands wa JOIN wands_property wap on wa.code = wap.code
JOIN 
(	SELECT wp.age, MIN(w.coins_needed) as coins, w.power
	FROM wands w JOIN wands_property wp
	ON  w.code = wp.code AND wp.is_evil = 0
	GROUP BY wp.age, w.power
) as T on wap.age = t.age AND wa.coins_needed = t.coins and wa.power = t.power
ORDER BY power DESC, age DESC;

/* 7. Challenges */

SELECT c.hacker_id, h.name, COUNT(c.challenge_id) AS cnt
FROM challenges c
JOIN hackers h
ON h.hacker_id = c.hacker_id
GROUP BY c.hacker_id, h.name HAVING
cnt IN 	(SELECT cnt FROM
		(SELECT COUNT(c.challenge_id) AS cnt
		FROM challenges c
		GROUP BY hacker_id) aux
		GROUP BY cnt HAVING COUNT(cnt) = 1) OR 
cnt = (SELECT MAX(cnt) FROM (SELECT COUNT(c.challenge_id) AS cnt
		  FROM challenges c
		  GROUP BY hacker_id) aux)
ORDER BY cnt DESC, c.hacker_id;

/* 8. Contest Leaderboard */

SELECT a.hacker_id, h.name, SUM(a.score) AS sum
FROM
    (SELECT hacker_id, challenge_id, MAX(score) AS score
    FROM
    submissions
    GROUP BY hacker_id, challenge_id) AS a
JOIN hackers h
on h.hacker_id = a.hacker_id
GROUP BY a.hacker_id, h.name
HAVING SUM(a.score) <> 0
ORDER BY sum DESC, a.hacker_id;
