CREATE VIEW faturamento_atual AS
SELECT ROUND(MIN(PLANOS.valor), 2) AS "faturamento_minimo",
ROUND(MAX(PLANOS.valor), 2) AS "faturamento_maximo",
ROUND(AVG(PLANOS.valor), 2) AS "faturamento_medio",
ROUND(SUM(PLANOS.valor), 2) AS "faturamento_total"
FROM planos AS PLANOS
JOIN usuarios AS USUARIOS ON PLANOS.plano_id = USUARIOS.plano_id;