SELECT * FROM TB_VENDAS

--=========CRIA��O DE TABELA VIRTUAL COM TABELA FISICA --======================================================

--========1� PASSO - CRIAR A TABELA VIRTUAL PARA RECEBER OS REGISTROS--========================================
--========2� PASSO - CRIAR O INSERT INTO PARA INSERIR OS REGISTROS NA TABELA VIRTUAL CRIADA --=================
--========3� PASSO CRIAR SELECT QUE IR� PARA A NOVA TABELA---================================================== 

CREATE TABLE RELATORIO_NOVO
(
	LOJA					INT,
	CUPOM					INT,
	DATA					DATE,
	COD_CLIENTE				VARCHAR(255),
	VENDEDOR				VARCHAR(255),
	QUANTIDADE				INT,
	VALOR_VENDA				DECIMAL(18,2),
	VALOR_PAGO				DECIMAL(18,2),
	VALOR_CANCELADO			DECIMAL(18,2)
)


INSERT INTO RELATORIO_NOVO



SELECT
	LOJA,
	CUPOM,
	DATA,
	COD_CLIENTE,
	VENDEDOR,
	QUANTIDADE,
	VALOR_VENDA	,
	VALOR_PAGO,
	VALOR_CANCELADO
FROM TB_VENDAS


SELECT * FROM RELATORIO_NOVO