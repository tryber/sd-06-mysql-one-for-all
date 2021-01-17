CREATE VIEW estatisticas_musicais AS
SELECT
COUNT(cancao_id) AS cancoes,
(SELECT COUNT(artista_id) FROM artistas) AS artistas,
(SELECT COUNT(album_id) FROM albuns) AS albuns
FROM cancoes;
