-- aqui criamos uma view que exibe as colunas: cancoes, artistas e albuns (com a quantidade de cada)
CREATE VIEW estatisticas_musicais AS
SELECT 
(SELECT COUNT(cancao) FROM cancoes) AS cancoes,
(SELECT COUNT(artista) FROM artistas) AS artistas,
(SELECT COUNT(album) FROM albuns) AS albuns;
