-- Daimler Retail DB - Setup Script
----------------------------------------------------
create database Daimler_Retail_DB;
use Daimler_Retail_DB;

create table ventas_vehiculos (
id_venta varchar(50),
vin_vehiculo varchar(50),
empresa_cliente varchar(100),
fecha_venta date,
monto_total decimal(10,2),
notas_sistema varchar(255)
);

use Daimler_Retail_DB;
insert into ventas_vehiculos values
('V001', 'VIN111222333', 'Transportes SA de CV', '2026-05-05', 450000.00, 'Venta_aprobada_por_gerencia'),
('V002', 'VIN444555666', 'Logistica Norte SRL', '2026-05-06', 380000.00, 'Pago_confirmado_por_finanzas'),
('V003', ' VIN777888999 ', 'Transportes SA de CV', '2026-05-07', 520000.00, 'Venta_aprobada_por_gerencia'),
('V004', ' VIN987654321 ', 'Logistica Norte SRL',  '2026-05-08', 600000.00, 'Revision_pendiente_de_entrega'),
('V005', 'VIN000111222',   'Transportes SA de CV', '2026-05-09', 475000.00, 'Venta_aprobada_por_gerencia');

use Daimler_Retail_DB;
select * from ventas_vehiculos;
