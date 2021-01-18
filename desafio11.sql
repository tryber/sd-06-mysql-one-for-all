create view cancoes_premium as
select c.cancao as nome, count(hr.usuario_id) as reproducoes
from SpotifyClone.historico_de_reproducoes as hr
inner join SpotifyClone.cancoes as c on hr.cancoes_id = c.cancoes_id
inner join SpotifyClone.historico_de_reproducoes as us on hr.usuarios_id = us.usuarios_id
where us.financeiro_id between 2 and 3
group by hr.cancoes_id
order by `nome`;
