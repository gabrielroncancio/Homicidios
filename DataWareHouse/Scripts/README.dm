## Scripts

Contiene los comandos SQL para la creación e inserción de datos en las tablas de dimensiones y hechos del Data Warehouse, diseñadas en un esquema en copo de nieve para soportar el análisis de homicidios en Colombia. Los scripts se ejecutan en un orden específico debido a las dependencias y relaciones entre las tablas.

### Orden de Ejecución de Scripts

1. ** dim_departamentos_create.sql**: Crea la tabla de dimensión `dim_departamentos`, que almacena los códigos y nombres de los departamentos de Colombia.  
2. ** dim_departamentos_insert.sql**: Inserta los datos transformados desde el archivo `dl_departamentos.csv` en la tabla `dim_departamentos`.  
3. ** dim_municipios_create.sql**: Crea la tabla de dimensión `dim_municipios`, que almacena los códigos y nombres de los municipios, con una relación a `dim_departamentos` mediante una clave foránea.  
4. ** dim_municipios_insert.sql**: Inserta los datos transformados desde el archivo `dl_municipios.csv` en la tabla `dim_municipios`.  
5. ** dim_sexos_create.sql**: Crea la tabla de dimensión `dim_sexos`, que almacena las categorías de sexo (por ejemplo, masculino, femenino).  
6. ** dim_sexos_insert.sql**: Inserta los datos de las categorías de sexo en la tabla `dim_sexos`.  
7. ** dim_zonas_create.sql**: Crea la tabla de dimensión `dim_zonas`, que almacena las zonas geográficas (por ejemplo, urbana, rural).  
8. ** dim_zonas_insert.sql**: Inserta los datos de las zonas geográficas en la tabla `dim_zonas`.  
9. ** dim_dias_semana_create.sql**: Crea la tabla de dimensión `dim_dias_semana`, que almacena los días de la semana.  
10. ** dim_dias_semana_insert.sql**: Inserta los datos de los días de la semana en la tabla `dim_dias_semana`.  
11. ** dim_meses_create.sql**: Crea la tabla de dimensión `dim_meses`, que almacena los meses del año.  
12. ** dim_meses_insert.sql**: Inserta los datos de los meses en la tabla `dim_meses`.  
13. ** dim_trimestres_create.sql**: Crea la tabla de dimensión `dim_trimestres`, que almacena los trimestres del año.  
14. ** dim_trimestres_insert.sql**: Inserta los datos de los trimestres en la tabla `dim_trimestres`.  
15. ** dim_fechas_create.sql**: Crea la tabla de dimensión `dim_fechas`, que almacena atributos temporales (año, mes, día, etc.) derivados de las fechas de los homicidios, con relaciones a `dim_meses`, `dim_dias_semana` y `dim_trimestres`.  
16. ** dim_fechas_insert.sql**: Inserta los datos transformados de fechas en la tabla `dim_fechas`.  
17. ** fac_homicidios_create.sql**: Crea la tabla de hechos `fac_homicidios`, que registra los homicidios con métricas como el número de víctimas, incluyendo claves foráneas a las tablas de dimensiones (`dim_departamentos`, `dim_municipios`, `dim_fechas`, `dim_sexos`, `dim_zonas`).  
18. ** fac_homicidios_insert.sql**: Inserta los datos transformados desde el archivo `dl_homicidios.csv` en la tabla `fac_homicidios`.

### Notas sobre el Orden de Ejecución
El orden de ejecución respeta las dependencias entre las tablas. Las tablas de dimensiones (`dim_departamentos`, `dim_sexos`, `dim_zonas`, `dim_dias_semana`, `dim_meses`, `dim_trimestres`) deben crearse y poblarse antes que `dim_municipios` y `dim_fechas` debido a las relaciones de claves foráneas. La tabla de hechos `fac_homicidios` se crea y pobla al final, ya que depende de todas las tablas de dimensiones.
