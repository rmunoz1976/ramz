create table rmt_cliente
(
    id number not null,
    nombre varchar2(80),
    apellido varchar2(250),
    razon_social varchar2(100),
    rut number not null, 
    tipo_cliente varchar2(1) not null,
    tipo_documento varchar2(2),
    numero_documento varchar2(20),
    ano_fundacion number,    
    primary key (rut),
    constraint chk_tipo_cliente check (tipo_cliente in ('N','J')),
    constraint chk_tipo_documento check (tipo_documento in ('CC','CE','TI','PA'))
);
/

create sequence rmt_sq_cliente
start with 1
increment by 1;
/


create table rmt_moneda 
(
    id number not null, 
    nombre varchar2(30 byte) not null,
--    tope_saldo number,
    primary key (id)
);
/

create sequence rmt_sq_moneda
start with 1
increment by 1;
/

create table rmt_cuenta
(
    id number not null,
    numero_cuenta varchar2(20) not null, 
    rut number not null,
    id_moneda number not null,
    saldo number(9,2),
    primary key (numero_cuenta)
);
/    

create sequence rmt_sq_cuenta
start with 1
increment by 1;
/


create table rmt_movimiento 
(
    id number not null,
    numero_cuenta varchar2(20) not null, 
    valor number(9,2),
    fecha date,
    tipo_movimiento varchar2(100),
    primary key (id)
);
/

create sequence rmt_sq_movimiento
start with 1
increment by 1;
/


create table rmt_saldo
(
    numero_cuenta number, 
    saldo number,
    fecha_corte date
);
/

