CREATE VIEW estatisticas_musicais AS
SELECT
COUNT(DISTINCT c.cancao) AS `cancoes`,
COUNT(DISTINCT a.artista) AS `artistas`,
COUNT(DISTINCT d.album) AS `albuns`
FROM
artistas a,
cancoes c,
albums d;
