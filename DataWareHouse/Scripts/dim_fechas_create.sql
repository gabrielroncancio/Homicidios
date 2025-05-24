-- DateWareHouse.dbo.dim_fechas definition

-- Drop table

-- DROP TABLE DateWareHouse.dbo.dim_fechas;

CREATE TABLE DateWareHouse.dbo.dim_fechas (
	Annio int NOT NULL,
	Mes tinyint NOT NULL,
	Dia tinyint NOT NULL,
	Semana tinyint NOT NULL,
	Trimestre tinyint NOT NULL,
	DiaSemana tinyint NOT NULL,
	FechaHecho date NOT NULL,
	CONSTRAINT dim_fechas_pk PRIMARY KEY (FechaHecho),
	CONSTRAINT dim_fechas_DIM_Dias_Semana_FK FOREIGN KEY (DiaSemana) REFERENCES DateWareHouse.dbo.dim_dias_semana(DiaSemana),
	CONSTRAINT dim_fechas_DIM_Trimestres_FK FOREIGN KEY (Trimestre) REFERENCES DateWareHouse.dbo.dim_trimestres(Trimestre),
	CONSTRAINT dim_fechas_dim_meses_FK FOREIGN KEY (Mes) REFERENCES DateWareHouse.dbo.dim_meses(Mes)
);