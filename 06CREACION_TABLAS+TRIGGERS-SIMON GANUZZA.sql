-- Tabla de log para propiedades
CREATE TABLE IF NOT EXISTS log_propiedades (
    id_log INT AUTO_INCREMENT PRIMARY KEY,
    id_propiedad INT,
    accion VARCHAR(20),
    usuario VARCHAR(50),
    fecha DATE,
    hora TIME
);

-- Tabla de log para clientes
CREATE TABLE IF NOT EXISTS log_clientes (
    id_log INT AUTO_INCREMENT PRIMARY KEY,
    id_cliente INT,
    accion VARCHAR(20),
    usuario VARCHAR(50),
    fecha DATE,
    hora TIME
);

-- Trigger que se ejecuta antes de una operación de inserción en la tabla de log de propiedades.
-- Este trigger registra la información antes de la operación.

DELIMITER //

CREATE TRIGGER LogAntesOperacion BEFORE INSERT ON log_propiedades
FOR EACH ROW
BEGIN
    SET NEW.usuario = USER();  -- Captura el usuario que realiza la operación.
    SET NEW.fecha = CURDATE();  -- Captura la fecha actual.
    SET NEW.hora = CURTIME();  -- Captura la hora actual.
END //

DELIMITER ;

;

-- Trigger que se ejecuta después de una operación de eliminación en la tabla de log de clientes.
-- Este trigger registra la información después de la operación.

DELIMITER //

CREATE TRIGGER LogDespuesOperacion AFTER DELETE ON log_clientes
FOR EACH ROW
BEGIN
    INSERT INTO log_clientes (id_cliente, accion, usuario, fecha, hora)
    VALUES (OLD.id_cliente, 'Eliminacion', USER(), CURDATE(), CURTIME());
END //

DELIMITER ;