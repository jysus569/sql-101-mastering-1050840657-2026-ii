-- Exercise 09: HAVING — Filtrar grupos
-- c) Considerando todos los análisis registrados, consulte las fincas (por nombre) con al menos 3 análisis y un puntaje en taza promedio mayor o igual a 84, con los alias farm, analyses_count y avg_cup_score (redondeado a 2 decimales), ordenadas por promedio de mayor a menor.

SELECT 
    f.farm_name AS farm,
    COUNT(qa.analysis_id) AS analyses_count,
    ROUND(AVG(qa.cup_score), 2) AS avg_cup_score
FROM 
    farm.farms AS f
JOIN 
    buy.deliveries AS d ON f.farm_id = d.farm_id
JOIN 
    buy.quality_analyses AS qa ON d.delivery_id = qa.delivery_id
GROUP BY 
    f.farm_name
HAVING 
    COUNT(qa.analysis_id) >= 3
    AND AVG(qa.cup_score) >= 84
ORDER BY 
    avg_cup_score DESC;
    /*
     farm | analyses_count | avg_cup_score
------+----------------+---------------
(0 filas)
*/