-- Lists all bands with 'Glam rock' as their main style
-- Ranks them by their longevity, with columns:
-- 'band_name' and 'lifespan' (in years)
-- Lifespan is computed using the 'formed' and 'split' attributes
-- If the band has not split, the current
-- year (2022) is used for the calculation
-- Script can be executed on any database

SELECT band_name, COALESCE(split, 2022) - formed AS lifespan
FROM metal_bands
WHERE style LIKE '%Glam rock%'
ORDER BY lifespan DESC;
