
SELECT * FROM manufacturers;
SELECT * FROM planes;
SELECT * FROM planes NATURAL JOIN manufactu*

SELECT*
FROM planes
where  plane_speed > 1000 AND plane_capacity > 10;

EXPLAIN SELECT m.plane_maker_id , plane_maker , COUNT (p.*) AS nb_planes, AVG (plane_speed)
FROM manufacturers m,planes p
where m.plane_maker_id = p.plane_maker_id 
GROUP BY m.plane_maker_id 
ORDER BY nb_planes ASC, plane_maker ASC

EXPLAIN SELECT m.plane_maker_id , plane_maker , COUNT (p.*) AS nb_planes, AVG (plane_speed)
FROM manufacturers m
INNER JOIN planes p ON m.plane_maker_id = p.plane_maker_id 
GROUP BY m.plane_maker_id 
ORDER BY nb_planes ASC, plane_maker ASC


SELECT m.plane_maker_id , plane_maker , COUNT (p.*) AS nb_planes, AVG (plane_speed)
FROM manufacturers m
NATURAL JOIN planes p
GROUP BY m.plane_maker_id 
ORDER BY nb_planes ASC, plane_maker ASC



SELECT distinct on (m.plane_maker)
m.plane_maker,
p.plane_ref, p.plane_capacity,
p2.plane_ref, p2.plane_autonomy 
FROM manufacturers m
inner join planes p on m.plane_maker_id = p.plane_maker_id
inner join planes p2 on p.plane_maker_id = p2.plane_maker_id
group by m.plane_maker, p.plane_ref, p2.plane_ref
having p.plane_capacity = max(p.plane_capacity) and p2.plane_autonomy = max(p2.plane_autonomy)
order by m.plane_maker, p.plane_capacity desc, p2.plane_autonomy desc;


-- SELECT * FROM planes WHERE plane_maker_id IN (SELECT plane_maker_id FROM manufacturers);























































/*
SELECT DISTINCT ON
(m.plane_maker)
m.plane_maker,
p.plane_ref, p.plane_capacity,
p2.plane_ref, p2.plane_autonomy 
FROM manufacturers m
INNER JOIN planes p ON m.plane_maker_id = p.plane_maker_id 
INNER JOIN planes p2 ON m.plane_maker_id = p2.plane_maker_id 
GROUP BY m.plane_maker_id, p.plane_ref, p2.plane_ref
HAVING p.plane_capacity = MAX(p.plane_capacity) -- (SELECT MAX(p3.plane_capacity) FROM planes p3 WHERE plane_maker_id = m.plane_maker_id) 
AND p2.plane_autonomy = MAX (p2.plane_autonomy) -- (SELECT MAX(p4.plane_autonomy) FROM planes p4 WHERE plane_maker_id = m.plane_maker_id)
ORDER BY plane_maker ASC
*/