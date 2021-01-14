CREATE VIEW estatisticas_musicais AS
SELECT COUNT(s.song_id) 'cancoes',
(
  SELECT COUNT(a.artist_id)
  FROM Artists a
) 'artistas',
(
  SELECT COUNT(a2.album_id)
  FROM Albums a2 
) 'albuns'
FROM Songs s;
