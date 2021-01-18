
CREATE VIEW top_2_hits_do_momento as
SELECT
  MUSICA_NOME as cancao,
  COUNT(*) as reproducoes
from
  historico as his
  INNER JOIN musicas on musicas.MUSICA_ID = his.MUSICA_ID
group by
  his.MUSICA_ID
order by
  reproducoes desc,
  cancao 
LIMIT 2
