create view top_3_artistas as
select a.artista as artista, count(*) as seguidores
from SpotifyClone.artistas as a
inner join SpotifyClone.seguindo_artistas as sa on a.artista_id = sa.artista_id
group by a.artista, sa.artista_id
order by 2 desc, 1
limit 3;
