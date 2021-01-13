CREATE VIEW estatisticas_musicais AS
SELECT 
(SELECT COUNT(C.cancao_id)
FROM cancoes AS C) AS cancoes,
(SELECT COUNT(AR.artista_id)
FROM artistas AS AR) AS artistas,
(SELECT COUNT(AL.album_id)
FROM albuns AS AL) AS albuns;
