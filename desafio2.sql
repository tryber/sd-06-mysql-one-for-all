CREATE VIEW estatisticas_musicais AS
  select count(distinct c.cancoes_id) as cancoes,
  count(distinct a.artista) as artistas,
  count(distinct al.album) as albuns
  from SpotifyClone.cancoes as c
  inner join SpotifyClone.artistas as a
  inner join SpotifyClone.albums as al;
    