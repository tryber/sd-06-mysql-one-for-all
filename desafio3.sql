-- aqui criamos uma view com duas colunas: usuario e nome(com o nome da canção ouvida pela pessoa com base no seu histórico de reprodução)
CREATE VIEW historico_reproducao_usuarios AS
SELECT 
u.nome AS usuario,
c.cancao AS nome
FROM usuario AS u
INNER JOIN reproducoes AS r ON u.usuario_id = r.usuario_id
INNER JOIN cancoes AS c ON r.cancao_id = c.cancao_id
ORDER BY usuario, nome;
