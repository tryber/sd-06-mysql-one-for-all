CREATE VIEW estatisticas_musicais AS
SELECT (SELECT COUNT(id) FROM cancao) AS cancoes,
(SELECT COUNT(id) FROM artista) AS artistas,
(SELECT COUNT(id) FROM album) AS albuns;
