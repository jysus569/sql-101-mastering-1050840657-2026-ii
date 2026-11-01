-- Exercise 06: Filtros combinados — Asociados de Pamplona
-- b) Farmers (any gender) in Pamplona (54518) without a registered email

SELECT
    T1.document_number AS document,
    T1.first_name AS first_name,
    T1.last_name AS last_name,
    T1.phone_number AS phone,
    T1.email AS email
FROM 
    farm.farmers AS T1
WHERE 
    T1.municipality_code = '54518'
  AND 
    T1.email IS NULL
ORDER BY 
    T1.last_name ASC, T1.first_name ASC;
    /*
     document  |    first_name    |     last_name      |   phone    | email
------------+------------------+--------------------+------------+-------
 768461420  | Marleny          | Agudelo Sandoval   | 3242280898 |
 939635303  | Marleny          | Álvarez Correa     | 3232410671 |
 302223305  | Camilo           | Arias Mora         | 3045535545 |
 550696749  | Viviana          | Arias Ramírez      | 3204850778 |
 797017145  | Isabella         | Barrera Cabrera    | 3041744702 |
 483692716  | Ramiro           | Barrera Villamizar | 3056539829 |
 718906996  | Nelson           | Bedoya Vélez       | 3194564518 |
 21358854   | Manuela Yolanda  | Benavides Delgado  | 3229418470 |
 737383707  | Yesenia          | Bermúdez Henao     | 3141005257 |
 1015411133 | Santiago         | Bermúdez Ruiz      | 3003993000 |
 141613744  | Édgar            | Burbano Arango     | 3203780826 |
 549054771  | María            | Burbano Duarte     | 3183590387 |
 716388403  | Emilio           | Carrillo Perdomo   | 3135267851 |
 1001674689 | Jaime Santiago   | Cuéllar Cáceres    | 3019841594 |
 749444168  | Emilio           | Delgado Molina     | 3118015821 |
 1117597835 | Cecilia Lorena   | Díaz García        | 3207660684 |
 932437698  | Amparo           | Duarte Duque       | 3059102841 |
 846209158  | Daniel Héctor    | Duque Ruiz         | 3242698476 |
 622024549  | Viviana          | González Molina    | 3213218779 |
 35147265   | Carlos           | Gutiérrez Pabón    | 3223406765 |
 343256743  | Dora             | Hernández Correa   | 3166719225 |
 525766302  | Gustavo          | Ibarra Agudelo     | 3506003684 |
 1185523747 | Elsa             | Ibarra Molina      | 3189660702 |
 1148351420 | Inés             | Jiménez Jaimes     | 3104090231 |
 860920785  | Hugo             | Jiménez Parra      | 3244209117 |
 232229735  | Libardo          | Lasso Serrano      | 3113250445 |
 712758473  | Wilson           | López Villamizar   | 3055094275 |
 754524782  | Diana            | Lozano Rincón      | 3506302080 |
 131166207  | Jaime            | Marín Hernández    | 3114778905 |
 727945493  | Gloria           | Marín Rivera       | 3225571567 |
 102695503  | Sofía            | Marín Rojas        | 3111640267 |
 1171130241 | Elsa             | Mejía Vera         | 3019766136 |
 554620706  | Nelson Samuel    | Mejía Vera         | 3022063857 |
 824422301  | Hernando         | Montoya Agudelo    | 3218003724 |
 283636187  | Gustavo          | Moreno López       | 3026442670 |
 963176673  | Luis             | Mosquera Perdomo   | 3135244980 |
 1053774538 | Isabella         | Mosquera Sandoval  | 3168625937 |
 160538872  | Liliana          | Mosquera Uribe     | 3119365364 |
 723123018  | Diego            | Niño Hernández     | 3103428954 |
 641839251  | Efraín           | Ortega Correa      | 3504175536 |
 1177165427 | Juliana          | Ortega Osorio      | 3206119667 |
 361839624  | Rocío Alba       | Ortega Serrano     | 3249488512 |
 59388780   | Juan             | Ortega Zapata      | 3217129169 |
 1189704117 | Mariana          | Ortiz Ruiz         | 3004621446 |
 914235490  | Óscar            | Ospina González    | 3153244524 |
 966970818  | Gustavo          | Parra Ortiz        | 3218747954 |
 1135293825 | Abelardo         | Pérez Castro       | 3245612074 |
 549847293  | Wilmer           | Pérez Chamorro     | 3124455023 |
 599185252  | Efraín           | Pinzón Cabrera     | 3216450755 |
 914044314  | Ancízar Cristian | Polanía Delgado    | 3028825809 |
 33787285   | Rubén            | Ramos Chamorro     | 3244273375 |
 273193028  | Erika            | Ríos Suárez        | 3235535099 |
 1090968710 | Ruth             | Rodríguez Pérez    | 3021808053 |
 548464915  | Yuliana          | Rodríguez Vargas   | 3173571208 |
 446019320  | Fernando         | Rojas Cárdenas     | 3235672830 |
 24999630   | Esperanza        | Romero Betancur    | 3029623613 |
 940051048  | David Germán     | Romero Bonilla     | 3018117176 |
 922724022  | Esteban          | Salazar Parra      | 3162718294 |
 1079700992 | Camila           | Sánchez Pinzón     | 3053337474 |
 610678466  | Nicolás          | Sánchez Rodríguez  | 3114761362 |
 938685616  | Sandra           | Sandoval Ortega    | 3026392429 |
 449792023  | Myriam           | Sandoval Osorio    | 3016344667 |
 403413565  | Reinaldo         | Suárez Polanía     | 3128378640 |
 712500733  | Esperanza        | Valencia Ortiz     | 3111830019 |
 796884051  | Yuliana          | Zapata Parra       | 3172431642 |
(65 filas)
*/