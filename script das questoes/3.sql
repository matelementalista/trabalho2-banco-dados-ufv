USE trabalhobd;

SELECT nomemid, velocidade_leitura 
FROM midia 
WHERE velocidade_leitura>10 AND velocidade_leitura<30
ORDER BY velocidade_leitura DESC, nomemid ASC;