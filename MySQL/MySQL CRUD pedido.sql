-- Consultamos la tabla
SELECT * FROM reciclaje_bd.pedido;

-- Establecemos que el ID_pedido sea auto incremental en la medida que se ingresen datos a la tabla, particularmente para el ID
ALTER TABLE pedido MODIFY COLUMN id_pedido int auto_increment; 

-- Ingresamos datos de un pedido y datos con formato DATETIME YYYY-MM-DD HH:MM:SS
INSERT INTO pedido(id_cliente, tipo_categoria, area_cobertura, fecha_creacion) VALUES ('1', 'Vidrios', 'Ñuñoa', '2023-09-15 15:45:30');

-- Haremos un Join para consultar y identificar al creador del pedido
SELECT id_cliente FROM usuario_residencial INNER JOIN pedido ON id_cliente.columna = pedido.columna

-- haremos un left JOIN
-- Primera forma, consultamos resultados
SELECT id_cliente, nombre_completo FROM usuario_residencial;
-- Segunda forma consultamos resultados
SELECT usuario_residencial.id_cliente, usuario_residencial.nombre_completo FROM usuario_residencial;

-- Realizamos un INNER JOIN para relacionar las columnas ¿Que id cliente hizo un id pedido?. 
-- Selecciona las filas de ambas tablas en las que hay una coincidencia. Si hay una fila en la primera tabla que no tiene correspondencia en la segunda tabla, esa fila no se muestra en el resultado y viceversa.
SELECT usuario_residencial.id_cliente, usuario_residencial.nombre_completo, pedido.id_cliente FROM usuario_residencial
INNER JOIN pedido
ON usuario_residencial.id_cliente = pedido.id_cliente;

-- Realizamos un LEFT JOIN para relacionar las columnas ¿Que id cliente hizo un id pedido?. 
-- Retorna todas las filas de la primera tabla y las filas coincidentes de la segunda tabla. Si no hay coincidencia, el resultado es NULL en el lado derecho del resultado (la segunda tabla).
SELECT usuario_residencial.id_cliente, usuario_residencial.nombre_completo, pedido.id_cliente FROM usuario_residencial
LEFT JOIN pedido
ON usuario_residencial.id_cliente = pedido.id_cliente;

-- Realizamos un RIGHT JOIN para relacionar las columnas.
-- Retorna todas las filas de la segunda tabla y las filas coincidentes de la primera tabla. Si no hay coincidencia, el resultado es NULL en el lado izquierdo del resultado (la primera tabla).
SELECT usuario_residencial.id_cliente, usuario_residencial.nombre_completo, pedido.id_cliente FROM usuario_residencial
RIGHT JOIN pedido
ON usuario_residencial.id_cliente = pedido.id_cliente;