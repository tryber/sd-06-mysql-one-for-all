CREATE VIEW estatisticas_musicais
SELECT COUNT(DISTINCT SpotifyClone.musicas.musica_name) AS cancoes,
COUNT(DISTINCT SpotifyClone.artistas.artista_name) AS artistas,
COUNT(DISTINCT SpotifyClone.albuns.album_name) AS albuns
FROM SpotifyClone.musicas, SpotifyClone.artistas, SpotifyClone.albuns;
