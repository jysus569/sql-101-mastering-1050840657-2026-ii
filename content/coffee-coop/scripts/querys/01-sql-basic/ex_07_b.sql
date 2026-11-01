-- Exercise 07: Resumen del día (Funciones de agregación)
-- b) Puntaje en taza (mínimo, máximo, promedio) y humedad (mínima y máxima) de los análisis del día 30 de septiembre de 2026

SELECT 
    MIN(T1.cup_score) AS min_cup_score,
    MAX(T1.cup_score) AS max_cup_score,
    ROUND(AVG(T1.cup_score), 2) AS avg_cup_score,
    MIN(T1.moisture_pct) AS min_moisture_pct,
    MAX(T1.moisture_pct) AS max_moisture_pct
FROM 
    buy.quality_analyses AS T1
WHERE 
    T1.analyzed_at >= '2026-09-30 00:00:00' 
    AND T1.analyzed_at <= '2026-09-30 23:59:59';
    /*
     min_cup_score | max_cup_score | avg_cup_score | min_moisture_pct | max_moisture_pct
---------------+---------------+---------------+------------------+------------------
         77.17 |         87.28 |         82.91 |             8.39 |            17.68
(1 fila)
*/