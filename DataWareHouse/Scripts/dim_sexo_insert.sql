INSERT INTO DateWareHouse.dbo.din_sexo
(NomSexo)
SELECT DISTINCT SEXO
FROM DataLake.dbo.dl_homicidios
ORDER BY SEXO