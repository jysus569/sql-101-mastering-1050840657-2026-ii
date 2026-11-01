-- Exercise 08: Desglose por departamento, tipo de café y punto de compra
-- c) De las entregas del mismo día (30 de septiembre de 2026), consulte por cada punto de compra (mostrando su nombre) el número de entregas, el peso bruto total y el peso bruto promedio redondeado a 2 decimales, con los alias collection_point, deliveries_count, total_gross_kg y avg_gross_kg

SELECT 
    cp.point_name AS collection_point,
    COUNT(d.delivery_id) AS deliveries_count,
    SUM(d.gross_weight_kg) AS total_gross_kg,
    ROUND(AVG(d.gross_weight_kg), 2) AS avg_gross_kg
FROM 
    buy.deliveries AS d
JOIN 
    buy.collection_points AS cp ON d.collection_point_id = cp.collection_point_id
WHERE 
    d.delivered_at >= '2026-09-30 00:00:00' 
    AND d.delivered_at < '2026-10-01 00:00:00'
GROUP BY 
    cp.point_name
ORDER BY 
    total_gross_kg DESC;
    /*
                   collection_point               | deliveries_count | total_gross_kg | avg_gross_kg
----------------------------------------------+------------------+----------------+--------------
 Punto de Compra Algeciras 1                  |                5 |        1093.81 |       218.76
 Punto de Compra Coromoro 1                   |                5 |        1079.24 |       215.85
 Punto de Compra San Andrés De Tumaco 1       |                6 |        1014.27 |       169.05
 Punto de Compra Timbiquí 1                   |                3 |         983.44 |       327.81
 Punto de Compra La Tebaida 1                 |                5 |         943.63 |       188.73
 Punto de Compra El Banco 1                   |                5 |         915.06 |       183.01
 Punto de Compra Bochalema 1                  |                4 |         849.99 |       212.50
 Punto de Compra Manzanares 1                 |                3 |         847.38 |       282.46
 Punto de Compra Paratebueno 1                |                4 |         839.51 |       209.88
 Punto de Compra El Bagre 1                   |                3 |         828.06 |       276.02
 Punto de Compra Rionegro 1                   |                5 |         750.49 |       150.10
 Punto de Compra Valle De San Juan 1          |                4 |         747.91 |       186.98
 Punto de Compra Líbano 1                     |                4 |         728.73 |       182.18
 Punto de Compra Toribío 1                    |                4 |         725.33 |       181.33
 Punto de Compra Bosconia 1                   |                3 |         687.42 |       229.14
 Punto de Compra Tibaná 1                     |                4 |         684.65 |       171.16
 Punto de Compra Jambaló 1                    |                4 |         669.44 |       167.36
 Punto de Compra San Andrés De Tumaco 2       |                5 |         667.79 |       133.56
 Punto de Compra San Francisco 1              |                4 |         662.02 |       165.51
 Punto de Compra Fresno 1                     |                2 |         631.96 |       315.98
 Punto de Compra Pacho 1                      |                5 |         630.18 |       126.04
 Punto de Compra Acevedo 1                    |                3 |         627.09 |       209.03
 Punto de Compra El Tambo 1                   |                3 |         618.87 |       206.29
 Punto de Compra San José 1                   |                2 |         615.59 |       307.80
 Punto de Compra Ipiales 1                    |                5 |         612.86 |       122.57
 Punto de Compra Sopetrán 1                   |                3 |         605.73 |       201.91
 Punto de Compra Yondó 1                      |                2 |         601.18 |       300.59
 Punto de Compra Flandes 1                    |                3 |         589.32 |       196.44
 Punto de Compra Miranda 1                    |                3 |         574.20 |       191.40
 Punto de Compra Nátaga 1                     |                3 |         543.64 |       181.21
 Punto de Compra Pradera 1                    |                3 |         523.95 |       174.65
 Punto de Compra Cajibío 3                    |                3 |         517.94 |       172.65
 Punto de Compra Palestina 1                  |                3 |         513.55 |       171.18
 Punto de Compra Mallama 1                    |                2 |         506.78 |       253.39
 Punto de Compra Sevilla 1                    |                3 |         503.79 |       167.93
 Punto de Compra La Pintada 1                 |                3 |         502.17 |       167.39
 Punto de Compra Prado 1                      |                3 |         496.64 |       165.55
 Punto de Compra Turbo 2                      |                3 |         490.01 |       163.34
 Punto de Compra Guachené 1                   |                2 |         489.58 |       244.79
 Punto de Compra Armero Guayabal 2            |                3 |         489.34 |       163.11
 Punto de Compra Tesalia 1                    |                2 |         477.55 |       238.78
 Punto de Compra Andalucía 2                  |                2 |         471.26 |       235.63
 Punto de Compra Balboa 1                     |                2 |         467.18 |       233.59
 Punto de Compra Yaguará 2                    |                2 |         466.77 |       233.39
 Punto de Compra Lenguazaque 1                |                3 |         459.17 |       153.06
 Punto de Compra Popayán 1                    |                3 |         451.01 |       150.34
 Punto de Compra Santuario 1                  |                2 |         439.82 |       219.91
 Punto de Compra Santander De Quilichao 1     |                2 |         438.83 |       219.42
 Punto de Compra Garzón 2                     |                3 |         430.69 |       143.56
 Punto de Compra Riosucio 1                   |                2 |         427.32 |       213.66
 Punto de Compra Valdivia 1                   |                3 |         420.88 |       140.29
 Punto de Compra Isnos 2                      |                1 |         419.65 |       419.65
 Punto de Compra Apía 2                       |                1 |         404.97 |       404.97
 Punto de Compra La Celia 1                   |                2 |         395.29 |       197.65
 Punto de Compra Teruel 1                     |                4 |         392.93 |        98.23
 Punto de Compra Puerto Tejada 1              |                2 |         389.96 |       194.98
 Punto de Compra Gigante 1                    |                2 |         386.07 |       193.04
 Punto de Compra Paicol 1                     |                2 |         382.83 |       191.42
 Punto de Compra Villarrica 1                 |                3 |         378.75 |       126.25
 Punto de Compra Convención 1                 |                3 |         374.59 |       124.86
 Punto de Compra Guamo 1                      |                2 |         367.13 |       183.57
 Punto de Compra Agrado 1                     |                2 |         366.73 |       183.37
 Punto de Compra Baraya 1                     |                1 |         348.59 |       348.59
 Punto de Compra El Playón 1                  |                4 |         348.43 |        87.11
 ENTRE MAAS TODAVIA 
 */