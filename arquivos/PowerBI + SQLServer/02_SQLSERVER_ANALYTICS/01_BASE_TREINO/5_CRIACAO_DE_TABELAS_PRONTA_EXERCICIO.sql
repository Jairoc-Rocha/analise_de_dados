



--=======================================
    --EXERCICIOS VIEWS + CRIA��O DE TABELA
--=======================================

--primeira para do exercicio CRIAR UMA TABELA FISICA TRATANDO SO CAMPOS COM OS TIPOS DE DADOS

CREATE TABLE VENDAS_ATUALIZADA
		(
		 CUPOM			INT		
		,DATA			DATE
		,VENDEDOR		VARCHAR(255)
		,VALOR_VENDA	DECIMAL(18,2)
		)

INSERT INTO VENDAS_ATUALIZADA -- INTO NO COME�O DA TABELA PRECISAMOS DE UMA TABELA J� CRIADA
SELECT	 
		 CUPOM			
		,DATA			
		,VENDEDOR		
		,VALOR_VENDA	
FROM	TB_VENDAS02


--=============================================

--DROP VIEW VW_VENDAS_ATUALIZADA


CREATE VIEW VW_VENDAS_ATUALIZADA AS
SELECT	
	--	DATA_VENDA
		SUM(VALOR_VENDA) AS 'VALOR VENDAS'
		,DATA
		,VENDEDOR
		,FORMAT(DATA, 'yyyy') AS ANO
		,CUPOM 
FROM	VENDAS_ATUALIZADA
WHERE CUPOM 
BETWEEN '00000002' AND '00003080'
GROUP BY DATA, VENDEDOR, CUPOM



SELECT *
FROM VW_VENDAS_ATUALIZADA

SELECT *
FROM VENDAS_ATUALIZADA
--=======================================================================