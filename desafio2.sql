CREATE VIEW estatisticas_musicais AS
SELECT FLOOR(COUNT(C.cancao_id)/20) AS `cancoes`,
FLOOR(COUNT(A.artista_id)/90) AS `artistas`,
FLOOR(COUNT(B.album_id)/72) AS `albuns`
FROM SpotifyClone.cancoes AS C, SpotifyClone.artistas AS A, SpotifyClone.albuns AS B;
