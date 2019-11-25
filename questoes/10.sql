USE trabalhobd;

SELECT DISTINCT nomefab
FROM (SELECT *, COUNT(*) as qnt_midia_diferente
		FROM fabricante NATURAL JOIN plataforma NATURAL JOIN compativel_midia
		GROUP BY idmidia) AS subconsulta
WHERE qnt_midia_diferente>1;