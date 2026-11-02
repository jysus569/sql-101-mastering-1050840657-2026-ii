-- Exercise 09: HAVING — Filtrar grupos
-- b) De las entregas del 30 de septiembre de 2026, consulte los puntos de compra (por nombre) que recibieron más de 1000 kg de peso bruto ese día, con los alias collection_point y total_gross_kg, ordenados de mayor a menor

SELECT 
    cp.point_name AS collection_point,
    SUM(d.gross_weight_kg) AS total_gross_kg
FROM 
    buy.deliveries AS d
JOIN 
    buy.collection_points AS cp ON d.collection_point_id = cp.collection_point_id
WHERE 
    d.delivered_at >= '2026-09-30 00:00:00' 
    AND d.delivered_at < '2026-10-01 00:00:00'
GROUP BY 
    cp.point_name
HAVING 
    SUM(d.gross_weight_kg) > 1000
ORDER BY 
    total_gross_kg DESC;
    /*
                collection_point            | total_gross_kg
----------------------------------------+----------------
 Punto de Compra Algeciras 1            |        1093.81
 Punto de Compra Coromoro 1             |        1079.24
 Punto de Compra San Andrés De Tumaco 1 |        1014.27
(3 filas)
*/