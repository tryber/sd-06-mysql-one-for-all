USE SpotifyClone;
CREATE VIEW estatisticas_musicais AS
SELECT COUNT(DISTINCT SpotifyClone.song.song_name) AS cancoes,
COUNT(DISTINCT SpotifyClone.artict.artist_name) AS artistas,
COUNT(DISTINCT SpotifyClone.album.album_name) AS albuns FROM song, artist, album;
