-- ejercicio 06 - c
-- Farmers in Pamplona (54518) with inactive membership, ordered by oldest affiliation date first

SELECT
    T1.document_number AS document,
    T1.first_name AS first_name,
    T1.last_name AS last_name,
    T1.phone_number AS phone,
    T1.membership_date AS membership_date,
    T1.is_active AS is_active
FROM farm.farmers AS T1
WHERE T1.municipality_code = '54518'
  AND T1.is_active = FALSE
ORDER BY T1.membership_date ASC;

/*
  document  |    first_name    |     last_name      |   phone    | membership_date | is_active
------------+------------------+--------------------+------------+-----------------+-----------
 230971064  | Manuel           | Agudelo JimÚnez    | 3219718862 | 1997-03-29      | f
 534023693  | Myriam           | Valencia Moreno    | 3241389451 | 1998-11-03      | f
 33787285   | RubÚn            | Ramos Chamorro     | 3244273375 | 1999-03-02      | f
 1135293825 | Abelardo         | PÚrez Castro       | 3245612074 | 2003-06-19      | f
 478755763  | Nicolßs          | Rivera Duque       | 3029310183 | 2003-08-11      | f
 160538872  | Liliana          | Mosquera Uribe     | 3119365364 | 2007-09-27      | f
 223974138  | Rodrigo Nelson   | Cabrera Villamizar | 3502554241 | 2009-05-02      | f
 10424994   | Cristian         | Herrera Zuluaga    | 3242295228 | 2010-04-28      | f
 1015411133 | Santiago         | Berm·dez Ruiz      | 3003993000 | 2010-11-30      | f
 1090968710 | Ruth             | RodrÝguez PÚrez    | 3021808053 | 2010-12-11      | f
 974842644  | Arturo           | Hernßndez Uribe    | 3058169707 | 2012-06-16      | f
 1001030458 | Liliana Luisa    | Chamorro VÚlez     | 3002682380 | 2013-01-09      | f
 870240973  | Jairo            | Molina Pab¾n       | 3018237329 | 2014-03-13      | f
 89157555   | Heriberto        | JimÚnez Cßceres    | 3164266457 | 2014-07-17      | f
 333176982  | Edilma           | Rivera Rivera      | 3126087263 | 2014-12-20      | f
 587550249  | Gustavo          | Mosquera L¾pez     | 3119000149 | 2016-05-14      | f
 718906996  | Nelson           | Bedoya VÚlez       | 3194564518 | 2016-12-09      | f
 1117597835 | Cecilia Lorena   | DÝaz GarcÝa        | 3207660684 | 2017-01-11      | f
 599185252  | EfraÝn           | Pinz¾n Cabrera     | 3216450755 | 2017-07-23      | f
 135734682  | Diego            | Rivera JimÚnez     | 3508307641 | 2018-03-26      | f
 914044314  | AncÝzar Cristian | PolanÝa Delgado    | 3028825809 | 2021-02-24      | f
*/