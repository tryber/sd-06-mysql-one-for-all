DROP VIEW IF EXISTS `faturamento_atual`;
CREATE VIEW faturamento_atual AS
SELECT
ROUND(MIN(SpotifyClone.planos.planos_valor), 2) AS 'faturamento_minimo',
ROUND(MAX(SpotifyClone.planos.planos_valor), 2) AS 'faturamento_maximo',
ROUND(AVG(SpotifyClone.planos.planos_valor), 2) AS 'faturamento_medio',
ROUND(SUM(SpotifyClone.planos.planos_valor), 2) AS 'faturamento_total'

FROM SpotifyClone.usuarios, SpotifyClone.planos

WHERE
SpotifyClone.usuarios.planos_id = SpotifyClone.planos.planos_id
