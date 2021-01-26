CREATE VIEW perfil_artistas AS
SELECT  a.artista AS artista,
ab.album AS album,
COUNT(*) AS seguidores
FROM SpotifyClone.artistas AS a
JOIN SpotifyClone.albuns AS ab
ON(a.id = ab.artista_id)
JOIN SpotifyClone.seguindo_artistas AS s
ON(a.id = s.artista_id)
GROUP BY `artista`, `album`
ORDER BY 3 DESC, 1 ASC, 2 ASC;
