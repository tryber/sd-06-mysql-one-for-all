CREATE VIEW cancoes_premium AS
SELECT
c.cancao AS `nome`,
COUNT(hr.cancao_id) AS `reproducoes`
FROM spotifyclone.cancoes c
INNER JOIN spotifyclone.historico_de_reproducoes hr ON c.cancao_id = hr.cancao_id
GROUP BY `nome`
ORDER BY `nome` ASC;
