USE SpotifyClone;
CREATE VIEW estatisticas_musicais AS
SELECT
COUNT(song_id) AS cancoes,
COUNT(DISTINCT album_id) AS artistas,
COUNT(DISTINCT musician_id) AS albuns
FROM SpotifyClone.Songs;
