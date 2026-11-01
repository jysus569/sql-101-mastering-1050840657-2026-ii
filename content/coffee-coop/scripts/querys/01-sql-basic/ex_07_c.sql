-- Exercise 07: Resumen del día (Funciones de agregación)
-- c) Total de asociados del municipio 54518 y conteo de asociados con correo registrado

SELECT 
    COUNT(*) AS total_farmers,
    COUNT(T1.email) AS farmers_with_email
FROM 
    farm.farmers AS T1
WHERE 
    T1.municipality_code = '54518';
    /*
     total_farmers | farmers_with_email
---------------+--------------------
           230 |                165
(1 fila)
*/