-- Exercise 08: Desglose por departamento, tipo de café y punto de compra
-- b) De las entregas del 30 de septiembre de 2026, consulte por cada tipo de café el número de entregas y el peso bruto total, con los alias coffee_type, deliveries_count y total_gross_kg, ordenados por peso total de mayor a menor

SELECT 
    coffee_type AS coffee_type,
    COUNT(delivery_id) AS deliveries_count,
    SUM(gross_weight_kg) AS total_gross_kg
FROM 
    buy.deliveries
WHERE 
    delivered_at >= '2026-09-30 00:00:00' 
    AND delivered_at < '2026-10-01 00:00:00'
GROUP BY 
    coffee_type
ORDER BY 
    total_gross_kg DESC;
    /*
     coffee_type  | deliveries_count | total_gross_kg
---------------+------------------+----------------
 dry_parchment |              278 |       48246.55
 cherry        |               10 |        2053.16
 wet_parchment |               12 |        1891.25
(3 filas)
*/