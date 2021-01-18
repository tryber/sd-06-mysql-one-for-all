CREATE VIEW cancoes_premium as 
SELECT MUSICA_NOME as `nome`, count(*) as reproducoes from SpotifyClone.musicas as mus
inner join SpotifyClone.historico as his on mus.MUSICA_ID = his.MUSICA_ID
inner join SpotifyClone.usuario as usu on usu.USUARIO_ID = his.USUARIO_ID
WHERE usu.PLANO_ID <> 1
GROUP BY  `nome`
ORDER BY `nome`;
