 create view historico_reproducao_usuarios as
  select n.nome as usuario, c.cancao as nome
  from SpotifyClone.historico_de_reproducoes as HR
  inner join SpotifyClone.cancoes as c on HR.cancoes_id = c.cancoes_id
  inner join SpotifyClone.usuarios as n on HR.usuario_id = n.usuario_id
  order by usuario, nome;
  