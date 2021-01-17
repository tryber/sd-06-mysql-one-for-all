CREATE VIEW estatisticas_musicais
SELECT COUNT(DISTINCT SpotifyClone.musics.music_name) AS cancoes,
COUNT(DISTINCT SpotifyClone.artists.artist_name) AS artistas,
COUNT(DISTINCT SpotifyClone.albuns.album_name) AS albuns
FROM SpotifyClone.musics, SpotifyClone.artists, SpotifyClone.albuns;
