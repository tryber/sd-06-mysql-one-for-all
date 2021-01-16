  create view perfil_artistas as
  select a.artista as artista,
  al.album as album,
  count(al.album_id) as seguidores
  from SpotifyClone.albums as al
  inner join SpotifyClone.artistas as a on al.artista_id = a.artista_id
  inner join SpotifyClone.seguindo_artistas as SA on SA.artista_id = al.artista_id
  group by al.album_id
  order by seguidores desc, artista, album;
 