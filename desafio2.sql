CREATE VIEW estatisticas_musicais AS
SELECT COUNT(song_id) AS songs,
(SELECT COUNT(artist) FROM SpotifyClone.artists) AS artists,
(SELECT COUNT(album) FROM SpotifyClone.albums) AS albums FROM SpotifyClone.songs;