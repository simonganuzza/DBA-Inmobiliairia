CREATE VIEW VistaContratosDetalles AS
SELECT c.*, p.Nombre AS NombrePropiedad, cl.Nombre_cliente AS NombreCliente
FROM contratos c
JOIN propiedades p ON c.id_propiedad = p.id_propiedad
JOIN clientes cl ON c.id_cliente = cl.id_cliente;

CREATE VIEW VistaFinanzasTotales AS
SELECT f.*, p.Nombre AS NombrePropiedad
FROM finanzas f
JOIN propiedades p ON f.id_propiedad = p.id_propiedad;

CREATE VIEW VistaContratosUbicacion AS
SELECT c.*, u.Ciudad, u.Provincia
FROM contratos c
JOIN propiedades p ON c.id_propiedad = p.id_propiedad
JOIN ubicaciones u ON p.id_ubicacion = u.id_ubicacion;

CREATE VIEW VistaPropiedadesCaracteristicas AS
SELECT p.*, cp.Caracteristica
FROM propiedades p
JOIN caracteristicas_propiedad cp ON p.id_propiedad = cp.id_propiedad;

CREATE VIEW VistaDocumentosContratos AS
SELECT d.*, c.Fecha AS FechaContrato, c.ID_Cliente AS ID_ClienteContrato, c.ID_Propiedad AS ID_PropiedadContrato
FROM documentos d
JOIN contratos c ON d.id_contrato = c.id_contrato;
