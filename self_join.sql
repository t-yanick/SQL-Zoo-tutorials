-- 9 Self join

-- 1.How many stops are in the database.
SELECT COUNT(*)
FROM stops

-- 2.Find the id value for the stop 'Craiglockhart'
SELECT id
FROM stops
WHERE name = 'Craiglockhart'

-- 3.Give the id and the name for the stops on the '4' 'LRT' service.
SELECT id, name
FROM stops JOIN route ON id = stop
WHERE num = '4' AND company = 'LRT'

-- 4.Routes and stops
SELECT company, num, COUNT(*) AS visits
FROM route
WHERE stop=149 OR stop=53
GROUP BY company, num
HAVING visits=2

-- 5.Execute the self join shown and observe that b.stop gives all the places you can get to from Craiglockhart, without changing routes. Change the query so that it shows the services from Craiglockhart to London Road.
SELECT a.company, a.num, a.stop, b.stop
FROM route a JOIN route b ON
    (a.company=b.company AND a.num=b.num)
WHERE a.stop=53 AND b.stop=149

-- 6.The query shown is similar to the previous one, however by joining two copies of the stops table we can refer to stops by name rather than by number. Change the query so that the services between 'Craiglockhart' and 'London Road' are shown. If you are tired of these places try 'Fairmilehead' against 'Tollcross'
SELECT a.company, a.num, stopa.name, stopb.name
FROM route a JOIN route b ON
    (a.company=b.company AND a.num=b.num)
    JOIN stops stopa ON (a.stop=stopa.id)
    JOIN stops stopb ON (b.stop=stopb.id)
WHERE stopa.name='Craiglockhart' AND stopb.name='London Road'

-- 7.Give a list of all the services which connect stops 115 and 137 ('Haymarket' and 'Leith')
SELECT DISTINCT a.company, a.num
FROM route a JOIN route b ON
    (a.company=b.company AND a.num=b.num)
    JOIN stops stopa ON (a.stop=stopa.id)
    JOIN stops stopb ON (b.stop=stopb.id)
WHERE stopa.name='Haymarket' AND stopb.name='Leith'

-- 8.Give a list of the services which connect the stops 'Craiglockhart' and 'Tollcross'
SELECT DISTINCT a.company, a.num
FROM route a
    JOIN route b ON (a.num=b.num AND a.company=b.company)
    JOIN stops stopa ON (a.stop=stopa.id)
    JOIN stops stopb ON (b.stop=stopb.id)
WHERE stopa.name = 'Craiglockhart' AND stopb.name = 'Tollcross'