-- Exercise 10: Integrador — JOIN + GROUP BY + HAVING
-- c) Consulte, por cada municipio de Norte de Santander (mostrando su nombre), el número de fincas, el área total sumada y la altitud promedio redondeada a 2 decimales

SELECT 
    m.municipality_name AS municipality,
    COUNT(f.farm_id) AS farms_count,
    SUM(f.total_area_ha) AS total_area_ha,
    ROUND(AVG(f.altitude_masl), 2) AS avg_altitude_masl
FROM 
    geo.departments AS d
JOIN 
    geo.municipalities AS m ON d.department_code = m.department_code
JOIN 
    farm.farms AS f ON m.municipality_code = f.municipality_code
WHERE 
    d.department_name = 'Norte de Santander'
GROUP BY 
    m.municipality_name
HAVING 
    COUNT(f.farm_id) >= 5
ORDER BY 
    avg_altitude_masl DESC;
    /*
     municipality | farms_count | total_area_ha | avg_altitude_masl
--------------+-------------+---------------+-------------------
(0 filas)
*/