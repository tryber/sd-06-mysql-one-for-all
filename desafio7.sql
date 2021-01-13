CREATE VIEW perfil_artistas AS
SELECT
art.nome as artista,
alb.nome as album,
COUNT(*) AS seguidores
FROM SpotifyClone.seguindo_artistas AS seg, SpotifyClone.artista as art, SpotifyClone.album AS alb
WHERE seg.artista_id = art.artista_id AND art.artista_id = alb.artista_id
GROUP BY artista, album
ORDER BY seguidores DESC, artista, album;
