CREATE VIEW perfil_artistas AS 
SELECT A.artista,
B.album,
C.seguidores
FROM SpotifyClone.albuns AS B
INNER JOIN SpotifyClone.artistas AS A
ON B.artista_id =  A.artista_id
INNER JOIN (
SELECT A.artista,
count(A.artista) AS seguidores
FROM SpotifyClone.seguindo AS S
INNER JOIN SpotifyClone.artistas AS A
ON S.artista_id =  A.artista_id
GROUP BY A.artista
) AS C
ON C.artista = A.artista
ORDER BY C.seguidores DESC,
A.artista,
B.album;
