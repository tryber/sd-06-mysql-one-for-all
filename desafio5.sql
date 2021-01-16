DROP VIEW IF EXISTS `top_2_hits_do_momento`;
CREATE VIEW top_2_hits_do_momento AS
SELECT
SpotifyClone.musicas.musicas_titulo AS 'cancao',
COUNT(SpotifyClone.historicos.usuarios_id) AS `reproducoes`
FROM SpotifyClone.musicas, SpotifyClone.historicos

WHERE
SpotifyClone.musicas.musicas_id = SpotifyClone.historicos.musicas_id

GROUP BY SpotifyClone.musicas.musicas_titulo

ORDER BY `reproducoes` DESC, SpotifyClone.musicas.musicas_titulo
LIMIT 2;
