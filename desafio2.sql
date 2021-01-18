use SpotityClone;
CREATE VIEW estatisticas_musicais AS 
SELECT COUNT(c.id) AS cancoes, COUNT(DISTINCT a.artista_id) AS artistas, COUNT(DISTINCT c.album_id) AS albuns
FROM cancoes AS c
INNER JOIN album AS a
ON c.album_id = a.id;
