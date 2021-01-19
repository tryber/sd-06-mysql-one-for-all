CREATE VIEW perfil_artistas AS
SELECT 
a.artist_name AS 'artista',
al.album_name AS 'album',
(SELECT COUNT(af.artist_id) FROM SpotifyClone.artists_following AS af WHERE af.artist_id = a.artist_id) AS 'seguidores'
FROM SpotifyClone.artists AS a 
INNER JOIN SpotifyClone.albuns AS al ON
a.artist_id = al.artist_id
ORDER BY `seguidores`DESC, `artista` ASC, `album` ASC;
