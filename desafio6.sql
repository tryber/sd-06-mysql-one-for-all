CREATE VIEW faturamento_atual AS
SELECT ROUND(MIN(p.valor_plano), 2) AS 'faturamento_minimo',
  ROUND(MAX(p.valor_plano), 2) AS 'faturamento_maximo',
  ROUND(AVG(p.valor_plano), 2) AS 'faturamento_medio',
  ROUND(SUM(p.valor_plano), 2) AS 'faturamento_total'
FROM SpotifyClone.tabela_plano AS p
INNER JOIN SpotifyClone.tabela_usuario AS u ON u.fk_plano_id = p.plano_id;
