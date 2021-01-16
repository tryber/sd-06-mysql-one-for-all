DROP VIEW IF EXISTS `estatisticas_musicais`;
CREATE VIEW estatisticas_musicais AS
SELECT
COUNT(DISTINCT SpotifyClone.musicas.musicas_titulo) AS 'cancoes',
COUNT(DISTINCT SpotifyClone.artistas.artistas_nome) AS 'artistas',
COUNT(DISTINCT SpotifyClone.albuns.albuns_titulo) AS 'albuns'
FROM  SpotifyClone.musicas, SpotifyClone.artistas, SpotifyClone.albuns;
