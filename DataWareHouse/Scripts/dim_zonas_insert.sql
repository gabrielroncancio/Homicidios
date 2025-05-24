INSERT INTO  DateWareHouse.dbo.dim_zonas
(nomZona)
SELECT DISTINCT ZONA
FROM DataLake.dbo.dl_homicidios
ORDER BY ZONA