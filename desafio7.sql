USE SpotifyClone;
CREATE VIEW perfil_artistas AS
SELECT AR.artista_nome AS 'artista', 
AL.album_nome AS 'album',
COUNT(DISTINCT SA.usuario_id) AS 'seguidores'
FROM SpotifyClone.artistas AR
INNER JOIN SpotifyClone.album AL ON AR.artista_id = AL.artista_id
INNER JOIN SpotifyClone.seguindo_artista SA ON AL.artista_id = SA.artista_id
GROUP BY AR.artista_nome, AL.album_nome
ORDER BY `seguidores` DESC, `artista` ASC, `album`;
