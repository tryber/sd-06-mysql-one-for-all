CREATE VIEW historico_reproducao_usuarios AS
SELECT U.nome AS 'usuario', C.nome AS 'nome'
FROM usuario AS U, cancoes AS C, historico_de_reproducoes AS HR
WHERE U.usuario_id = HR.usuario_id AND C.cancoes_id = HR.cancoes_id
ORDER BY `usuario`, `nome`;
