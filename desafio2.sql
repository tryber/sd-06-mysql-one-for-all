CREATE VIEW estatisticas_musicais AS
SELECT COUNT(DISTINCT SONG.song_id) AS cancoes,
COUNT(DISTINCT ARTIST.artist_id) AS artistas,
COUNT(DISTINCT ALBUM.album_id) AS albuns
FROM SpotifyClone.songs AS SONG
JOIN SpotifyClone.artists AS ARTIST
JOIN SpotifyClone.albums AS ALBUM;
