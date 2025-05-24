INSERT INTO DateWareHouse.dbo.dim_municipios
(CodDpto, CodMpio, NomMpio, Latitud, Longitud)
SELECT COD_DPTO, COD_MPIO, NOM_MPIO, LATITUD, LONGITUD
FROM DataLake.dbo.dl_municipios
