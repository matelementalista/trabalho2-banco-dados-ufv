USE trabalhobd;

SELECT nomejogo, ano_lancamento_jogo, nomeplat
FROM compativel_jogo_plataforma NATURAL JOIN jogo NATURAL JOIN plataforma
ORDER BY ano_lancamento_jogo ASC
LIMIT 1;