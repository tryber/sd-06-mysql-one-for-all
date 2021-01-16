CREATE VIEW top_3_artistas AS
SELECT  
art.nome_artista AS `artista`,
COUNT(f.usuario) AS `seguidores`
FROM SpotifyClone.seguindo AS f
JOIN SpotifyClone.artistas AS art
ON f.artista = art.artista_id
GROUP BY f.artista
ORDER BY `seguidores` DESC, `artista`
LIMIT 3;
