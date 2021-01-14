USE SpotifyClone;
CREATE VIEW perfil_artistas AS
SELECT abc.artista, a.nome_album AS album, abc.seguidores
FROM (SELECT a.nome_artista AS artista,
sa.id_artista AS id_artista,
COUNT(*) AS seguidores
FROM seguindo_artista AS sa
INNER JOIN artista AS a ON sa.id_artista = a.id
GROUP BY a.nome_artista, sa.id_artista) AS abc
INNER JOIN album a ON abc.id_artista = a.id_artista
ORDER BY abc.seguidores DESC, abc.artista, album;
