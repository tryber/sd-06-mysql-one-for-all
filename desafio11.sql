CREATE VIEW cancoes_premium AS
SELECT can.cancao AS 'nome',
COUNT(rep.usuario_id) AS 'reproducoes'
from SpotifyClone.reproducoes as rep
INNER JOIN SpotifyClone.cancoes AS can ON can.cancao_id = rep.cancao_id 
INNER JOIN SpotifyClone.usuarios AS us ON us.usuario_id = rep.usuario_id
where us.plano_id > 1
GROUP BY nome
ORDER BY nome ASC;
