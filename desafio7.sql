
CREATE VIEW perfil_artistas AS
SELECT artists.artist_name AS artista,
albums.album_name AS album,
COUNT(artists.artist_id) AS seguidores
FROM follows
JOIN artists
ON artists.artist_id = follows.artist_id JOIN albums
ON artists.artist_id = albums.artist_id
GROUP BY artists.artist_name, albums.album_name
ORDER BY seguidores DESC, artista ASC, album;
