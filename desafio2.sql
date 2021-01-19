CREATE VIEW estatisticas_musicais AS
SELECT COUNT(DISTINCT SpotifyClone.cd.musica_id) AS cancoes,
COUNT(DISTINCT SpotifyClone.interpretes.artista_id) AS interpretes,
COUNT(DISTINCT SpotifyClone.albums.album_id) AS albuns
FROM SpotifyClone.cd, SpotifyClone.interpretes, SpotifyClone.albums;
