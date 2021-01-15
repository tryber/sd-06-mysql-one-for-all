CREATE VIEW historico_reproducao_usuarios AS SELECT 
 users.user_name AS usuario,
 song_list.title AS nome
 FROM users
 INNER JOIN play_history
 ON play_history.user_id = users.id
 INNER JOIN song_list
 ON play_history.song_list_id = song_list.id
 ORDER BY usuario, nome;