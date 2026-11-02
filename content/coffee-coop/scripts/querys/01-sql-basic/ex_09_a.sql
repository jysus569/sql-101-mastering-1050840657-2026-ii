-- Exercise 09: HAVING — Filtrar grupos
-- a) Repita el literal a) del ejercicio anterior mostrando solo los departamentos con más de 40 municipios

SELECT 
    d.department_name,
    COUNT(m.municipality_code) AS municipalities_count
FROM 
    geo.departments AS d
JOIN 
    geo.municipalities AS m ON d.department_code = m.department_code
GROUP BY 
    d.department_name
HAVING 
    COUNT(m.municipality_code) > 40
ORDER BY 
    municipalities_count DESC;
    /*
     department_name | municipalities_count
-----------------+----------------------
 Antioquia       |                  125
 Boyacá          |                  123
 Cundinamarca    |                  116
 Santander       |                   87
 Nariño          |                   64
 Tolima          |                   47
 Bolívar         |                   46
 Cauca           |                   42
 Valle Del Cauca |                   42
(9 filas)
*/