SELECT DISTINCT FECHA_HECHO 
From DataLake.dbo.dl_homicidios
ORDER BY FECHA_HECHO asc

INSERT INTO DateWareHouse.dbo.fac_homicidios
(FechaHecho, CodMpio, IdZona, IdSexo, Cantidad)
SELECT FECHA_HECHO
	, COD_MUNI
	, (SELECT IdZona FROM DateWareHouse.dbo.dim_zonas WHERE nomZona = H.ZONA)
	, (SELECT IdSexo FROM DateWareHouse.dbo.din_sexo WHERE NomSexo = H.SEXO)
	, CANTIDAD
FROM DataLake.dbo.DL_Homicidios AS H