create view top_3_artistas AS
  select a.artista as artista,
  count(SA.usuario_id) as seguidores
  from SpotifyClone.artistas as a
  join SpotifyClone.seguindo_artistas as SA on a.artista_id = SA.artista_id
  group by a.artista_id
  order by seguidores desc, artista
  limit 3;
