  create view historico_reproducao_usuarios as
select u.nome as usuario, c.cancao as nome
from SpotifyClone.usuarios as u
inner join SpotifyClone.historico_de_reproducoes as hr
on  u.usuario_id = hr.usuario_id
inner join SpotifyClone.cancoes as c on hr.cancoes_id = c.cancoes_id
order by 1, 2;
