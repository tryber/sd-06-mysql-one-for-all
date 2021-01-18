CREATE VIEW top_3_artistas as
SELECT
  Author_Nome as artista,
  COUNT(*) as seguidores
from
  preferencias as pref
  INNER JOIN SpotifyClone.author as aut on aut.Author_ID = pref.Author_ID
group by
  pref.Author_ID
order by
  seguidores desc, artista
LIMIT
  3
