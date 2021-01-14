/*CREATE VIEW top_3_artistas AS*/
SELECT DISTINCT artista AS 'artista',
COUNT(seg.artista_id) AS 'seguidores'
from SpotifyClone.artistas as art
INNER JOIN SpotifyClone.seguindo AS seg ON seg.artista_id = art.artista_id
GROUP BY artista
ORDER BY seguidores DESC, artista
LIMIT 3;
