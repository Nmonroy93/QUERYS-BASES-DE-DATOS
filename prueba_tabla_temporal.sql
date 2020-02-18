 


CREATE TABLE #temp_para_texto  
(  
   tipo_registro  INT ,  
	Nit_beneficiario INT,
	Nombre_beneficiario NVARCHAR(4000),
	Banco_cuenta_del_beneficiario INT,
	Número_cuenta_beneficiario INT,
	Indicador_lugar_de_pago INT,
	Tipo_transacción INT,
	Valor_de_transacción INT,
	concepto NVARCHAR(4000),
);  
 
insert into #temp_para_texto(tipo_registro,Nit_beneficiario,Nombre_beneficiario,Banco_cuenta_del_beneficiario,
Número_cuenta_beneficiario,Indicador_lugar_de_pago,Tipo_transacción,Valor_de_transacción,concepto
) values
(6, 000001006840397, 'RAMIREZ MANJARREZ', 005600078, 00000016829140431, 0, 37, 0000405710, 'NOMINA'),
(6, 000001014258308, 'A GUTIERREZ CAMERO', 005600078, 00000016815685524, 0, 37, 0000231377, 'NOMINA'),
(6, 000000011255635 ,'DO CAICEDO SANCHEZ', 005600078 ,00000003320440563, 0 ,37, 0000346470,   'NOMINA'),            
(6, 000001019041423 ,'ER RAMIREZ NIVIAYO' ,005600078, 00000066295952491, 0 ,37, 0000388550 ,  'NOMINA'),             
(6, 000001014178706 ,'IA PINILLA GRANADA' ,005600078 ,00000017814419657, 0, 37, 0000399671   ,'NOMINA')     
           

		   select * from #temp_para_texto 
		  

	--	   update #temp_para_texto set tipo_registro=6, Nit_beneficiario=000001006840397, 
 --Nombre_beneficiario='RAMIREZ MANJARREZ',Banco_cuenta_del_beneficiario=005600078,Número_cuenta_beneficiario=00000016829140431,
 --Indicador_lugar_de_pago= 0,Tipo_transacción= 37,Valor_de_transacción= 0000405710,concepto= 'NOMINA'