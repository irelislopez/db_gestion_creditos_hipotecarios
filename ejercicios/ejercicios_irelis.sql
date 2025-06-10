USE db_gestion_creditos_hipotecarios;
GO

--1. Ver todos los beneficiarios
SELECT * FROM beneficiario;

--2. Mostrar viviendas del distrito 'San Miguel'
SELECT * FROM vivienda WHERE distrito = 'San Miguel';

--3. Ver todos los créditos con tasa de interés menor al 7%
SELECT * FROM credito WHERE tasa_de_interes < 7;

--4. Ver todos los beneficiarios ordenados por apellido
SELECT * FROM beneficiario ORDER BY apellidos ASC;

--5. Mostrar los primeros 5 registros de viviendas
SELECT TOP 5 * FROM vivienda;

--6. Ver las entidades financieras con su RUC
SELECT nombre, ruc FROM entidad_financiera;

--7. Mostrar viviendas cuyo valor esté entre 150000 y 250000
SELECT * FROM vivienda 
WHERE valor BETWEEN 150000 AND 250000;

-- 8. Ver beneficiarios cuyo ingreso mensual sea mayor a S/ 5000
SELECT nombres, apellidos, ingreso_mensual 
FROM beneficiario 
WHERE ingreso_mensual > 5000;

--9. Mostrar beneficiarios que estén casados
SELECT * FROM beneficiario 
WHERE estado_civil = 'Casado';

-- 10. Mostrar viviendas nuevas
SELECT * FROM vivienda 
WHERE tipo = 'Nueva';

-- 11. Ver el total de créditos entregados
SELECT COUNT(*) AS total_creditos FROM credito;

--12. Sumar el total de dinero prestado
SELECT SUM(monto) AS total_prestado FROM credito;

--13. Promedio de ingreso mensual de todos los beneficiarios
SELECT AVG(ingreso_mensual) AS promedio_ingresos 
FROM beneficiario;

--14. Ver la fecha de nacimiento más antigua (beneficiario de mayor edad)
SELECT MIN(fecha_nacimiento) AS beneficiario_mas_antiguo 
FROM beneficiario;

--15. Ver cuántos beneficiarios hay por situación laboral
SELECT situacion_laboral, COUNT(*) AS cantidad 
FROM beneficiario 
GROUP BY situacion_laboral;

--16. Ver cantidad de créditos por entidad financieraSELECT ef.nombre, COUNT(*) AS total_creditos
FROM credito c
JOIN entidad_financiera ef ON c.entidad_financiera_id = ef.id
GROUP BY ef.nombre;

--17. Mostrar los beneficiarios que tienen más de un crédito
SELECT beneficiario_id, COUNT(*) AS cantidad_creditos
FROM credito
GROUP BY beneficiario_id
HAVING COUNT(*) > 1;

--18. Ver beneficiarios que no recibieron bono
SELECT b.nombres, b.apellidos
FROM credito c
JOIN beneficiario b ON c.beneficiario_id = b.id
WHERE bono_fmv_id IS NULL;

--19. Calcular edad promedio por género de beneficiario
SELECT genero, AVG(DATEDIFF(YEAR, fecha_nacimiento, GETDATE())) AS edad_promedio
FROM beneficiario
GROUP BY genero;

--20. Mostrar las entidades financieras en orden alfabético
SELECT * 
FROM entidad_financiera 
ORDER BY nombre ASC;

--21. Ver los 3 créditos más altos otorgados
SELECT TOP 3 * 
FROM credito 
ORDER BY monto DESC;

--22. Mostrar beneficiarios con más de un crédito
SELECT 
    beneficiario_id,
    COUNT(*) AS cantidad_creditos
FROM 
    credito
GROUP BY beneficiario_id
HAVING COUNT(*) > 1;

--23. Ver los créditos ordenados por interés y luego por monto
SELECT 
    id,
    monto,
    tasa_de_interes
FROM 
    credito
ORDER BY 
    tasa_de_interes DESC,
    monto DESC;
