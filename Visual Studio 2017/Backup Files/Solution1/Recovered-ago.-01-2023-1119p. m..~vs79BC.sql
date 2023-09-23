select * from SERSOC



SELECT * FROM BIENES_USO

BEGIN --INSERTAR PRODUCTOS --
  DECLARE @COD_PRO AS INT = (SELECT MAX(COD_PRO) FROM PROD_SER )
INSERT INTO PROD_SER
SELECT
           [COD_PRO] = @COD_PRO + ROW_NUMBER() OVER (ORDER BY COD_PRO)
           ,[COD_RUB]= null 
           ,[DES_PRO]= des_pro
           ,[DES_FOR]= des_pro
           ,[UNI_MED]= ''
           ,[STO_MIN]= 0 
           ,[STO_MAX] = 10
           ,[STO_ACT] = 1
           ,[ALM_FIS] = ''
           ,[PRE_CSI] = 10
           ,[PRE_VSI] = 11
           ,[IVA_EXE] = ''
           ,[IVA_DIF1] = ''
           ,[IVA_DIF2] = ''
           ,[IVA_GRAL] = ''
           ,[PROD_SERV] = ''
           ,[ACCIONES] = ''
           ,[COD_ALI] = 1
           ,[LLE_STO] = 0
           ,[PRE_PER] = 10
           ,[ORD_FAC1] = null
           ,[ORD_FAC2] = 10
           ,[ID_REQUE] = ''
           ,[COD_BAR] = ''
           ,[DES_RED] =  ''
           ,[CAN_REP] = 10
           ,[CAN_BUL] = 0
           ,[BULTOS] = 1
           ,[COD_DPT] = 10
           ,[PRE_COM2] = 11
           ,[IMP_INT] = 1
           ,[FLETE] = 5
           ,[DTO1] = 2
           ,[DTO2] = 2
           ,[DTO3] = 2
           ,[DTO4] = 2
           ,[DTO5] = 2
           ,[BONIFICA] = 5
           ,[REC1] = 3
           ,[MGEN_SUP] = 5
           ,[MGEN_MAY] = 5
           ,[MGEN_MAY2] = 5
           ,[PRE_VENM] = 5
           ,[PRE_VENM2] = 0
           ,[COD_PROV] = 1
           ,[ENVASE] = 1
           ,[BALANZA] = 0
           ,[COMBO] = 0
           ,[COSTO_TOT] = 0
           ,[PRE_OFER] = 0
           ,[FEC_OFER] = null
           ,[ACTIVO] = 0
           ,[SUC_ALTA] = 1
           ,[USU_REG] = 0
           ,[FEC_REG] = null 
           ,[HOR_REG] = 0
           ,[FEC_PRECIO] = null
           ,[OLD_PRES] = 0
           ,[OLD_PREM] = 0
           ,[OLD_PREM2] = 0
           ,[FEC_MOD] = null
           ,[HOR_MOD]=''
           ,[USU_MOD]= ''
           ,[MATRICULA] = ''
           ,[COD_TIP] = 0
           ,[MONEDA] = 1
           ,[COSTO_TOT2] = 0
           ,[COD_PRC] = 1
           ,[TIP_PRO] = 1
           ,[OBSERVAC] = ''
           ,[BIEN_USO] = 1
           ,[COD_ENGAS] = 1
           ,[COD_ALB] = 1 
           ,[ORD_FAC3] = 1
           ,[PRE_REF] = 0
           ,[PMOVIL_MODULO] = 1
           ,[COD_SER] = 1
           ,[TIPO_REVALUO] =1
           ,[REVALUACION] =1 
           ,[ID_CLASIFICACION] =null
           ,[APLICA_UNA_VEZ] = 0
           ,[APLICA_VENTAPRODUCTOS] = 0
           ,[GRUPO_CERO] = 0
      from Bienes_Uso..BOL_Migración_BienesDeUso_1
	  where cod_pro not in (select COD_PRO from PR_JU..PROD_SER)



END



INSERT INTO BIENES_USO
      SELECT
            [COD_BIEN] = 1 + ROW_NUMBER() over (order by cod_pro)
           ,[NRO_BIEN] = NÚMERO
           ,[DES_BIEN] = DESCRIPCION
           ,[OBS_BIEN] = OBS_BIEN
           ,[NRO_SERIE] = NÚMERO
           ,[COD_PRO] = COD_PRO ---SELECT COD_PRO from prod_ser
           ,[FEC_ALTA] = GETDATE()
           ,[USER_ALTA] = 1
           ,[FEC_COMPRA]  = CONVERT(DATETIME,CONVERT(DATE,FEC_COMPRA))
           ,[IVACOM_IN] = NULL
           ,[FEC_AFECTA] = CONVERT(DATETIME,CONVERT(DATE,FEC_AFECTA))
           ,[FEC_BAJA] = NULL
           ,[IMP_ORIGEN] = 0-- IMP_ORIGEN // ULT_IMP_ORIGEN  
           ,[VIDA_UTIL] = 0--VIDA_UTIL
           ,[PORC_AMORT] = 0--[% AMORTI]
           ,[IMP_RECU] = 0
           ,[COD_SEC] = COD_SEC
           ,[ULT_IMP_ORIGEN] = 0 
           ,[ULT_IMP_AMORT] = 0
           ,[AMOR_ACUM] =0-- [ AMOR_ACUM // ULT_IMP_AMORT ]
           ,[ALTA_CONTAB] = 0 
           ,[BAJA_CONTAB] = 0 
           ,[COD_MOV_PRO] = NULL
           ,[IVACOM_OUT] = NULL
           ,[MEJORA] = NULL
           ,[COD_BIEN_MEJORA] = NULL
		   select FEC_AFECTA --,FEC_AFECTA= 
		  -- update Bienes_Uso..BOL_Migración_BienesDeUso_1 set 
		  -- [ AMOR_ACUM // ULT_IMP_AMORT ]=0
		FROM bienes_uso..BOL_Migración_BienesDeUso_1
		WHERE ISDATE(FEC_AFECTA)=0
		--WHERE-- PATINDEX('%[^ 0-9A-Za-z]%',REPLACE(FEC_AFECTA,'/',''))> 0
		--ISDATE(CONVERT(DATETIME,CONVERT(DATE,CONVERT(VARCHAR,FEC_AFECTA))))>0
		ORDER BY FEC_AFECTA ASC --7-2-2023
		--where [ AMOR_ACUM // ULT_IMP_AMORT ]=' - '
		--1-1-2013
		SELECT * 
		UPDATE Bienes_Uso..BOL_Migración_BienesDeUso_1
		SET FEC_AFECTA=REPLACE(FEC_AFECTA,'/','-')
		FROM Bienes_Uso..BOL_Migración_BienesDeUso_1

		--56,935,380.54

		SELECT [ AMOR_ACUM // ULT_IMP_AMORT ],
		--UPDATE Bienes_Uso..BOL_Migración_BienesDeUso_1 SET
		[ AMOR_ACUM // ULT_IMP_AMORT ]=REPLACE(REPLACE([ AMOR_ACUM // ULT_IMP_AMORT ],'.','-'),',','.')
		--INTO _BIENES_DE_USO
		FROM Bienes_Uso..BOL_Migración_BienesDeUso_1
		--56.935.380-54
		SELECT 
		UPDATE Bienes_Uso..BOL_Migración_BienesDeUso_1 SET
		[ AMOR_ACUM // ULT_IMP_AMORT ]=REPLACE(REPLACE([ AMOR_ACUM // ULT_IMP_AMORT ],'.',''),'-',',')
		--INTO _BIENES_DE_USO
		FROM Bienes_Uso..BOL_Migración_BienesDeUso_1


		SELECT FEC_AFECTA=CONVERT(DATE,FEC_AFECTA)
		FROM Bienes_Uso..BOL_Migración_BienesDeUso_1
