-- DateWareHouse.dbo.dim_dias_semana definition

-- Drop table

-- DROP TABLE DateWareHouse.dbo.dim_dias_semana;

CREATE TABLE DateWareHouse.dbo.dim_dias_semana (
	DiaSemana tinyint IDENTITY(1,1) NOT NULL,
	NomDiaSemana nvarchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	NomCortoDiaSemana char(3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	CONSTRAINT DIM_Dias_Semana_PK PRIMARY KEY (DiaSemana)
);