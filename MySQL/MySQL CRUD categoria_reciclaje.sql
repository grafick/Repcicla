-- Consultamos la tabla
SELECT * FROM reciclaje_bd.categoria_reciclaje;

-- Creamos tabla
CREATE TABLE categoria_reciclaje (
  tipo_categoria varchar(250),
  id_pedido int,
  id_recolector int,
  huella_carbono varchar(250),
  cantidad int,
  PRIMARY KEY (tipo_categoria)
);

-- Ingresamos cluster de categorias
INSERT INTO categoria_reciclaje(tipo_categoria) VALUES ('Botellas Plásticas');
INSERT INTO categoria_reciclaje(tipo_categoria) VALUES ('Papel y Cartón');
INSERT INTO categoria_reciclaje(tipo_categoria) VALUES ('Latas');
INSERT INTO categoria_reciclaje(tipo_categoria) VALUES ('Pilas');
INSERT INTO categoria_reciclaje(tipo_categoria) VALUES ('Cajas de Bebidas (TetraPack)');
INSERT INTO categoria_reciclaje(tipo_categoria) VALUES ('Electrónicos');
INSERT INTO categoria_reciclaje(tipo_categoria) VALUES ('Envases de Plástico');
INSERT INTO categoria_reciclaje(tipo_categoria) VALUES ('Vidrios');