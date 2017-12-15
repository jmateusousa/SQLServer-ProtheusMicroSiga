select ra_nome as NOME, r8_mat AS MATRICULA, r8_dataini AS DATA_INICIAL, r8_datafim AS DATA_FINAL from sr8010, sra010
where ra_mat = r8_mat
and r8_tipo = 'Q'
and r8_dataini > '20130101'