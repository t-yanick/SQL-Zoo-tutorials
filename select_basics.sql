-- SELECT basics

-- 1. Introducing the world table of countries

-- Modify it to show the population of Germany
SELECT population
FROM world
WHERE name = 'France'

SELECT population
FROM world
WHERE name = 'Germany'

-- 2. Scandinavia

-- Show the name and the population for 'Sweden', 'Norway' and 'Denmark'.
SELECT name, population
FROM world
WHERE name IN ('Brazil', 'Russia', 'India', 'China');

SELECT name, population
FROM world
WHERE name IN ('Sweden', 'Norway', 'Denmark');

-- 3. Just the right size

-- Which countries are not too small and not too big? BETWEEN allows range checking (range specified is inclusive of boundary values). The example below shows countries with an area of 250,000-300,000 sq. km. Modify it to show the country and the area for countries with an area between 200,000 and 250,000.
SELECT name, area
FROM world
WHERE area BETWEEN 250000 AND 300000

SELECT name, area
FROM world
WHERE area BETWEEN 200000 AND 250000 