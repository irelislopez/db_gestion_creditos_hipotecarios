-- Creación base de datos
CREATE DATABASE db_gestion_creditos_hipotecarios;
GO

USE db_gestion_creditos_hipotecarios;
GO

/**/
-- Creación de la tabla "beneficiario"

DROP TABLE IF EXISTS beneficiario
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
DROP TABLE IF EXISTS vivienda
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
DROP TABLE IF EXISTS bono_fmv
CREATE TABLE bono_fmv (
id INT IDENTITY(1,1) PRIMARY KEY, 
tipo_bono_fmv VARCHAR(10) NOT NULL,
);

-- Creación de la tabla "entidad_financiera"
DROP TABLE IF EXISTS entidad_financiera
CREATE TABLE entidad_financiera (
id INT IDENTITY(1,1) PRIMARY KEY, 
nombre VARCHAR(100) NOT NULL, 
ruc VARCHAR NOT NULL, 
direccion VARCHAR(255) NOT NULL, 
);

-- Creación de la tabla "actividad_credito"
DROP TABLE IF EXISTS actividad_credito
CREATE TABLE actividad_credito (
id INT IDENTITY(1,1) PRIMARY KEY, 
plazo_meses INT  NOT NULL, 
fecha_pago DATE NOT NULL, 
monto_pagado_principal DECIMAL(10,2) NOT NULL, 
monto_pagado_interes DECIMAL(10,2) NOT NULL,
monto_total_pendiente DECIMAL(10,2) NOT NULL,
);

--Creación de la tabla "credito"
DROP TABLE IF EXISTS credito
CREATE TABLE credito (
id INT IDENTITY(1,1) PRIMARY KEY,
monto DECIMAL(10,2) NOT NULL,
tasa_de_interes DECIMAL(10,2) NOT NULL, 
beneficiario_id INT, 
entidad_financiera_id INT,
vivienda_id INT, 
bono_fmv_id INT, 
actividad_credito INT,
);

CONSTRAINT fk_credito_beneficiario FOREIGN KEY (beneficiario_id) REFERENCES beneficiario (id),
CONSTRAINT fk_credito_entidad_financiera FOREIGN KEY (entidad_financiera_id) REFERENCES entidad_financiera (id),
CONSTRAINT fk_credito_vivienda FOREIGN KEY (vivienda_id) REFERENCES vivienda (id),
CONSTRAINT fk_credito_bono_fmv FOREIGN KEY (bono_fmv_id) REFERENCES bono_fmv (id),
CONSTRAINT fk_credito_actividad_credito  FOREIGN KEY (actividad_credito_id) REFERENCES actividad_credito (id),
);

--EXEC SP_HELP credito

