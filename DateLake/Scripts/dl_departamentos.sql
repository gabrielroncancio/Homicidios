-- DateWareHouse.dbo.fac_homicidios definition

-- Drop table

-- DROP TABLE DateWareHouse.dbo.fac_homicidios;

CREATE TABLE DataLake.dbo.dl_departamentos (
	COD_DPTO tinyint NULL,
	NOM_DPTO varchar(250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	LATITUD float NULL,
	LONGITUD float NULL,
	[Geo Departamento] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
);
