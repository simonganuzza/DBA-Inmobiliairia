-- Esta función obtiene el precio de una propiedad según su ID.
-- Uso: SELECT ObtenerPrecioPropiedad(1); -- Donde 1 es el ID de la propiedad.

DELIMITER //

CREATE FUNCTION ObtenerPrecioPropiedad(p_id_propiedad INT)
RETURNS DECIMAL(10,2)
DETERMINISTIC
BEGIN
    DECLARE precio DECIMAL(10,2);

    SELECT Precio INTO precio
    FROM propiedades
    WHERE id_propiedad = p_id_propiedad;

    RETURN precio;
END //

DELIMITER ;

-- Esta función calcula la suma total de ingresos generados por contratos asociados a un empleado.
-- Uso: SELECT CalcularIngresosEmpleado(1); -- Donde 1 es el ID del empleado.

DELIMITER //

CREATE FUNCTION CalcularIngresosEmpleado(id_empleado INT)
RETURNS DECIMAL(10,2)
DETERMINISTIC
BEGIN
    DECLARE total_ingresos DECIMAL(10,2);

    SELECT SUM(f.Ingreso) INTO total_ingresos
    FROM contratos c
    JOIN finanzas f ON c.id_contrato = f.id_contrato
    WHERE c.id_empleado = id_empleado;

    RETURN total_ingresos;
END //

DELIMITER ;

