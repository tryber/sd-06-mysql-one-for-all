CREATE VIEW perfil_artistas AS
SELECT AR_SEG.artista, A.album_nome album, AR_SEG.seguidores seguidores FROM
(SELECT A.artista_id artista_id, A.artista_nome artista, COUNT(US.usuario_id) seguidores 
FROM SpotifyClone.usuario_segue US 
INNER JOIN SpotifyClone.artista A  ON US.artista_id = A.artista_id GROUP BY artista_id) 
AS AR_SEG
INNER JOIN SpotifyClone.albuns A ON A.artista_id = AR_SEG.artista_id ORDER BY seguidores DESC, artista, album;
