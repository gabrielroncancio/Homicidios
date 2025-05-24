INSERT INTO DateWareHouse.dbo.dim_departamentos
(CodDpto, NomDpto, Latitud, Longitud)
SELECT COD_DPTO, NOM_DPTO, LATITUD, LONGITUD
FROM DataLake.dbo.dl_departamentos