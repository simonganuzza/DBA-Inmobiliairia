-- Crear base de datos de la inmobiliaria
CREATE DATABASE IF NOT EXISTS inmobiliaria_db;
USE inmobiliaria_db;

-- Tabla tipo de propiedad
CREATE TABLE IF NOT EXISTS tipo_propiedad (
   id_tipo_propiedad INT auto_increment PRIMARY KEY,
   tipo       VARCHAR(50) NOT NULL
);

-- Tabla Clientes
CREATE TABLE IF NOT EXISTS clientes (
   id_cliente   INT auto_increment PRIMARY KEY,
   nombre_cliente VARCHAR(50) NOT NULL,
   email     VARCHAR(90) NOT NULL UNIQUE,
   telefono    VARCHAR(15) NOT NULL
);

-- Tabla Empleados
CREATE TABLE IF NOT EXISTS empleados (
   id_empleado   INT auto_increment PRIMARY KEY,
   nombre_empleado VARCHAR(50) NOT NULL,
   cargo      VARCHAR(50) NOT NULL
);

-- Tabla Ubicaciones 
CREATE TABLE IF NOT EXISTS ubicaciones (
   id_ubicacion INT auto_increment PRIMARY KEY,
   ciudad    VARCHAR(50) NOT NULL,
   provincia  VARCHAR(50) NOT NULL
);

-- Tabla propiedades
CREATE TABLE IF NOT EXISTS propiedades (
   id_propiedad   INT auto_increment PRIMARY KEY,
   id_tipo_propiedad INT,
   nombre      VARCHAR(50) NOT NULL UNIQUE,
   precio      DECIMAL(10, 2) NOT NULL,
   id_ubicacion   INT,
   id_empleado    INT,
   FOREIGN KEY (id_tipo_propiedad) REFERENCES tipo_propiedad(id_tipo_propiedad) ON DELETE SET NULL,
   FOREIGN KEY (id_ubicacion) REFERENCES ubicaciones(id_ubicacion) ON DELETE SET NULL,
   FOREIGN KEY (id_empleado) REFERENCES empleados(id_empleado) ON DELETE SET NULL
);

-- Tabla Contratos
CREATE TABLE IF NOT EXISTS contratos (
   id_contrato INT auto_increment PRIMARY KEY,
   id_cliente  INT,
   id_propiedad INT,
   fecha    DATETIME,
   FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente) ON DELETE CASCADE,
   FOREIGN KEY (id_propiedad) REFERENCES propiedades(id_propiedad) ON DELETE SET NULL
);

-- Tabla Transacciones
CREATE TABLE IF NOT EXISTS transacciones (
   id_transaccion INT auto_increment PRIMARY KEY,
   id_contrato  INT,
   monto     DECIMAL(10, 2) NOT NULL,
   FOREIGN KEY (id_contrato) REFERENCES contratos(id_contrato) ON DELETE CASCADE
);

-- Tabla Caracteristicas de la propiedad
CREATE TABLE IF NOT EXISTS caracteristicas_propiedad (
   id_caracteristica INT auto_increment PRIMARY KEY,
   id_propiedad   INT,
   caracteristica  VARCHAR(100) NOT NULL,
   FOREIGN KEY (id_propiedad) REFERENCES propiedades(id_propiedad) ON DELETE CASCADE
);

-- Tabla Finanzas
CREATE TABLE IF NOT EXISTS finanzas (
   id_finanzas INT auto_increment PRIMARY KEY,
   id_propiedad INT,
   ingreso   DECIMAL(10, 2) NOT NULL,
   gasto    DECIMAL(10, 2) NOT NULL,
   FOREIGN KEY (id_propiedad) REFERENCES propiedades(id_propiedad) ON DELETE CASCADE
);

-- Tabla Documentos
CREATE TABLE IF NOT EXISTS documentos (
   id_documento INT auto_increment PRIMARY KEY,
   id_contrato INT,
   nombre_doc  VARCHAR(60) NOT NULL,
   FOREIGN KEY (id_contrato) REFERENCES contratos(id_contrato) ON DELETE CASCADE
);
