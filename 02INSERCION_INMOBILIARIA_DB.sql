INSERT INTO tipo_propiedad (ID_Tipo_Propiedad, Tipo)
VALUES 
    (null, 'Casa'),
    (null, 'Apartamento'),
    (null, 'Terreno'),
    (null, 'Edificio'),
    (null, 'Local Comercial'),
    (null, 'Oficina'),
    (null, 'Departamento'),
    (null, 'Chalet'),
    (null, 'Duplex'),
    (null, 'Penthouse');

INSERT INTO clientes (ID_Cliente, Nombre_cliente, Email, Telefono)
VALUES 
    (NULL, 'Juan Perez', 'juanperez@gmail.com', '123-456-7890'),
    (NULL, 'Maria Rodriguez', 'mariarodriguez@gmail.com', '987-654-3210'),
    (NULL, 'Carlos Gomez', 'carlosgomez@gmail.com', '111-222-3333'),
    (NULL, 'Laura Fernandez', 'laurafernandez@gmail.com', '555-444-3333'),
    (NULL, 'Pedro Sanchez', 'pedrosanchez@gmail.com', '999-888-7777'),
    (NULL, 'Ana Lopez', 'analopez@gmail.com', '777-666-5555'),
    (NULL, 'Diego Martinez', 'diegomartinez@gmail.com', '444-333-2222'),
    (NULL, 'Sofia Garcia', 'sofiagarcia@gmail.com', '222-111-0000'),
    (NULL, 'Javier Gonzalez', 'javiergonzalez@gmail.com', '888-777-6666'),
    (NULL, 'Laura Diaz', 'lauradiaz@gmail.com', '666-555-4444');

INSERT INTO empleados (Nombre_empleado, Cargo)
VALUES 
    ('Santiago', 'Gerente de marketing de medios'),
    ('Simon', 'CEO'),
    ('Juan', 'Gerente finanzas'),
    ('Martin', 'Agente de Ventas'),
    ('Pablo', 'Agente de Ventas'),
    ('Luciana', 'CIO'),
    ('Julia', 'Agente de Ventas'),
    ('Maria', 'Agente de Ventas'),
    ('Gaston', 'Asistente Administrativo'),
    ('Nahuel', 'Agente de Ventas');

INSERT INTO ubicaciones (Ciudad, Provincia)
VALUES 
    ('Buenos Aires', 'Buenos Aires'),
    ('Córdoba', 'Córdoba'),
    ('Rosario', 'Santa Fe'),
    ('Mendoza', 'Mendoza'),
    ('La Plata', 'Buenos Aires'),
    ('San Miguel de Tucumán', 'Tucumán'),
    ('Mar del Plata', 'Buenos Aires'),
    ('Salta', 'Salta'),
    ('Santa Fe', 'Santa Fe'),
    ('San Juan', 'San Juan');

INSERT INTO propiedades (ID_Propiedad, Nombre, Precio, ID_Tipo_Propiedad, ID_Ubicacion, ID_Empleado)
VALUES 
    (NULL, 'Casa A', 250000, 1, 1, 1),
    (NULL, 'Casa B', 320000, 2, 2, 2),
    (NULL, 'Apto C', 180000, 3, 1, 3),
    (NULL, 'Terreno D', 150000, 3, 2, 4),
    (NULL, 'Casa E', 280000, 1, 1, 5),
    (NULL, 'Apto F', 200000, 2, 2, 1),
    (NULL, 'Terreno G', 120000, 3, 1, 2),
    (NULL, 'Casa H', 300000, 1, 2, 3),
    (NULL, 'Casa I', 260000, 1, 1, 4),
    (NULL, 'Apto J', 220000, 2, 2, 5);

INSERT INTO contratos (ID_Contrato, ID_Cliente, ID_Propiedad, Fecha)
VALUES 
    (NULL, 1, 1, '2023-01-15'),
    (NULL, 2, 2, '2023-02-20'),
    (NULL, 3, 3, '2023-03-10'),
    (NULL, 4, 4, '2023-04-05'),
    (NULL, 5, 5, '2023-05-12'),
    (NULL, 6, 6, '2023-06-18'),
    (NULL, 7, 7, '2023-07-22'),
    (NULL, 8, 8, '2023-08-30'),
    (NULL, 9, 9, '2023-09-10'),
    (NULL, 10, 10, '2023-10-15');

INSERT INTO transacciones (ID_Transaccion, ID_Contrato, Monto)
VALUES 
    (NULL, 1, 250000),
    (NULL, 2, 320000),
    (NULL, 3, 180000),
    (NULL, 4, 150000),
    (NULL, 5, 280000),
    (NULL, 6, 200000),
    (NULL, 7, 120000),
    (NULL, 8, 300000),
    (NULL, 9, 260000),
    (NULL, 10, 220000);

INSERT INTO caracteristicas_propiedad (ID_Caracteristica, ID_Propiedad, Caracteristica)
VALUES 
    (NULL, 1, 'Jardín amplio'),
    (NULL, 2, 'Vista panorámica'),
    (NULL, 3, 'Cocina moderna'),
    (NULL, 4, 'Patio trasero'),
    (NULL, 5, 'Amplios espacios'),
    (NULL, 6, 'Balcón con vista'),
    (NULL, 7, 'Ubicación céntrica'),
    (NULL, 8, 'Piscina privada'),
    (NULL, 9, 'Diseño exclusivo'),
    (NULL, 10, 'Terraza espaciosa');

INSERT INTO finanzas (ID_Finanzas, ID_Propiedad, Ingreso, Gasto)
VALUES 
    (NULL, 1, 5000, 2000),
    (NULL, 2, 7000, 2500),
    (NULL, 3, 6000, 1800),
    (NULL, 4, 8000, 3000),
    (NULL, 5, 5500, 2000),
    (NULL, 6, 7500, 2800),
    (NULL, 7, 6500, 2200),
    (NULL, 8, 9000, 3500),
    (NULL, 9, 5800, 2000),
    (NULL, 10, 7200, 2700);

INSERT INTO documentos (ID_Documento, ID_Contrato, Nombre_Doc)
VALUES 
    (NULL, 1, 'Contrato_Venta_Casa_A'),
    (NULL, 2, 'Contrato_Venta_Casa_B'),
    (NULL, 3, 'Contrato_Alquiler_Apto_C'),
    (NULL, 4, 'Contrato_Venta_Terreno_D'),
    (NULL, 5, 'Contrato_Venta_Casa_E');
    
   
