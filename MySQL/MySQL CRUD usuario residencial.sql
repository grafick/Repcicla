-- Consultamos la tabla
SELECT * FROM reciclaje_bd.usuario_residencial;

-- Establecemos que el ID_Cliente sea auto incremental en la medida que se ingresen datos a la tabla, particularmente para el ID
ALTER TABLE usuario_residencial MODIFY COLUMN id_cliente int auto_increment; 

-- Ingresamos un usuario a la tabla de datos de usuario residencial
INSERT INTO usuario_residencial(nombre_completo, correo, celular, direccion, nombre_calle, comuna, ciudad) VALUES ('Claudio Sepulveda', 'claudio@cigoto.cl', '91518518', '22', 'Pedro de Valdivia', 'Ñuñoa', 'Santiago');
INSERT INTO usuario_residencial(nombre_completo, correo, celular, direccion, nombre_calle, comuna, ciudad) VALUES ('Pedro Piedra', 'pedro@gmail.com', '99844110', '2047', 'San Francisco', 'Santiago', 'Santiago');
INSERT INTO usuario_residencial(nombre_completo, correo, celular, direccion, nombre_calle, comuna, ciudad) VALUES ('Marco Arbulu', 'm.arbulu@gmail.com', '78451214', '0247', 'Campo de Deportes', 'Ñuñoa', 'Santiago');
-- Fin ingreso usuario a la tabla de datos

-- Cambiamos y/o actualizamos los datos del cliente 1 
UPDATE usuario_residencial SET direccion = '2465' where id_cliente = 1;

-- Consultamos un ID especifico
SELECT * FROM reciclaje_bd.usuario_residencial WHERE id_cliente = 1;

-- Elegimos clientes que solo son de Ñuñoa
SELECT * FROM reciclaje_bd.usuario_residencial WHERE comuna = 'Ñuñoa';