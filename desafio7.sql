use SpotityClone;
CREATE VIEW perfil_artistas AS
SELECT a.nome AS `artista`, 
al.nome AS `album`,
count(s.artista_id) AS `seguidores`
FROM artista AS a
INNER JOIN album AS al
ON a.id = al.artista_id
INNER JOIN seguindo AS s
ON a.id = s.artista_id
Group by  al.id
ORDER BY `seguidores` DESC, `artista`,`album`;
