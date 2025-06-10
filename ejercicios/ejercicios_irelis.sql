USE db_gestion_creditos_hipotecarios;
GO


--1.  Obtener todos los cr�ditos con datos del beneficiario
---Objetivo: Ver qui�nes han accedido a cr�ditos y el monto que recibieron.

SELECT 
    c.id AS credito_id,
    b.nombres + ' ' + b.apellidos AS beneficiario,
    c.monto,
    c.tasa_de_interes
FROM 
    credito c
JOIN beneficiario b ON c.beneficiario_id = b.id;

--2. Mostrar los cr�ditos con viviendas en el departamento de Lima
---Objetivo: Filtrar cr�ditos por ubicaci�n geogr�fica de la vivienda.

SELECT 
    c.id AS credito_id,
    b.nombres AS beneficiario,
    v.departamento,
    v.distrito,
    c.monto
FROM 
    credito c
JOIN beneficiario b ON c.beneficiario_id = b.id
JOIN vivienda v ON c.vivienda_id = v.id
WHERE 
    v.departamento = 'Lima';
