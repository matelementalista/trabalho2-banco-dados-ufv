USE trabalhobd;

SELECT nomeplat, nomefab, SUM(quantidade) AS numero_jogos
FROM plataforma NATURAL JOIN fabricante NATURAL JOIN compativel_jogo_plataforma
GROUP BY nomeplat;