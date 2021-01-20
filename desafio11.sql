CREATE VIEW cancoes_premium AS
SELECT
SpotifyClone.cancoes.cancoes_name AS 'nome',
COUNT(SpotifyClone.historico.usuario_id) AS `reproducoes`
FROM SpotifyClone.cancoes, SpotifyClone.historico, SpotifyClone.usuario
WHERE SpotifyClone.cancoes.cancoes_id = SpotifyClone.historico.cancoes_id
AND SpotifyClone.usuario.usuario_id = SpotifyClone.historico.usuario_id
AND SpotifyClone.usuario.plano_id IN (2, 3)
GROUP BY SpotifyClone.cancoes.cancoes_name
ORDER BY SpotifyClone.cancoes.cancoes_name;
