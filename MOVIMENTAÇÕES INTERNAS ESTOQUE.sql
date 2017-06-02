select D_E_L_E_T_, D3_doc, D3_CUSTO1,D3_LOCAL,  * from SD3010 where d3_cod = '0811003'
and D3_EMISSAO  between '20151201' and '20151231' 

SELECT B2_CM1,B2_LOCAL from SB2010 
where b2_cod = '0202003' and B2_LOCAL = '90' and B2_FILIAL = '01'


select B1_CUSTD, B1_COD from sb1010 where b1_cod = '0202003'