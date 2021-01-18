  create view top_2_hits_do_momento as
  select c.cancao as cancao,
  count(HR.cancoes_id) as reproducoes
  from SpotifyClone.historico_de_reproducoes as HR
  inner join SpotifyClone.cancoes as c on c.cancoes_id = HR.cancoes_id
  group by c.cancoes_id
  order by reproducoes desc, cancao
  limit 2;
