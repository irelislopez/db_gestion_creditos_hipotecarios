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
dni VARCHAR(15) UNIQUE NOT NULL, 
fecha_nacimiento DATE NOT NULL, 
genero VARCHAR(10) NOT NULL, 
estado_civil VARCHAR(20) NOT NULL, 
situacion_laboral VARCHAR(50) NOT NULL, 
ingreso_mensual DECIMAL(10,2) NOT NULL,
);

-- Creación de la tabla "vivienda"
CREATE TABLE vivienda (
id INT IDENTITY(1,1) PRIMARY KEY, 
direccion VARCHAR(255) NOT NULL, 
distrito VARCHAR(100) NOT NULL, 
provincia VARCHAR(100) NOT NULL, 
departamento VARCHAR(100) NOT NULL,
tipo VARCHAR(100) NOT NULL,
valor DECIMAL(10,2) NOT NULL, 
);

-- Creación de la tabla "bono_fmv"
CREATE TABLE bono_fmv (
id INT IDENTITY(1,1) PRIMARY KEY, 
tipo_bono_fmv VARCHAR(3) NOT NULL,
);

-- Creación de la tabla "entidad_financiera"
CREATE TABLE entidad_financiera (
id INT IDENTITY(1,1) PRIMARY KEY, 
nombre VARCHAR(100) NOT NULL, 
ruc INT NOT NULL, 
direccion VARCHAR(255) NOT NULL, 
);

--Creación de la tabla "credito"
CREATE TABLE credito (
id INT IDENTITY(1,1) PRIMARY KEY,
monto DECIMAL(10,2) NOT NULL,
tasas_de_interes DECIMAL(10,2) NOT NULL, 
plazo_meses INT NOT NULL, 
fecha_desembolso DATE NOT NULL, 
beneficiario_id INT, 
entidad_financiera_id INT,
vivienda_id INT, 
bono_fmv_id INT, 
);