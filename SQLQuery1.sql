create view alumnoXcarrera
as
SELECT        dbo.testudiante.codigo_estudiante, dbo.testudiante.nombre_estudiante, dbo.testudiante.ap_estudiante, dbo.testudiante.am_estudiante, dbo.testudiante.correo_estudiante, dbo.tcarrera.nombre_carrera
FROM            dbo.tcarrera INNER JOIN
                         dbo.testudiante ON dbo.tcarrera.codigo_carrera = dbo.testudiante.codigo_carrera