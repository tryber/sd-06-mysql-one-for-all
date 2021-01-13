USE SpotifyClone;
CREATE VIEW estatisticas_musicais AS
SELECT COUNT(DISTINCT song_name) AS cancoes,
COUNT(DISTINCT artist_name) AS artistas,
COUNT(DISTINCT album_name) AS albuns FROM song, artist, album;
