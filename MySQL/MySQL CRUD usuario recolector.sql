-- Consultamos la tabla
SELECT * FROM reciclaje_bd.usuario_recolector;

-- Ingresamos un usuario a la tabla de datos de usuario_recolector
INSERT INTO usuario_recolector(area_cobertura, tipo_categoria, r_nombre_completo, r_correo, r_celular, r_numero_calle, r_nombre_calle, r_comuna, r_ciudad) VALUES ('Providencia', 'Vidrios', 'GreenGlass SPA', 'greenglass@greenglass.cl', '87964778', '04760', 'Alonso de Cordova', 'Las Condes', 'Santiago');

-- Establecemos que el ID_recolector sea auto incremental en la medida que se ingresen datos a la tabla, particularmente para el ID
-- Importante: Se debe crear antes de generar la relacion con agenda_delivery
ALTER TABLE usuario_recolector MODIFY COLUMN id_recolector int auto_increment; 

-- Consultamos un ID especifico
SELECT * FROM reciclaje_bd.usuario_recolector WHERE id_recolector = 1;