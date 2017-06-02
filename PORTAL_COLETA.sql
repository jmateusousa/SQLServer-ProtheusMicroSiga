SELECT C5_NUM AS PEDIDO, A4_NOME AS TRANSPORTADORA, C5_D2TRANS AS DATA_SAIDA, str(sum(c6_unsven)) as CAIXAS, str(sum(c6_qtdven)) as UNIDADES, sum(c6_qtdven*b1_peso) as PESO, A1_MUN AS CIDADE, A1_EST AS UF, A1_NOME AS CLIENTE, C5_OBSPED1 AS STATUS, cast(cast(C5_ETIQUET as varbinary(max))as varchar(max)) AS ETIQUETA 
FROM sc6010,sb1010, SC5010, sa4010, sa1010
WHERE C5_NUM = C6_NUM
AND C5_CLIENT = A1_COD
AND C5_NUM = '067193'		
AND C5_TRANSP = A4_COD
AND b1_cod = c6_produto
AND sb1010.d_e_l_e_t_ <> '*' 
AND sc6010.d_e_l_e_t_ <> '*'
AND A1_COD <> '004273'
AND A1_COD <> '007288'
AND A1_COD <> '007289'
GROUP BY C5_NUM, A4_NOME, C5_D2TRANS, A1_MUN, A1_EST, A1_NOME, C5_OBSPED1, cast(cast(C5_ETIQUET as varbinary(max))as varchar(max))
ORDER BY C5_NUM, A4_NOME, C5_D2TRANS, A1_MUN, A1_EST, A1_NOME, C5_OBSPED1, cast(cast(C5_ETIQUET as varbinary(max))as varchar(max))

UPDATE SC5010 SET C5_OBSPED1 = '".$status."' WHERE C5_NUM = '".$pedido."';



