-- DROP VIEW IF EXISTS `cancoes_premium`;
CREATE VIEW cancoes_premium AS
SELECT
SpotifyClone.musicas.musicas_titulo AS 'nome',
COUNT(SpotifyClone.historicos.usuarios_id) AS `reproducoes`

FROM SpotifyClone.musicas, SpotifyClone.historicos, SpotifyClone.usuarios

WHERE
SpotifyClone.musicas.musicas_id = SpotifyClone.historicos.musicas_id
AND
SpotifyClone.usuarios.usuarios_id = SpotifyClone.historicos.usuarios_id
AND 
SpotifyClone.usuarios.planos_id IN (2, 3)

GROUP BY SpotifyClone.musicas.musicas_titulo

ORDER BY SpotifyClone.musicas.musicas_titulo;
