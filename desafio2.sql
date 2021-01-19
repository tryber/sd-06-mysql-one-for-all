CREATE VIEW estatisticas_musicais AS
SELECT 
COUNT(DISTINCT SpotifyClone.songs.id_song) AS cancoes,
COUNT(DISTINCT SpotifyClone.artists.id_artist) AS artistas,
COUNT(DISTINCT SpotifyClone.albuns.id_album) AS albuns
FROM SpotifyClone.songs, SpotifyClone.artists, SpotifyClone.albuns;
