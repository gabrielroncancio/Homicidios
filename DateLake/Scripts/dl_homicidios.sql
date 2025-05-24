-- DateWareHouse.dbo.fac_homicidios definition

-- Drop table

-- DROP TABLE DateWareHouse.dbo.fac_homicidios;

CREATE TABLE DateWareHouse.dbo.fac_homicidios (
	IdHomicidios int IDENTITY(1,1) NOT NULL,
	FechaHecho date NOT NULL,
	CodMpio int NOT NULL,
	IdZona tinyint NOT NULL,
	IdSexo tinyint NOT NULL,
	Cantidad tinyint NOT NULL,
	CONSTRAINT fac_homicidios_pk PRIMARY KEY (IdHomicidios),
	CONSTRAINT fac_homicidios_dim_fechas_FK FOREIGN KEY (FechaHecho) REFERENCES DateWareHouse.dbo.dim_fechas(FechaHecho),
	CONSTRAINT fac_homicidios_dim_municipios_FK FOREIGN KEY (CodMpio) REFERENCES DateWareHouse.dbo.dim_municipios(CodMpio),
	CONSTRAINT fac_homicidios_dim_zonas_FK FOREIGN KEY (IdZona) REFERENCES DateWareHouse.dbo.dim_zonas(IdZona),
	CONSTRAINT fac_homicidios_din_sexo_FK FOREIGN KEY (IdSexo) REFERENCES DateWareHouse.dbo.din_sexo(IdSexo)
);