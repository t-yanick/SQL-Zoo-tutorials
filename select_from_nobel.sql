-- 3 SELECT from Nobel
-- Additional practice of the basic features using a table of Nobel Prize winners.

-- We continue practicing simple SQL queries on a single table.

-- This tutorial is concerned with a table of Nobel prize winners:

-- nobel(yr, subject, winner)

-- Using the SELECT statement.

-- 1. Winners from 1950
SELECT yr, subject, winner
FROM nobel
WHERE yr = 1960
-- Change the query shown so that it displays Nobel prizes for 1950. 

SELECT yr, subject, winner
FROM nobel
WHERE yr = 1950

-- 2. Show who won the 1962 prize for Literature. 
SELECT winner
FROM nobel
WHERE yr = 1960
    AND subject = 'Physics'

SELECT winner
FROM nobel
WHERE yr = 1962
    AND subject = 'Literature'

-- 3. Show the year and subject that won 'Albert Einstein' his prize. 

SELECT yr, subject
FROM nobel
WHERE winner = 'Albert Einstein'

-- 4. Give the name of the 'Peace' winners since the year 2000, including 2000. 

SELECT winner
FROM nobel
WHERE subject = 'Peace'
    AND yr >= 2000