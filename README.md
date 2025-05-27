# db_gestion_creditos_hipotecarios
#Caso Propuesto: Sistema de Gestión de Créditos Hipotecarios Mivivienda

## 1. Contexto
El Fondo Mivivienda S.A. (FMV) es una institución peruana que promueve y financia la adquisición, mejoramiento y construcción de viviendas, especialmente las de interés social. Ofrece productos como el Nuevo Crédito Mivivienda (NCMV), el Financiamiento Complementario Techo Propio (FCTP) y el Servicio de Cobertura de Riesgo Crediticio (S-CRC) .

## 2. Objetivo del Sistema

  Diseñar una base de datos que permita:

  *Registrar y gestionar los créditos hipotecarios otorgados por el FMV.*

  *Almacenar información detallada de los beneficiarios, viviendas, entidades financieras y productos crediticios.*

  *Facilitar el análisis y generación de reportes sobre las colocaciones de créditos.*

## 3. Requisitos Funcionales

  Registro de Beneficiarios: Información personal, situación laboral, ingresos, etc.

  Gestión de Créditos: Detalles del crédito otorgado, como monto, tasa de interés, plazo, fecha de desembolso, etc.

  Información de Viviendas: Datos sobre la ubicación, valor, tipo de vivienda, etc.

  Relación con Entidades Financieras: Información de las instituciones que otorgan los créditos.

  Productos Crediticios: Detalles de los diferentes productos ofrecidos por el FMV.

## 4. Modelo Entidad-Relación (ER)
   
A continuación, se describen las principales entidades y sus relaciones:

###a. Entidades

-a1. Beneficiario

  -ID_Beneficiario (PK),
  -Nombres,
  -Apellidos,
  -DNI,
  -Fecha_Nacimiento,
  -Género,
  -Estado_Civil,
  -Situación_Laboral,
  -Ingreso_Mensual,

-a2.  Crédito

  *ID_Crédito (PK),
  *ID_Beneficiario (FK),
  *ID_Producto (FK),
  *ID_Vivienda (FK),
  *ID_Entidad_Financiera (FK),
  *Monto,
  *Tasa_Interés,
  *Plazo_Meses,
  *Fecha_Desembolso,

-a3. Vivienda

  *ID_Vivienda (PK),
  *Dirección,
  *Distrito,
  *Provincia,
  *Departamento,
  *Tipo (Nueva/Usada),
  *Valor,

-a4.  Entidad_Financiera

  *ID_Entidad_Financiera (PK),
  *Nombre,
  *RUC,
  *Dirección,
  
  -a5.  Producto
  
  *ID_Producto (PK),
  *Nombre (NCMV/FCTP/S-CRC),


###b. Relaciones

-Un Beneficiario puede tener uno o más Créditos.

-Un Crédito está asociado a un único Beneficiario, una Vivienda, una Entidad_Financiera y un Producto.

-Una Entidad_Financiera puede otorgar múltiples Créditos.

-Un Producto puede estar asociado a múltiples Créditos.

##5. Consideraciones Adicionales

-Seguridad de Datos: Implementar medidas para proteger la información sensible de los beneficiarios.

-Actualización de Información: Establecer procedimientos para mantener actualizada la información de créditos y beneficiarios.

-Integración con Sistemas Externos: Posibilidad de integrar la base de datos con sistemas del FMV o entidades financieras para facilitar el intercambio de información.

📜 Reglas del Negocio – Sistema de Gestión de Créditos Hipotecarios Mivivienda
Las reglas del negocio son condiciones, restricciones o políticas que deben cumplirse en la operación del sistema, reflejando la lógica y normas del programa Mivivienda.

🧾 Reglas Generales
Un beneficiario solo puede tener un crédito activo a la vez.

Si desea otro crédito, debe haber cancelado completamente el anterior.

El crédito solo puede ser otorgado a personas naturales, no jurídicas.

Todos los beneficiarios deben tener un DNI válido y estar registrados como personas naturales.

El valor de la vivienda debe estar dentro del rango establecido por el programa.

Por ejemplo, el valor mínimo puede ser S/ 65,200 y el máximo S/ 464,200 (según el tipo de producto y normativa vigente).

Solo entidades financieras autorizadas por el FMV pueden otorgar créditos del programa.

El sistema debe validar que la entidad financiera esté registrada y activa.

💰 Reglas de Crédito
El monto del crédito no puede exceder el valor de la vivienda.

Los productos crediticios tienen condiciones predefinidas:

El producto "Nuevo Crédito Mivivienda (NCMV)" tiene requisitos específicos de cuota inicial, tasa y plazo.

El "Financiamiento Complementario Techo Propio (FCTP)" solo aplica para construcción en terreno propio.

El crédito debe tener una tasa de interés y un plazo dentro del rango permitido.

Por ejemplo: tasas entre 6% y 12%; plazos de entre 5 y 25 años.

Cada crédito debe estar vinculado a un único producto Mivivienda.

Los desembolsos de crédito se registran con fecha y no pueden ser modificados una vez emitidos.

🏠 Reglas de Vivienda
Las viviendas deben estar ubicadas en el territorio peruano.

La dirección debe estar compuesta al menos por departamento, provincia y distrito.

Solo se financian viviendas nuevas o usadas, no terrenos sin construcción.

Una vivienda no puede estar asociada a más de un crédito activo simultáneamente.

👤 Reglas del Beneficiario
El beneficiario debe demostrar ingresos sostenibles y capacidad de pago.

Por ejemplo: ingresos mínimos mensuales según el valor del crédito solicitado.

El beneficiario no debe haber sido propietario de una vivienda en los últimos 5 años.

Esto aplica especialmente para acceder a bonos o productos especiales.

En caso de ser pareja (casados o convivientes), ambos deben ser evaluados como co-beneficiarios.

📑 Reglas Administrativas
Todos los registros deben mantener una trazabilidad:

Se deben registrar fecha de creación, modificación y el usuario que realizó los cambios.

La base de datos debe permitir generar reportes por año, departamento, entidad financiera y tipo de producto.

No se permite eliminar créditos del sistema, solo marcarlos como “anulados” o “cancelados”.

#Diagrama entidad relación

![image](https://github.com/user-attachments/assets/5f0cedce-920b-4bed-8730-39a335eb6807)



#Diseño lógico
https://dbdesigner.page.link/ZLgJduGKir7bcoN98

Realizado por el grupo 3:

Barquero, Valeria.

Lavado, Gianmarco.

López, Irelis.

Mittani, Kristhel.

Serrano, David.
