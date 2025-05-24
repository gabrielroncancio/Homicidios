set datefirst 1;


INSERT into DateWareHouse.dbo.dim_fechas
(Annio,Mes,Dia,Semana,Trimestre,DiaSemana,FechaHecho)
SELECT DISTINCT 
YEAR (FECHA_HECHO), 
month(FECHA_HECHO),
DAY(FECHA_HECHO),
DATEPART(week,FECHA_HECHO),
DATEPART(quarter,FECHA_HECHO),
DATEPART(weekday,FECHA_HECHO),
FECHA_HECHO 
FROM DataLake.dbo.dl_homicidios 
