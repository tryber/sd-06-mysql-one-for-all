CREATE VIEW faturamento_atual AS
SELECT MIN(pl.valor_plano) as 'faturamento_minimo',
MAX(pl.valor_plano) as 'faturamento_maximo',
ROUND(AVG(pl.valor_plano),2) as 'faturamento_medio',
SUM(pl.valor_plano)as 'faturamento_total'
from SpotifyClone.usuario as u
inner join SpotifyClone.planos as pl on u.plano_id = pl.plano_id;
