CREATE VIEW estatisticas_musicais AS
SELECT COUNT(DISTINCT S.song_id) AS cancoes,
COUNT(DISTINCT A.artist_name) AS artistas,
COUNT(DISTINCT AL.album_id) AS albuns
FROM SpotifyClone.albuns AS AL
JOIN SpotifyClone.artists AS A
ON AL.artist_id = A.artist_id
JOIN SpotifyClone.songs AS S
ON AL.album_id = S.album_id;
