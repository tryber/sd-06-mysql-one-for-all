CREATE VIEW estatisticas_musicais AS
SELECT COUNT(song_id) AS cancoes,
(SELECT COUNT(artist) FROM SpotifyClone.artists) AS artistas,
(SELECT COUNT(album) FROM SpotifyClone.albums) AS albuns FROM SpotifyClone.songs;
