-- DateWareHouse.dbo.dim_meses definition

-- Drop table

-- DROP TABLE DateWareHouse.dbo.dim_meses;

CREATE TABLE DateWareHouse.dbo.dim_meses (
	Mes tinyint IDENTITY(1,1) NOT NULL,
	NomMes nvarchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	NomCortoMes char(3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	CONSTRAINT DIM_Meses_PK PRIMARY KEY (Mes)
);