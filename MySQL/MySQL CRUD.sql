show databases;

-- Creamos DB
CREATE DATABASE reciclaje_bd;

-- USAMOS DB
USE reciclaje_bd;

-- Creamos tabla
CREATE TABLE usuario_residencial(
  id_cliente int,
  nombre_completo varchar(250),
  correo varchar(250),
  celular int,
  direccion varchar(250),
  nombre_calle varchar(250),
  comuna varchar(250),
  ciudad varchar(250),
  PRIMARY KEY (id_cliente)
);

-- Consultamos la tabla
SELECT * FROM reciclaje_bd.usuario_residencial;

-- Creamos tabla
CREATE TABLE pedido(
  id_pedido int,
  id_cliente varchar(250),
  tipo_categoria varchar(250),
  area_cobertura varchar(250),
  fecha_creacion datetime,
  a_nombre varchar(250),
  a_direccion varchar(250),
  a_numero_calle int,
  a_calle varchar(250),
  a_comuna varchar(250),
  a_ciudad varchar(250),
  estado_pedido varchar(250),
  fecha_retiro varchar(250),
  PRIMARY KEY (id_pedido)
);

-- Creamos tabla
CREATE TABLE categoria_reciclaje (
  tipo_categoria varchar(250),
  id_pedido int,
  id_recolector int,
  huella_carbono varchar(250),
  cantidad int,
  PRIMARY KEY (tipo_categoria)
);

-- Creamos tabla
CREATE TABLE agenda (
  fecha_retiro datetime,
  id_cliente int,
  id_pedido int,
  PRIMARY KEY (fecha_retiro),
  FOREIGN KEY (id_cliente) REFERENCES usuario_residencial (id_cliente)
);

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

-- Creamos tabla
CREATE TABLE agenda_delivery (
  area_cobertura varchar(250),
  d_a_comuna varchar(250),
  d_a_ciudad varchar(250),
  id_recolector int,
  id_pedido int,
  d_fecha datetime,
  PRIMARY KEY (area_cobertura),
  FOREIGN KEY (id_recolector) REFERENCES usuario_recolector (id_recolector)
);

