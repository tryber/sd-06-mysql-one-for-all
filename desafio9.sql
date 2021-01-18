DELIMITER $$
CREATE PROCEDURE albuns_do_artista(
in artista varchar(50)
) 
BEGIN -- delimitando o início do código SQL
select a.nome AS `artista`,
al.nome AS `album`
from artista AS a
inner join album AS al
on a.id = al.artista_id
where artista = a.nome;
END $$
DELIMITER ;
CALL albuns_do_artista('Walter Phoenix');
