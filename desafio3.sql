CREATE VIEW historico_reproducao_usuarios AS
SELECT USUARIOS.nome AS "usuario", MUSICAS.nome AS "nome"
FROM usuarios AS USUARIOS, musicas AS MUSICAS, historico AS HISTORICO
WHERE USUARIOS.usuario_id = HISTORICO.usuario_id AND MUSICAS.musicas_id = HISTORICO.musicas_id
ORDER BY `usuario`, `nome`;
