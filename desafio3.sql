CREATE VIEW historico_reproducao_usuarios AS SELECT users.user_name AS usuario, musics.music_name AS nome FROM histories JOIN users ON users.user_id = histories.user_id JOIN musics ON musics.music_id = histories.music_id ORDER BY usuario, nome;
