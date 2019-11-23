USE trabalhobd;

SELECT DISTINCT nomeplat
FROM plataforma NATURAL JOIN compativel_midia NATURAL JOIN midia
WHERE velocidade_leitura>100;