CREATE VIEW top_3_artistas AS 
SELECT A.artista,
count(A.artista) AS seguidores
FROM SpotifyClone.artistas AS A
INNER JOIN SpotifyClone.seguindo AS S
ON A.artista_id = S.artista_id
GROUP BY A.artista
ORDER BY count(A.artista) DESC,
A.artista
LIMIT 3;
