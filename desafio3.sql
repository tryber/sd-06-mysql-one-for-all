  create view historico_reproducao_usuarios as
select n.nome as usuario, c.cancao as nome
from SpotifyClone.historico_de_reproducoes as HR
inner join SpotifyClone.usuarios as n on n.usuario_id = HR.usuario_id
inner join SpotifyClone.cancoes as c on c.cancoes_id = HR.cancoes_id
order by usuario asc, nome asc;
