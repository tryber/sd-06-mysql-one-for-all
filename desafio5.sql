CREATE VIEW top_2_hits_do_momento AS
SELECT DISTINCT cancao AS 'cancao',
COUNT(usuario_id) AS 'reproducoes'
from SpotifyClone.reproducoes as rep
INNER JOIN SpotifyClone.cancoes AS can ON can.cancao_id = rep.cancao_id
GROUP BY cancao
ORDER BY reproducoes DESC, cancao
LIMIT 2;
