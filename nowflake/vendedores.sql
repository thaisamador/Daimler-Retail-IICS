CREATE DATABASE DAIMLER_DB;
CREATE SCHEMA DAIMLER_DB.VENTAS;        

CREATE OR REPLACE TABLE DAIMLER_DB.VENTAS.VENDEDORES (
    id_vendedor       VARCHAR(50),
    id_venta          VARCHAR(50),
    nombre_vendedor   VARCHAR(100),
    id_distribuidor   VARCHAR(50),
    region            VARCHAR(50),
    email             VARCHAR(100)
);

INSERT INTO DAIMLER_DB.VENTAS.VENDEDORES VALUES
('VEN001', 'V001', 'Carlos Lopez',    'DIST001', 'Norte',  'carlos@daimler.com'),
('VEN002', 'V002', 'maria garcia',    'DIST002', 'SUR',    'MARIA@DAIMLER.COM'),
('VEN003', 'V003', 'CARLOS LOPEZ',    'DIST001', 'NORTE',  'CARLOS@DAIMLER.COM'),
('VEN004', 'V004', NULL,              'DIST002', 'Sur',    NULL),
('VEN005', 'V005', ' Pedro Martinez ','DIST003', 'centro', 'pedro@daimler.com');
