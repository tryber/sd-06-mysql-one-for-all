CREATE VIEW estatisticas_musicais AS
SELECT COUNT(*) AS cancoes,
(SELECT COUNT(*) FROM artistas) AS artistas,
(SELECT COUNT(*) FROM albums) AS albuns
FROM cancoes
