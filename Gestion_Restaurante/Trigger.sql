
CREATE OR REPLACE FUNCTION descontar_ingredientes() --crear la funcion para crear el trigger
RETURNS TRIGGER AS $$
BEGIN
--Restar los ingredientes del inventario del plato que se pidio
    UPDATE Inventario
    SET cantidad = cantidad - (DI.cantidad_requerida * NEW.cantidad) -- se resta de la cantidad, el valor de multiplicar la cantidad requerida por la cantidad de platos
    FROM DetalleIngredientes DI
    WHERE Inventario.ID_insumo = DI.ID_insumo AND DI.ID_plato = NEW.ID_plato;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trigger_descontar_ingredientes
AFTER INSERT ON DetallePedidos
FOR EACH ROW
EXECUTE FUNCTION descontar_ingredientes();