CREATE VIEW top_3_artistas AS
SELECT ar.nome_artista AS 'artista', COUNT(sh.artista_id)  AS 'seguidores'  
FROM SpotifyClone.seguir_historico AS sh
INNER JOIN SpotifyClone.artista AS ar ON sh.artista_id = ar.artista_id
GROUP BY sh.artista_id
ORDER BY COUNT(sh.artista_id) DESC, ar.nome_artista
LIMIT 3;
