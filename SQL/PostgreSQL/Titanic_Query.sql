-- Count number of rows in data        
SELECT
COUNT(*)
FROM titanic

-- 887
------------------------------------------
-- Total of people who survived
SELECT SUM("Survived")
FROM titanic

-- 342

------------------------------------------
-- Passenger class with largest population
SELECT COUNT("Pclass") as passenger_class_count
FROM titanic
GROUP BY "Pclass"
ORDER BY "Pclass" asc 

-- passenger_class_count:
-- 216
-- 184
-- 487
-- Third class is largest = 487