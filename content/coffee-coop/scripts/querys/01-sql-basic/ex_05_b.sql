-- Exercise: IS NULL y operadores lógicos — Puntos de compra sin teléfono
-- b) Collection points without a registered phone number, ordered by name

SELECT
    T1.point_name AS point,
    T1.phone_number AS phone_number
FROM 
    buy.collection_points AS T1
WHERE 
    T1.phone_number IS NULL
ORDER BY 
    T1.point_name ASC;
/*
             point              | phone_number
--------------------------------+--------------
 Punto de Compra Aipe 1         |
 Punto de Compra Anserma 1      |
 Punto de Compra Apía 2         |
 Punto de Compra Baraya 1       |
 Punto de Compra Bochalema 1    |
 Punto de Compra Bosconia 1     |
 Punto de Compra Cajibío 1      |
 Punto de Compra Cisneros 1     |
 Punto de Compra Coello 1       |
 Punto de Compra El Carmen 2    |
 Punto de Compra El Tambo 2     |
 Punto de Compra Flandes 1      |
 Punto de Compra Hatonuevo 1    |
 Punto de Compra Icononzo 1     |
 Punto de Compra Isnos 1        |
 Punto de Compra La Argentina 1 |
 Punto de Compra La Gloria 1    |
 Punto de Compra Marsella 1     |
 Punto de Compra Pelaya 1       |
 Punto de Compra Puracé 1       |
 Punto de Compra San Lorenzo 1  |
 Punto de Compra Tesalia 1      |
 Punto de Compra Timbiquí 1     |
 Punto de Compra Turbo 2        |
 Punto de Compra Venecia 1      |
 Punto de Compra Villa Rica 1   |
(26 filas)
*/