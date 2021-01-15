CREATE VIEW SpotifyClone.estatisticas_musicais AS 
SELECT 
(
  SELECT COUNT(id_cancao) FROM cancoes
) cancoes,
(
  SELECT COUNT(id_artista) FROM artistas
) artistas,
(
  SELECT COUNT(id_album) FROM albuns
) albuns;
