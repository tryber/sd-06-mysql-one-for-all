CREATE VIEW perfil_artistas AS
SELECT
art.artist_name AS 'artista',
alb.album_name AS 'album',
(SELECT COUNT(af.artists_following) FROM SpotifyClone.artists_following AS af WHERE art.artist_id = af.artists_following) AS 'seguidores'
FROM SpotifyClone.artists AS art
INNER JOIN SpotifyClone.albums AS alb ON
art.artist_id = alb.artist_id
ORDER BY `seguidores` DESC, `artista` ASC, `album` ASC;
