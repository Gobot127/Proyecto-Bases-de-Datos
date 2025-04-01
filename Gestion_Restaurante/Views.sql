--Vista de Resumen de pedidos
CREATE VIEW Vista_Resumen_Pedidos AS
SELECT 
    P.ID_pedido,
    C.nombre AS Cliente,
    M.numero_mesa AS Mesa,
    E.nombre AS Empleado,
    F.total AS Total_Pagado,
    F.metodo_pago AS Metodo_Pago,
    P.fecha_pedido
FROM Pedidos P
LEFT JOIN Clientes C ON P.ID_cliente = C.ID_cliente
LEFT JOIN Mesas M ON P.ID_mesa = M.ID_mesa
LEFT JOIN Empleados E ON P.ID_empleado = E.ID_empleado
LEFT JOIN Facturacion F ON P.ID_pedido = F.ID_pedido;

--LLama al View para ver los detalles del pedido
SELECT * FROM Vista_Resumen_Pedidos;
