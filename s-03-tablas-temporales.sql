--@Autores: Diego Cruz, Pedro Martínez, Manuel Zuleta
--@Fecha creación: 03/01/2022
--@Descripción: Creación de tablas temporales

create global temporary table centro_operacion_total_temp(
  centro_de_operacion_id  number(10,0),
	clave varchar2(6) ,
	direccion varchar2(200) ,
	telefono 	number(20,0) ,
	longitud number(10,3) ,
	latitud number(10,3) ,
  farmacia_id number(10,0),
	rfc_fiscal varchar2(20) ,
	pagina_web varchar2(200) ,
	gerente_id number (10,0) ,  
  almacen_id number(10,0) ,
	tipo char(1) ,
	capacidad	number(5,0) ,
	almacen_contingencia_id 	number(10,0),
  oficina_id number(10,0) ,
	nombre varchar2(100) ,
	clave_presupuestal varchar2(40) ,
	numero_call_center number(20,0)
) on commit preserve rows;

insert into centro_operacion_total_temp(
  centro_de_operacion_id, farmacia_id, almacen_id, oficina_id)
  values (1,1,2,5);
     
commit;


create private temporary table ora$ptt_medicamento_presentacion(
  medicamento_id number(10,0),
  nombre_medicamento varchar2(100),
	precio number(5,0),
	presentacion varchar2(100)
) on commit preserve definition;

insert into ora$ptt_medicamento_presentacion(
  medicamento_id, nombre_medicamento, precio, 
  presentacion) 
  values (10, 42, 99, 'tabletas'); 
