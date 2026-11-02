-- ejercicio 09 - c
-- Rejected quality analyses performed on September 30, 2026, with recorded observations, ordered by defects percentage descending

SELECT
    T1.analysis_id AS analysis,
    T1.delivery_id AS delivery,
    T1.is_accepted AS is_accepted,
    T1.observations AS observations,
    T1.defects_pct AS defects_pct
FROM buy.quality_analyses AS T1
WHERE T1.analyzed_at >= '2026-09-30'
  AND T1.analyzed_at < '2026-10-01'
  AND T1.is_accepted = FALSE
  AND T1.observations IS NOT NULL
ORDER BY T1.defects_pct DESC;

/*
      analysis      |      delivery       | is_accepted |                observations                 | defects_pct 
--------------------+---------------------+-------------+---------------------------------------------+-------------
 QA-20260930-000104 | DLV-20260930-000214 | f           | Olor a fermento en la muestra.              |       19.54
 QA-20260930-000068 | DLV-20260930-000165 | f           | Muestra tomada por duplicado.               |       17.29
 QA-20260930-000119 | DLV-20260930-000253 | f           | Exceso de impurezas y pasilla.              |       15.59
 QA-20260930-000086 | DLV-20260930-000147 | f           | Olor a fermento en la muestra.              |       13.21
 QA-20260930-000113 | DLV-20260930-000223 | f           | Café sobresecado, grano quebradizo.         |       12.94
 QA-20260930-000022 | DLV-20260930-000070 | f           | Café con humedad alta, requiere más secado. |        9.75
 QA-20260930-000018 | DLV-20260930-000006 | f           | Café con humedad alta, requiere más secado. |        7.88
(7 rows)
*/
