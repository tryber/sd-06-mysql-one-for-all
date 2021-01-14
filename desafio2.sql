USE SpotifyClone;

DROP VIEW IF EXISTS estatisticas_musicais;

CREATE VIEW estatisticas_musicais AS
SELECT
(SELECT COUNT(song) FROM SpotifyClone.songs) AS 'cancoes',
(SELECT COUNT(artist_name) FROM SpotifyClone.artists) AS 'artistas',
(SELECT COUNT(album_name) FROM SpotifyClone.albums) AS 'albuns';
