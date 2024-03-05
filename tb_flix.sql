CREATE TABLE tb_flix 
(
		DATA_PLANO VARCHAR(10),
		ESTADOS VARCHAR(20),
		UF VARCHAR(10),
		TOTAL_USUARIOS INT,
		PERIODO_DE_ACESSOS VARCHAR(20),
		SEGMENTOS VARCHAR(20),
		TIPO_DE_CONTA VARCHAR(20),
		VALOR VARCHAR(10)
);

INSERT INTO tb_flix  
VALUES 
 ('01/01/2019','Acre','AC','8371','MANHA','A��O','PLANO BASICO','R$ 19,90'), 
 ('02/01/2019','Acre','AC','6766','NOITE','ANIME','PLANO BASICO','R$ 19,90'), 
 ('03/01/2019','Alagoas','AL','4264','TARDE','ANIME','PLANO PADRAO','R$ 27,90'), 
 ('04/01/2019','Amapa','AP','7792','NOITE','DOCUMENTARIOS','PLANO PREMIUM','R$ 37,90'), 
 ('05/01/2019','Amapa','AP','1583','MANHA','ANIME','PLANO PREMIUM','R$ 37,90'), 
 ('06/01/2019','Amazonas','AM','2553','MANHA','S�RIES','PLANO BASICO','R$ 19,90'), 
 ('07/01/2019','Bahia','BA','360','TARDE','TERROR','PLANO PADRAO','R$ 27,90'), 
 ('08/01/2019','Ceara','CE','8323','MANHA','DOCUMENTARIOS','PLANO BASICO','R$ 19,90'), 
 ('09/01/2019','Ceara','CE','4063','TARDE','COMEDIA','PLANO PADRAO','R$ 27,90'), 
 ('10/01/2019','Ceara','CE','3057','NOITE','DOCUMENTARIOS','PLANO BASICO','R$ 19,90'), 
 ('11/01/2019','Espirito Santo','ES','4162','TARDE','FANTASIA','PLANO BASICO','R$ 19,90'), 
 ('12/01/2019','Goias','GO','9065','MANHA','COMEDIA','PLANO PREMIUM','R$ 37,90'), 
 ('13/01/2019','Goias','GO','5215','NOITE','COMEDIA','PLANO PREMIUM','R$ 37,90'), 
 ('14/01/2019','Goias','GO','9996','TARDE','COMEDIA','PLANO PREMIUM','R$ 37,90'), 
 ('15/01/2019','Maranhao','MA','997','NOITE','FANTASIA','PLANO BASICO','R$ 19,90'), 
 ('16/01/2019','Mato Grosso','MT','9202','MANHA','ESPORTES','PLANO BASICO','R$ 19,90'), 
 ('17/01/2019','Mato Grosso','MT','3656','TARDE','DOCUMENTARIOS','PLANO PADRAO','R$ 27,90'), 
 ('18/01/2019','Mato Grosso do Sul','MS','1442','TARDE','TERROR','PLANO PREMIUM','R$ 37,90'), 
 ('19/01/2019','Minas Gerais','MG','241','NOITE','ESPORTES','PLANO PREMIUM','R$ 37,90'), 
 ('20/01/2019','Paraiba','PA','1433','NOITE','FANTASIA','PLANO PADRAO','R$ 27,90'), 
 ('21/01/2019','Paraiba','PB','7212','NOITE','DOCUMENTARIOS','PLANO PREMIUM','R$ 37,90'), 
 ('22/01/2019','Paraiba','PB','7855','TARDE','ESPORTES','PLANO PREMIUM','R$ 37,90'), 
 ('23/01/2019','Paraiba','PR','8480','NOITE','ESPORTES','PLANO PREMIUM','R$ 37,90'), 
 ('24/01/2019','Pernambuco','PE','767','MANHA','ESPORTES','PLANO PREMIUM','R$ 37,90'), 
 ('25/01/2019','Piaui','PI','2757','MANHA','A��O','PLANO PREMIUM','R$ 37,90'), 
 ('26/01/2019','Rio de Janeiro','RJ','8192','NOITE','A��O','PLANO PREMIUM','R$ 37,90'), 
 ('27/01/2019','Rio de Janeiro','RJ','2087','MANHA','A��O','PLANO PREMIUM','R$ 37,90'), 
 ('28/01/2019','Rio de Janeiro','RJ','4566','TARDE','A��O','PLANO PREMIUM','R$ 37,90'), 
 ('29/01/2019','Rio Grande do Norte','RN','9430','MANHA','A��O','PLANO PADRAO','R$ 27,90'), 
 ('30/01/2019','Rio Grande do Sul','RS','2816','TARDE','DOCUMENTARIOS','PLANO PADRAO','R$ 27,90'), 
 ('31/01/2019','Rondonia','RO','3902','TARDE','S�RIES','PLANO PADRAO','R$ 27,90'), 
 ('01/02/2019','Mato Grosso','MT','58','-','A��O','PLANO EM TESTE',' R$ -   '), 
 ('02/02/2019','Mato Grosso do Sul','MS','25','-','A��O','PLANO EM TESTE',' R$ -   '), 
 ('03/02/2019','Mato Grosso','MT','35','-','DOCUMENTARIOS','PLANO EM TESTE',' R$ -   '), 
 ('04/02/2019','Rio de Janeiro','RJ','12','-','DOCUMENTARIOS','PLANO EM TESTE',' R$ -   '), 
 ('05/02/2019','Rio Grande do Sul','RS','85','-','DOCUMENTARIOS','PLANO EM TESTE',' R$ -   ');

 SELECT * FROM tb_flix