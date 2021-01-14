CREATE VIEW estatisticas_musicais AS
SELECT COUNT(C.cancao_id) AS `cancoes`,
(SELECT COUNT(A.artista_id) FROM SpotifyClone.artistas AS A) AS `artistas`,
(SELECT COUNT(B.album_id) FROM SpotifyClone.albuns AS B) AS `albuns`
FROM SpotifyClone.cancoes AS C;
