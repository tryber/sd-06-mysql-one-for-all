CREATE VIEW  estatisticas_musicais AS
SELECT COUNT(cancao_id) AS 'cancoes', (SELECT COUNT(artista_id) FROM SpotifyClone.artista) AS 'artistas',
(SELECT COUNT(album_id) FROM SpotifyClone.album) AS 'albuns'
FROM SpotifyClone.cancao;
