--@Autor(es):  Cruz Ramos Diego Alejandro
--             Martinez Alvarez Pedro
--             Zuleta Ceja Juan Manuel
--@Fecha creación: 04/01/2022
--@Descripción: Creación de índices

--Índices en tabla EMPLEADO
create index empleado_nombre_ix on empleado(upper(nombre));
create unique index empleado_rfc_iuk on empleado(rfc);
create index empleado_centro_operacion_id_ix on empleado(centro_de_operacion_id);
create index empleado_fecha_ingreso_ix on empleado(to_char(fecha_ingreso,'dd/mm/yyyy'));

--Índices en tabla UBICACION
create index ubicacion_pedido_id_ix on ubicacion(pedido_id);

--Índices en tabla PEDIDO
create unique index pedido_folio_iuk on pedido(folio);
create index pedido_repartidor_id_ix on pedido(repartidor_id);
create index pedido_cliente_id_ix on pedido(cliente_id);
create index pedido_status_pedido_id_ix on pedido(status_pedido_id);

--Índices en tabla TARJETA
create index tarjeta_numero_ix on tarjeta(numero);

--Índices en tabla CLIENTE
create index cliente_curp_ix on cliente(curp);
create index cliente_email_ix on cliente(email);
create index cliente_rfc_ix on cliente(rfc);
create index cliente_tarjeta_id_ix on cliente(tarjeta_id);
create index cliente_nombre_ix on cliente(upper(nombre));

--Índices en tabla HISTORICO_STATUS
create index historico_status_pedido_id_ix on historico_status(pedido_id);
create index historico_status_status_pedido_id_ix on historico_status(status_pedido_id);

--Índices en tabla DETALLE_PEDIDO



create index solicitante_fecha_solicitud_ix on solicitante(to_char(fecha_solicitud,'dd/mm/yyyy'));
create index solicitante_visa_id_ix on solicitante(visa_id);




create unique index visa_laboral_ix on visa_laboral(num_trabajador,nss);