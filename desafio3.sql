  create view historico_reproducao_usuarios as
select n.nome as usuario,
c.cancao as nome
from SpotifyClone.usuarios as n
inner join SpotifyClone.historico_de_reproducoes as hr on n.usuario_id = hr.usuario_id
inner join SpotifyClone.cancoes as c on hr.cancoes_id = c.cancoes_id
order by `usuario`, `nome`;
