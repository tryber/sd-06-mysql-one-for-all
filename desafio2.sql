use spotifyclone;

CREATE VIEW estatisticas_musicais AS
SELECT COUNT(c.id) AS cancoes, COUNT(DISTINCT a.artistas_id) AS artistas, COUNT(DISTINCT c.albuns_id) AS albuns
FROM cancoes AS c
INNER JOIN albuns AS a
ON c.albuns_id = a.id;
