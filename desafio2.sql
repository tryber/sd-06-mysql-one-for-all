CREATE VIEW estatisticas_musicais AS 
SELECT COUNT(c.id_cancao) AS cancoes,
  COUNT(DISTINCT(a2.id_artista)) AS artistas,
  COUNT(DISTINCT(a.id_album)) AS albuns
FROM SpotifyClone.cancoes AS c
  INNER JOIN SpotifyClone.albuns AS a
    ON c.album_associado = a.id_album 
  INNER JOIN SpotifyClone.artistas AS a2
    ON a.artista_associado = a2.id_artista;
