-- DateWareHouse.dbo.din_sexo definition

-- Drop table

-- DROP TABLE DateWareHouse.dbo.din_sexo;

CREATE TABLE DateWareHouse.dbo.din_sexo (
	IdSexo tinyint IDENTITY(1,1) NOT NULL,
	NomSexo nvarchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	CONSTRAINT din_sexo_pk PRIMARY KEY (IdSexo)
);