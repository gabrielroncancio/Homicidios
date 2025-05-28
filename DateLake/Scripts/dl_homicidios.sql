-- DateWareHouse.dbo.fac_homicidios definition

-- Drop table

-- DROP TABLE DateWareHouse.dbo.fac_homicidios;

CREATE TABLE DataLake.dbo.dl_homicidios (
	[FECHA HECHO] date NULL,
	COD_DEPTO tinyint NULL,
	DEPARTAMENTO varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	COD_MUNI tinyint NULL,
	MUNICIPIO varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	ZONA varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	SEXO varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	CANTIDAD tinyint NULL
);
