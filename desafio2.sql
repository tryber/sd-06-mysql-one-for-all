USE SpotifyClone;
CREATE VIEW estatisticas_musicais AS 
SELECT C.CA AS 'cancoes',
A.AR  AS 'artistas',
ALB.AL AS 'albuns'
FROM (SELECT COUNT(*) AS CA FROM SpotifyClone.cancoes) AS C,
(SELECT COUNT(*) AS AR FROM SpotifyClone.artistas) AS A,
(SELECT COUNT(*) AS AL FROM SpotifyClone.album) AS ALB
