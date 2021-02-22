CREATE VIEW estatisticas_musicais AS
SELECT
  COUNT(DISTINCT(M.musica_id)) AS `cancoes`,
  COUNT(DISTINCT(A.artista_id)) AS `artistas`,
  COUNT(DISTINCT(M.album_id)) AS `albuns`
FROM SpotifyClone.musica AS M
INNER JOIN SpotifyClone.album AS A ON M.album_id = A.album_id;
