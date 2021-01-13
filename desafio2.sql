USE SpotifyClone;

CREATE VIEW estatisticas_musicais AS
SELECT COUNT(DISTINCT(c.cancao_id)) AS 'cancoes',
  COUNT(DISTINCT(ar.artista_id)) AS 'artistas',
  COUNT(DISTINCT(al.album_id)) AS 'albuns'
FROM SpotifyClone.tabela_cancao AS c
INNER JOIN SpotifyClone.tabela_album AS al ON al.album_id = c.fk_album_id
INNER JOIN SpotifyClone.tabela_artista AS ar ON ar.artista_id = al.fk_artista_id;
