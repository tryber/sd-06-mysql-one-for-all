  create view top_3_artistas as
select a.artista as artista,
count(sa.usuario_id) as seguidores
from SpotifyClone.seguindo_artistas as seguidor
inner join SpotifyClone.usuarios as u on seguidor.usuario_id = u.usuario_id
inner join SpotifyClone.artistas as a on a.artista_id = seguidor.artista_id
group by `artista`
order by `seguidores` desc, `artista`
limit 3;
