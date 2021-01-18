CREATE VIEW faturamento_atual as
SELECT
  (min(numeros.`valor do plano`)) as `faturamento_minimo`,
  round(max(numeros.`valor do plano`),2) as `faturamento_maximo`,
  round(
    sum(numeros.`valor do plano`) / (sum(numeros.`quantidade de usuarios`)),
    2
  ) as `faturamento_medio`,
  sum(numeros.`valor do plano`) as `faturamento_total`
from
  (
    SELECT
      round(PLANO_VALOR, 2) as `valor do plano`,
      COUNT(USUARIO_ID) as `quantidade de usuarios`
    from
      planos
      inner join usuario on usuario.PLANO_ID = planos.PLANO_ID
    group by
      PLANO_VALOR
  ) as numeros;
