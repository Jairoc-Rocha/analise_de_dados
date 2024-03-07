USE [Recompwin237]
GO
/****** Object:  StoredProcedure [dbo].[sp_App_Arq_Cust_120]    Script Date: 01/12/2023 10:25:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/*    
-------------------------------------------------------------------------------------------    
Procedure    - sp_App_Arq_Cust_120
  
Descrição    - Lista as Remessas ou Qtde de Docs e Soma para gerar o arquivo de saída dos   registros de sobra logica do movimento
Autor        - CSC
Data         - 20/05/2013  
-------------------------------------------------------------------------------------------    
Aplicativos  
-------------------------------------------------------------------------------------------    
Controle de versão  
------------------------------------------------------------------------------------------- 
sp_App_Arq_Cust_120 269, -1, 0  
------------------------------------------------------------------------------------------- 
*/
  
ALTER proc [dbo].[sp_App_Arq_Cust_120] (@InidMov int, @inParametro int, @inFlgVal int, @idproduto int)  
as  
  
 set nocount on  
 if @inParametro != -1  
 begin     
  select  
    count(doc.iniddoc)  as Pai,  
    0        as Lote,   
    0      as Destino,  
    sum(doc.dcvalbat)  as Total   
  
	FROM 
		TblMLoteEntr AS le WITH(NOLOCK),
		TblmDoc AS doc WITH(NOLOCK)
	WHERE
			le.inIdmov			= @InidMov 
		AND	doc.inIdMov			= le.inIdMov
		AND doc.inIdLoteEntr	= le.inIdLoteEntr
		AND doc.btDel			= 0 
		AND doc.inIdStat		in (230, 240)
		AND le.inIdRem = @inParametro
  order by Pai, lote, Destino, Total  
 end  
 else  
 begin  
  /*++++++++++++++++++++++++++++++++++++++++++++++++++++  
     Não listar remessa que não tenha lote e  
     não listar lote que não tenha documento  
  //++++++++++++++++++++++++++++++++++++++++++++++++++++    
  */  
  select distinct RTRIM(REPLICATE('0',3-LEN(ISNULL(le.inidrem, 0))) + CONVERT(CHAR,ISNULL(le.inidrem,0))) + ' - ' + rem.vcRotulo as 'inIdRem'
	FROM 
		TblMLoteEntr AS le WITH(NOLOCK),
		TblmDoc AS doc WITH(NOLOCK),
   		TblMRem as rem with (nolock)	
	WHERE
		    le.inIdmov			= @InidMov 
		AND doc.inIdMov			= le.inIdMov
		AND doc.inIdLoteEntr	= le.inIdLoteEntr
		AND doc.btDel			= 0 
		AND doc.inIdStat		IN (230, 240)
  		and rem.inidmov = doc.inidmov
		and rem.inidrem = le.inidrem
		and rem.inIdStat = 1720 
		--and rem.inIdRem	NOT IN (SELECT inIdRemessa FROM TblMVersaoRemessa WITH (NOLOCK) WHERE inIdMov = @InidMov AND btDel = 0)

  order by 'inIdRem'
 
 end  
   
   
 set nocount off
