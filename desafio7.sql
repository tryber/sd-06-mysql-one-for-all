CREATE VIEW perfil_artistas AS
SELECT A.nome_artista AS artista,
AL.nome_album AS album,
COUNT(SE.artista_id) AS seguidores
FROM SpotifyClone.artistas A
INNER JOIN SpotifyClone.seguindo_artistas SE ON SE.artista_id = A.artista_id
INNER JOIN SpotifyClone.albuns AL ON AL.artista_id = A.artista_id
GROUP BY artista, album
ORDER BY seguidores DESC, artista;
