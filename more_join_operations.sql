-- 7 More JOIN operations

-- 1.List the films where the yr is 1962 [Show id, title]
SELECT id, title
FROM movie
WHERE yr=1962

-- 2.When was Citizen Kane released? 
SELECT yr
FROM movie
WHERE title = 'Citizen Kane'

-- 3.List all of the Star Trek movies, include the id, title and yr (all of these movies include the words Star Trek in the title). Order results by year.
SELECT id, title, yr
FROM movie
WHERE title LIKE '%Star Trek%'
ORDER BY yr

-- 4.What id number does the actor 'Glenn Close' have?
SELECT id
FROM actor
WHERE name =  'Glenn Close'

-- 5.id for Casablanca
SELECT id
FROM movie
WHERE title = 'Casablanca'

-- 6.Cast list for Casablanca
SELECT name
FROM actor JOIN casting ON id=actorid
WHERE movieid=11768

-- 7.Obtain the cast list for the film 'Alien'     
SELECT name
FROM actor JOIN casting ON actor.id = casting.actorid JOIN movie ON casting.movieid = movie.id
WHERE title = 'Alien'

-- 8.List the films in which 'Harrison Ford' has appeared
SELECT title
FROM actor JOIN casting ON actor.id = casting.actorid JOIN movie ON casting.movieid = movie.id
WHERE name = 'Harrison Ford'

-- 9.List the films where 'Harrison Ford' has appeared - but not in the starring role.
SELECT title
FROM actor JOIN casting ON actor.id = casting.actorid JOIN movie ON casting.movieid = movie.id
WHERE name = 'Harrison Ford' AND ord!=1

-- 10.List the films together with the leading star for all 1962 films.
SELECT title, name
FROM actor JOIN casting ON actor.id = casting.actorid JOIN movie ON casting.movieid = movie.id
WHERE yr = 1962 AND ord=1