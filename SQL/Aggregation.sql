/*1.Revising Aggregations - The Count Function*/

SELECT COUNT(*) FROM CITY WHERE population > 100000;

/*2.Revising Aggregations - The Sum Function*/

SELECT SUM(population) FROM city where LOWER(district) = 'california';

/*3.Revising Aggregations - Averages*/

SELECT AVG(population) FROM city WHERE UPPER(district) = 'CALIFORNIA';

/*4.Average Population*/

SELECT ROUND(avg(population), 0) FROM city;

/*5.Japan Population*/

SELECT SUM(population) FROM city WHERE UPPER(countrycode) = 'JPN';

/*6.Population Density Difference*/

SELECT MAX(population) - MIN(population) FROM city;

/*7.The Blunder*/

SELECT CEIL(AVG(salary) - AVG(REPLACE(salary, '0', ''))) FROM employees;

/*8.Top Earners*/

SELECT MAX(salary * months), COUNT(*) FROM employee 
WHERE salary * months = (SELECT MAX(salary * months) FROM employee);

/*9.Weather Observation Station 2*/

SELECT ROUND(SUM(lat_n), 2), ROUND(SUM(long_w), 2) FROM station;

/*10.Weather Observation Station 13*/

SELECT ROUND(SUM(lat_n), 4) FROM station WHERE lat_n> 38.7880 AND lat_n < 137.2345;

/*11.Weather Observation Station 14*/

SELECT ROUND(MAX(lat_n), 4) FROM station WHERE lat_n < 137.2345;  

/*12.Weather Observation Station 15*/

SELECT ROUND(long_w, 4) FROM station WHERE lat_n = (SELECT MAX(lat_n) FROM station WHERE lat_n < 137.2345); 

/*13.Weather Observation Station 16*/

SELECT ROUND(MIN(lat_n), 4) FROM station WHERE lat_n > 38.7780;

/*14.Weather Observation Station 17*/

SELECT ROUND(long_w, 4) FROM station WHERE lat_n = (SELECT MIN(lat_n) FROM station WHERE lat_n > 38.7780);

/*15.Weather Observation Station 18*/

SELECT ROUND((MAX(lat_n) - MIN(lat_n)) + (MAX(long_w) - MIN(long_w)), 4) FROM station;

/*16.Weather Observation Station 19*/

SELECT ROUND(SQRT(POWER((MAX(lat_n) - MIN(lat_n)), 2) + POWER((MAX(long_w) - MIN(long_w)), 2)), 4) FROM station;
 
/*17.Weather Observation Station 20*/

SET @rowindex:=0;
SELECT ROUND(AVG(lat_n), 4) FROM (SELECT lat_n, @rowindex:=@rowindex + 1 as rownumber FROM station ORDER BY lat_n) as A
WHERE rownumber IN ( CEIL((SELECT COUNT(*)+1 FROM station)/2), FLOOR((SELECT COUNT(*)+2 FROM station)/2) ); 
