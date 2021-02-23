CREATE VIEW perfil_artistas AS
SELECT
AN.artista_nome AS artista,
AL.album_nome AS album,
COUNT(U.usuario_id) AS seguidores
FROM SpotifyClone.artistas AS AN,
SpotifyClone.albuns AS AL,
SpotifyClone.seguindo_artistas AS U

WHERE AN.artista_id = AL.artista_id AND
AN.artista_id = U.artista_id GROUP BY artista
ORDER BY seguidores DESC, artista;
