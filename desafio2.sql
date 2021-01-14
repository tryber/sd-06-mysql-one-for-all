CREATE VIEW estatisticas_musicais AS
SELECT COUNT(C.cancoes_id) AS 'cancoes',
(SELECT COUNT(A.artista_id) FROM artista AS A) AS 'artistas',
(SELECT COUNT(AL.album_id) FROM album AS AL) AS 'albums'
FROM cancoes AS C;
