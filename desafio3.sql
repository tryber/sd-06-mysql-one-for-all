CREATE VIEW historico_reproducao_usuarios AS
  SELECT u.user_name 'usuario',
    s.song_name 'nome'
  FROM History h
    INNER JOIN Users u 
      ON u.user_id = h.user_id
    INNER JOIN Songs s
  	  ON h.song_id = s.song_id
  ORDER BY u.user_name, s.song_name;
