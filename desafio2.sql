CREATE VIEW estatisticas_musicais AS
SELECT COUNT(song_id) AS cancoes,
(SELECT COUNT(artist) FROM SpotifyClone.artists) AS artistsa,
(SELECT COUNT(album) FROM SpotifyClone.albums) AS albuns FROM SpotifyClone.songs;
