CREATE VIEW estatisticas_musicais AS
SELECT COUNT(DISTINCT SpotifyClone.musicas.musica_id) AS cancoes,
COUNT(DISTINCT SpotifyClone.artistas.artista_id) AS artistas,
COUNT(DISTINCT SpotifyClone.albums.album_id) AS albuns
FROM SpotifyClone.musicas, SpotifyClone.artistas, SpotifyClone.albums;
