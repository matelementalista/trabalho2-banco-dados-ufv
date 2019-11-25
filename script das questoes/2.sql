USE trabalhobd;

SELECT nomeplat, ano_lancamento
FROM plataforma NATURAL JOIN fabricante
WHERE ano_fundacao>1970;