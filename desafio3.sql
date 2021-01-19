CREATE VIEW historico_reproducao_usuarios AS
SELECT us.user_name AS usuario,
so.song AS nome
FROM reproduction_history AS rh
INNER JOIN users AS us
ON us.user_id = rh.user_id
INNER JOIN songs AS so 
ON so.song_id = rh.song_id
ORDER BY 1, 2;
