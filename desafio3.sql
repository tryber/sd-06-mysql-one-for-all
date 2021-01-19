CREATE VIEW historico_reproducao_usuarios AS
SELECT u.user_name AS usuario, 
s.song_name AS nome
FROM history as h INNER JOIN user AS u
ON h.user_id = u.user_id INNER JOIN songs AS s
ON h.song_id = s.song_id
ORDER BY usuario, nome;
