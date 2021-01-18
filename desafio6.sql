  create view faturamento_atual as
  select round(min(p.valor_plano), 2) as faturamento_minimo,
  round(max(p.valor_plano), 2) as faturamento_maximo,
  round(avg(p.valor_plano), 2) as faturamento_medio,
  round(sum(p.valor_plano), 2) as faturamento_total
  from SpotifyClone.financeiro as p
  inner join SpotifyClone.usuarios as u on p.financeiro_id = u.financeiro_id;
