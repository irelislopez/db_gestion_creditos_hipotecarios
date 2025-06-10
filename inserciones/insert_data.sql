USE db_gestion_creditos_hipotecarios;
GO

--Inserción de datos: siguen mismas reglas de la creación de tabla: por # orden

-- 1.Tabla: beneficiario
SELECT*FROM beneficiario;

INSERT INTO beneficiario (nombres, apellidos, dni, fecha_nacimiento, genero, estado_civil, situacion_laboral, ingreso_mensual)
VALUES 
('Luis', 'Ramírez', '70890012', '1985-03-21', 'Masculino', 'Casado', 'Dependiente', 4800.00),
('Carmen', 'Lopez', '45879021', '1991-06-30', 'Femenino', 'Soltera', 'Independiente', 3500.00),
('Jorge', 'Vallejos', '20987654', '1987-08-15', 'Masculino', 'Viudo', 'Dependiente', 4000.00),
('Paola', 'Gutiérrez', '30981234', '1995-01-10', 'Femenino', 'Soltera', 'Dependiente', 3100.00),
('Carlos', 'Mendoza', '10981234', '1990-11-11', 'Masculino', 'Casado', 'Independiente', 5200.00),
('Andrea', 'Vásquez', '65432178', '1988-05-05', 'Femenino', 'Casada', 'Dependiente', 4600.00);

-- 2.Tabla: vivienda
SELECT*FROM vivienda;

INSERT INTO vivienda (direccion, distrito, provincia, departamento, tipo, valor)
VALUES 
('Jr. Las Flores 123', 'San Juan de Lurigancho', 'Lima', 'Lima', 'Nueva', 220000.00),
('Av. Grau 456', 'Trujillo', 'Trujillo', 'La Libertad', 'Usada', 185000.00),
('Calle Central 789', 'Arequipa', 'Arequipa', 'Arequipa', 'Nueva', 200000.00),
('Mz. B Lt. 15', 'Chiclayo', 'Chiclayo', 'Lambayeque', 'Usada', 175000.00),
('Jr. Amazonas 88', 'Cusco', 'Cusco', 'Cusco', 'Nueva', 210000.00),
('Av. Industrial 321', 'Piura', 'Piura', 'Piura', 'Usada', 195000.00);

--3. Tabla: bono_fmv
SELECT*FROM bono_fmv;

INSERT INTO bono_fmv (tipo_bono_fmv)
VALUES 
('BMV'),
('BGL'),
('BFM'),
('BPH'),
('BFH'),
('BNV');

--4. Tabla: entidad_financiera
SELECT*FROM entidad_financiera;

INSERT INTO entidad_financiera (nombre, ruc, direccion)
VALUES 
('BCP', '20100047218', 'Av. Las Camelias 750, San Isidro'),
('Interbank', '20100053455', 'Av. República de Panamá 3450, San Isidro'),
('BBVA', '20100030593', 'Av. Javier Prado Este 2142, San Borja'),
('Scotiabank', '20100105421', 'Av. Rivera Navarrete 849, San Isidro'),
('MiBanco', '20100099999', 'Av. Paseo de la República 4567, Surquillo'),
('Caja Arequipa', '20400112233', 'Jr. Arequipa 100, Arequipa');

--5. Tabla: actividad_crédito
SELECT*FROM actividad_credito;

INSERT INTO actividad_credito (plazo_meses, fecha_pago, monto_pagado_principal, monto_pagado_interes, monto_total_pendiente)
VALUES 
(180, '2025-06-01', 800.00, 500.00, 100000.00),
(120, '2025-06-05', 700.00, 450.00, 95000.00),
(240, '2025-06-10', 600.00, 400.00, 110000.00),
(150, '2025-06-15', 650.00, 420.00, 98000.00),
(180, '2025-06-20', 900.00, 550.00, 89000.00),
(180, '2025-06-25', 720.00, 490.00, 87000.00);

--6. Tabla: credito
SELECT*FROM credito;

INSERT INTO credito (monto, tasa_de_interes, beneficiario_id, entidad_financiera_id, vivienda_id, bono_fmv_id, actividad_credito_id)
VALUES 
(200000.00, 6.50, 1, 1, 1, 1, 1),
(180000.00, 5.75, 2, 2, 2, 2, 2),
(220000.00, 6.10, 3, 3, 3, 3, 3),
(195000.00, 5.90, 4, 4, 4, 4, 4),
(185000.00, 6.00, 5, 5, 5, 5, 5),
(210000.00, 5.80, 6, 6, 6, 6, 6),
(215000.00, 6.25, 1, 2, 2, 1, 1),
(190000.00, 6.30, 2, 3, 3, 2, 2),
(225000.00, 5.95, 3, 4, 4, 3, 3),
(230000.00, 6.40, 4, 5, 5, 4, 4),
(198000.00, 5.70, 5, 6, 6, 5, 5),
(189000.00, 5.85, 6, 1, 1, 6, 6),
(205000.00, 6.10, 1, 3, 3, 1, 1),
(212000.00, 5.95, 2, 4, 4, 2, 2),
(175000.00, 5.65, 3, 5, 5, 3, 3),
(207000.00, 6.20, 4, 6, 6, 4, 4);


--OTRAS ACCIONES QUE SE PUEDEN HACER EN UNA TABLA
--Eliminar datos de una tabla
----DELETE FROM beneficiario;

--Resetear el ID de una tabla
--DBCC CHECKIDENT ('beneficiario', RESEED, 0);