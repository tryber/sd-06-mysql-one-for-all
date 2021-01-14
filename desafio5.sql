CREATE VIEW top_2_hits_do_momento AS
SELECT s.song_name 'cancao',
(
  SELECT COUNT(h.user_id)
  FROM History h
  WHERE s.song_id = h.song_id 
) 'reproducoes'
FROM Songs s 
ORDER BY `reproducoes` DESC, `cancao`
LIMIT 2;
