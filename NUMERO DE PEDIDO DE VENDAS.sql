-- NUMERO DO PEDIDO DE VENDA --
SELECT C5_CLIENT, C5_NUM, C5_FILIAL, C5_EMISSAO FROM SC5010
WHERE C5_EMISSAO = '20160203' and C5_FILIAL = '01'
ORDER BY C5_NUM