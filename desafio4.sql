CREATE VIEW top_3_artistas AS
SELECT  
a.nome_artista AS `artista`,
COUNT(b.usuario) AS `seguidores`
FROM SpotifyClone.seguindo AS b
JOIN SpotifyClone.artistas AS a
ON b.artista = a.artista_id
GROUP BY b.artista
ORDER BY `seguidores` DESC, `artista`
LIMIT 3;
