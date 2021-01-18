CREATE VIEW perfil_artistas as
SELECT
  Author_Nome as `artista`,
  alb.ALBUM_NOME as `album`,
  COUNT(alb.ALBUM_ID) as `seguidores`
FROM
  SpotifyClone.albuns as alb
  INNER JOIN SpotifyClone.author as aut on aut.Author_ID = alb.Author_ID
  INNER JOIN SpotifyClone.preferencias as pref on pref.Author_ID = alb.Author_ID
group by
  `album`,
  `artista`
order by `seguidores` desc, `artista`, `album`
