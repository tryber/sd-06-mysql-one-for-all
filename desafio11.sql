CREATE VIEW cancoes_premium AS
SELECT
a.cancao AS `nome`,
COUNT(b.cancao) AS `reproducoes`
FROM SpotifyClone.cancoes AS a
JOIN SpotifyClone.historico_de_reproducoes AS b
ON a.cancao_id = b.cancao
JOIN SpotifyClone.usuarios AS c
ON b.usuario = c.usuario_id
JOIN SpotifyClone.plano AS d
ON c.plano = d.plano_id
WHERE d.tipo IN ('familiar', 'universitário')
GROUP BY b.cancao
ORDER BY `nome`;
