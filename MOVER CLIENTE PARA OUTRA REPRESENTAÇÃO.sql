--CONSULTAR CLIENTE
SELECT A1_COD, A1_NOME, A1_NREDUZ, A1_CGC, A1_EST, A1_MUN, A1_END, A1_CEP, A1_TEL FROM SA1010
WHERE A1_COD = '010845'

--MOVER CLIENTE PARA OUTRO REPRESENTANTE

BEGIN TRAN
update sa1010 set a1_vend = '000146' where a1_cod in '010845'

commit;