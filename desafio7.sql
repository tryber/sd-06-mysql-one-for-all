CREATE VIEW faturamento_atual AS
SELECT art.artista AS artista,
alb.album AS album,
COUNT(alb.album_id) AS seguidores
from SpotifyClone.album as alb
INNER JOIN SpotifyClone.artistas AS art ON art.artista_id = alb.artista_id
INNER JOIN SpotifyClone.seguindo AS seg ON seg.artista_id = art.artista_id
GROUP BY alb.album_id
ORDER BY seguidores DESC, album DESC;
