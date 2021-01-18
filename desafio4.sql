use SpotityClone;
CREATE VIEW top_3_artistas AS
SELECT a.nome AS `artista`,  count(s.artista_id) AS `seguidores`
FROM artista AS a
INNER JOIN seguindo AS s
ON a.id = s.artista_id	
GROUP BY `artista`
ORDER BY `seguidores` DESC, `artista`;
