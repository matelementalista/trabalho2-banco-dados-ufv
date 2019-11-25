USE trabalhobd;

SELECT ano_lancamento_jogo, COUNT(*) AS numero_jogos
FROM compativel_jogo_plataforma
GROUP BY ano_lancamento_jogo
ORDER BY ano_lancamento_jogo ASC;