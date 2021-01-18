CREATE VIEW `historico_reproducao_usuarios` AS
SELECT userstable.user_name AS `usuario`,
songstable.song_name AS `nome`
FROM ((reproductiontable
INNER JOIN songstable
ON reproductiontable.song_id = songstable.song_id)
INNER JOIN userstable
ON reproductiontable.user_id = userstable.user_id)
ORDER BY `usuario` ASC, `nome` ASC;
