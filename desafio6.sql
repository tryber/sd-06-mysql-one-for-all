CREATE VIEW faturamento_atual AS
SELECT MIN(plan.valor_plano) AS 'faturamento_minimo',
MAX(plan.valor_plano) AS 'faturamento_maximo',
ROUND(SUM(plan.valor_plano / 4), 2) AS 'faturamento_medio',
SUM(plan.valor_plano) AS 'faturamento_total'
from SpotifyClone.planos as plan
INNER JOIN SpotifyClone.usuarios AS users ON users.plano_id = plan.plano_id;
