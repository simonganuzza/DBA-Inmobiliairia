-- Este procedimiento ordena una tabla según un campo y dirección específicos.
-- Uso: CALL OrdenarTabla('nombre_tabla', 'nombre_campo', 'asc' o 'desc');

DELIMITER //

CREATE PROCEDURE OrdenarTabla(
    IN tabla_nombre VARCHAR(255),
    IN campo_orden VARCHAR(255),
    IN direccion_orden VARCHAR(4)
)
BEGIN
    SET @sql = CONCAT('SELECT * FROM ', tabla_nombre, ' ORDER BY ', campo_orden, ' ', direccion_orden);
    PREPARE stmt FROM @sql;
    EXECUTE stmt;
    DEALLOCATE PREPARE stmt;
END //

DELIMITER ;



-- Este procedimiento realiza operaciones de inserción o eliminación en una tabla.
-- Uso:
-- Para insertar: CALL GestionarRegistros('insertar', 'nombre_tabla', valores);
-- Para eliminar: CALL GestionarRegistros('eliminar', 'nombre_tabla', 'condicion');

DELIMITER //

CREATE PROCEDURE GestionarRegistros(
    IN operacion VARCHAR(10),
    IN tabla_nombre VARCHAR(255),
    IN valores_condicion TEXT
)
BEGIN
    IF operacion = 'insertar' THEN
        SET @sql = CONCAT('INSERT INTO ', tabla_nombre, ' VALUES ', valores_condicion);
    ELSEIF operacion = 'eliminar' THEN
        SET @sql = CONCAT('DELETE FROM ', tabla_nombre, ' WHERE ', valores_condicion);
    ELSE
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Operación no válida';
    END IF;

    PREPARE stmt FROM @sql;
    EXECUTE stmt;
    DEALLOCATE PREPARE stmt;
END //

DELIMITER ;

