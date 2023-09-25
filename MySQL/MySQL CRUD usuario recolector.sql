-- Consultamos la tabla
SELECT * FROM reciclaje_bd.usuario_recolector;

-- Creamos tabla
CREATE TABLE usuario_recolector (
  id_recolector int,
  area_cobertura varchar(250),
  tipo_categoria varchar(250),
  r_nombre_completo varchar(250),
  r_correo varchar(250),
  r_celular int,
  r_direccion varchar(250),
  r_numero_calle varchar(250),
  r_nombre_calle varchar(250),
  r_comuna varchar(250),
  r_ciudad varchar(250),
  PRIMARY KEY (id_recolector)
);

-- Establecemos que el ID_recolector sea auto incremental en la medida que se ingresen datos a la tabla, particularmente para el ID
-- Importante: Se debe crear antes de generar la relacion con agenda_delivery
ALTER TABLE usuario_recolector MODIFY COLUMN id_recolector int auto_increment; 

-- Creamos tabla
CREATE TABLE agenda (
  fecha_retiro datetime,
  id_cliente int,
  id_pedido int,
  PRIMARY KEY (fecha_retiro),
  FOREIGN KEY (id_cliente) REFERENCES usuario_residencial (id_cliente)
);


-- Ingresamos un usuario a la tabla de datos de usuario_recolector
INSERT INTO usuario_recolector(area_cobertura, tipo_categoria, r_nombre_completo, r_correo, r_celular, r_numero_calle, r_nombre_calle, r_comuna, r_ciudad) VALUES ('Providencia', 'Vidrios', 'GreenGlass SPA', 'greenglass@greenglass.cl', '87964778', '04760', 'Alonso de Cordova', 'Las Condes', 'Santiago');


-- Consultamos un ID especifico
SELECT * FROM reciclaje_bd.usuario_recolector WHERE id_recolector = 1;