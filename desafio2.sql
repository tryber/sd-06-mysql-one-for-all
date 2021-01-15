CREATE VIEW estatisticas_musicais AS
SELECT COUNT(DISTINCT m.musica_id) AS 'cancoes', COUNT(DISTINCT a.artista_id) AS 'artistas' , COUNT( DISTINCT ab.album_id) AS 'albuns'
FROM SpotifyClone.musica AS m
INNER JOIN SpotifyClone.artista AS a
INNER JOIN SpotifyClone.album AS ab;
