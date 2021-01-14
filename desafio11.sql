CREATE VIEW cancoes_premium AS
SELECT
a.musica AS `nome`,
COUNT(b.musica) AS `reproducoes`
FROM SpotifyClone.musicas AS a
JOIN SpotifyClone.historico AS b
ON a.musica_id = b.musica
JOIN SpotifyClone.usuarios AS c
ON b.usuario = c.usuario_id
JOIN SpotifyClone.plano AS d
ON c.plano = d.plano_id
WHERE d.tipo IN ('familiar', 'universitário')
GROUP BY b.musica
ORDER BY `nome`;
