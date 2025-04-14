--Funcion para calcular el total del pedido y meterlo a facturacion

CREATE OR REPLACE FUNCTION calcular_total_pedido(num_pedido INT)
RETURNS DECIMAL(10,2) AS $$
DECLARE
    total DECIMAL(10,2) := 0;
BEGIN
    SELECT SUM(DP.cantidad * P.precio)
    INTO total
    FROM DetallePedidos DP
    JOIN Platos P ON DP.ID_plato = P.ID_plato
    WHERE DP.ID_pedido = num_pedido;

    RETURN total;
END;
$$ LANGUAGE plpgsql;

--Ejemplo de como utilizarla
INSERT INTO Facturacion(ID_pedido, fecha, total, metodo_pago)
VALUES (1, CURRENT_TIMESTAMP, calcular_total_pedido(1), 'Sinpe Movil');



--Funcion para saber ventas por fecha especifica


CREATE OR REPLACE FUNCTION calcular_ventas_por_fecha(fecha_parametro DATE)
RETURNS DECIMAL(10,2) AS $$
DECLARE
    total_ventas DECIMAL(10,2) := 0;
BEGIN
    SELECT  COALESCE(SUM(total), 0)
    INTO total_ventas
    FROM Facturacion
    WHERE DATE(fecha) = fecha_parametro;

    RETURN total_ventas;
END;
$$ LANGUAGE plpgsql;


--Ejemplo de Como utilizarla

SELECT calcular_ventas_por_fecha('2025-04-14');