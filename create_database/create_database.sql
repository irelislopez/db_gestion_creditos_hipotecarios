-- Creación base de datos
CREATE DATABASE db_gestion_creditos_hipotecarios;
GO

USE db_gestion_creditos_hipotecarios;
GO

/**/
-- Creación de la tabla "beneficiario"
CREATE TABLE beneficiario (
id INT IDENTITY(1,1) PRIMARY KEY,
nombres VARCHAR(155) NOT NULL, 
apellidos VARCHAR(155) NOT NULL, 
dni VARCHAR(15) NOT NULL, 
fecha_nacimiento DATE NOT NULL, 
genero VARCHAR(10) NOT NULL, 
estado_civil VARCHAR(100) NOT NULL, 
situacion_laboral VARCHAR(100) NOT NULL, 
ingreso_mensual DECIMAL(38) NOT NULL,
);
