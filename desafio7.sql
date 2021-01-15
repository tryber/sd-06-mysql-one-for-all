CREATE VIEW perfil_artistas AS
SELECT 
ar.nome_artista AS 'artista',
ab.nome_album AS 'album',
COUNT(sh.artista_id) AS 'seguidores'
FROM SpotifyClone.album AS ab
inner JOIN SpotifyClone.seguir_historico AS sh ON ab.artista_id = sh.artista_id
INNER JOIN SpotifyClone.artista as ar ON ab.artista_id = ar.artista_id
group by ab.nome_album, ar.artista_id
ORDER BY COUNT(sh.artista_id) DESC, ar.nome_artista, ab.nome_album;
