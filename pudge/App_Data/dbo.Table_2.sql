CREATE TABLE [dbo].[tcarrera] (
    [codigo_carrera]   VARCHAR (3)   NOT NULL,
    [nombre_carrera]   VARCHAR (120) NULL,
    [facultad_carrera] VARCHAR (100) NULL,
    PRIMARY KEY CLUSTERED ([codigo_carrera] ASC)
);