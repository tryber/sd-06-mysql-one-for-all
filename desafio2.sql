CREATE VIEW estatisticas_musicais AS
SELECT
COUNT(M.id) AS 'cancoes',
COUNT(DISTINCT AR.id) AS 'artistas',
COUNT(DISTINCT A.id) AS 'albuns'
FROM SpotifyClone.album A
LEFT JOIN SpotifyClone.music M
ON M.album_id = A.id
LEFT JOIN SpotifyClone.artist AR
ON A.artist_id = AR.id;
