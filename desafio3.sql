CREATE VIEW historico_reproducao_usuarios AS
SELECT 
U.nome_usuario AS usuario
FROM usuarios AS U
INNER JOIN 
  FROM sakila.address AS A
  INNER JOIN sakila.city AS C
  ON C.city_id = A.city_id
  ORDER BY C.city;