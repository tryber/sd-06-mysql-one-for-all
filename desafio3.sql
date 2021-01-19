CREATE VIEW historico_reproducao_usuarios AS
SELECT
users.user_name  AS 'usuario',
songs.songs_name AS 'nome'
FROM 
SpotifyClone.users users,
SpotifyClone.song_played songPlayed,
SpotifyClone.songs songs
WHERE
users.user_id = songPlayed.user_id AND songPlayed.song_id = songs.songs_id
ORDER BY `usuario` ASC, `nome` ASC;
