USE SpotifyClone;

CREATE VIEW historico_reproducao_usuarios AS
(SELECT
(SELECT COUNT(cancoes_id) FROM SpotifyClone.cancoes) AS `cancoes`,
(SELECT COUNT(artista_id) FROM SpotifyClone.artista) AS `artistas`,
(SELECT COUNT(album_id) FROM SpotifyClone.album) AS `albuns`);

SELECT * FROM historico_reproducao_usuarios;
