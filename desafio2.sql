USE SpotifyClone;
SELECT COUNT(DISTINCT song_name) as cancoes,
COUNT(DISTINCT artist_name) as artistas,
COUNT(DISTINCT album_name) as albuns from song, artist, album;
