CREATE VIEW estatisticas_musicais AS
SELECT COUNT(DISTINCT mu.musica_id) AS cancoes,
COUNT(DISTINCT ar.artista_id) AS artistas,
COUNT(DISTINCT al.album_id) AS albuns
FROM SpotifyClone.musicas mu,
SpotifyClone.albuns al,
SpotifyClone.artistas ar;
