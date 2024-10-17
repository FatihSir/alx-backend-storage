-- Ranks the country origins of bands by the total
-- number of (non-unique) fans
-- The result will include columns: 'origin' and 'nb_fans'
-- Ordered by 'nb_fans' in descending order
-- Script can be executed on any database

SELECT origin, SUM(fans) AS nb_fans
FROM metal_bands
GROUP BY origin
ORDER BY nb_fans DESC;
