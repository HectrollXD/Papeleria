create table Empleados(
    ID_Empleado nvarchar(20),
    Apellido_Paterno nvarchar(25),
    Apellido_Materno nvarchar(25),
    Nombres nvarchar(50),
    constraint PK_ID_Empleado primary key(ID_Empleado)
);

create table Inventario(
    Codigo_Del_Producto nvarchar(50),
    Nombre_Del_Producto nvarchar(200),
    Marca_Del_Producto nvarchar(50),
    Descripcion_Del_Producto nvarchar(500),
    Precio_Del_Producto int,
    Unidades_En_Existencia int,
    constraint PK_Codigo_Del_Producto primary key(Codigo_Del_Producto)
);

create table Reportes(
    Clave_De_Reporte nvarchar(20),
    Fecha_De_Elaboracion datetime,
    Fecha_Desde date,
    Fecha_Hasta date,
    Total_De_Venta int,
    Total_De_Gasto int,
    Documento_PDF blob,
    constraint PK_Clave_De_Reporte primary key (Clave_De_Reporte)
);

create table Corte_De_Caja(
    Numero_De_Corte int,
    Capital_Inicial int,
    Hora_De_Inicio datetime,
    Hora_De_Fin datetime,
    Fecha_De_Corte datetime,
    Total_De_Ventas int,
    Total_De_Corte int,
    Clave_De_Reporte_1 nvarchar(20),
    constraint PK_Numero_De_Corte primary key (Numero_De_Corte),
    constraint FK_Clave_De_Reporte_1 foreign key (Clave_De_Reporte_1) references Reportes(Clave_De_Reporte)
);

create table Compras(
    Folio_De_Compra nvarchar(20),
    Fecha_De_Compra date,
    Hora_De_Compra time,
    Total_De_Compra int,
    Clave_De_Reporte_2 nvarchar(20),
    constraint PK_Folio_De_Compra primary key (Folio_De_Compra),
    constraint FK_Clave_De_Reporte_2 foreign key (Clave_De_Reporte_2) references Reportes(Clave_De_Reporte)
);

create table Productos_Comprados(
    Producto_Comprado nvarchar(100),
    Marca_Del_Producto nvarchar(100),
    Cantidad_De_Productos int,
    Subtotal int,
    Folio_De_Compra_1 nvarchar(20),
    constraint FK_Folio_De_Compra_1 foreign key (Folio_De_Compra_1) references Compras(Folio_De_Compra)
);

create table Ventas(
    Folio_De_Venta nvarchar(20),
    Fecha_De_Venta date,
    Hora_De_Venta time,
    Total_De_Venta int,
    Numero_De_Corte_2 int,
    constraint PK_Folio_De_Venta primary key (Folio_De_Venta),
    constraint FK_Numero_De_Corte_2 foreign key (Numero_De_Corte_2) references Corte_De_Caja(Numero_De_Corte)
);

create table Productos_Vendidos(
    Producto_Vendido nvarchar(500),
    Precio_Del_Producto int,
    Unidades_Compradas int,
    Total int,
    Folio_De_Venta_1 nvarchar(20),
    constraint FK_Folio_De_Venta_1 foreign key (Folio_De_Venta_1) references Ventas(Folio_De_Venta)
);

create table Corte_De_Empleados(
    ID_Empleado_1 nvarchar(20),
    Numero_De_Corte_1 int,
    constraint FK_ID_Empleado_1 foreign key (ID_Empleado_1) references Empleados(ID_Empleado),
    constraint FK_Numero_De_Corte_1 foreign key (Numero_De_Corte_1) references Corte_De_Caja(Numero_De_Corte)
);

create table Reporte_De_Inventario(
    Codigo_Del_Producto_1 nvarchar(50),
    Clave_De_Reporte_3 nvarchar(20),
    constraint FK_Codigo_Del_Producto_1 foreign key (Codigo_Del_Producto_1) references Inventario(Codigo_Del_Producto),
    constraint FK_Clave_De_Reporte_3 foreign key (Clave_De_Reporte_3) references Reportes(Clave_De_Reporte)
);
    
/*
Ejemplo de Codigo de empleado
	EMP = Empleado
    Numero de empleado
    Dos primeras letras del apellido paterno
    Inicial del apellido materno
    Inicial del Nombre
    Dia de registro
    Mes de registro
    Año de registro
    Ej: EMP01ROMH09012020 
    

Ejemplo de ID de reporte
	REPORTE
    Numero de reporte
    Dia de creación
    Mes de Creación
    Año de creación
    Hora de creación
    Minuto de creación
    Segundo de creación
    Ej: REP0109012020135500
    
Ejemplo de Folio de compra
	Dia de compra
    Mes de compra
    Año de compra
    Separacion por guion bajo
    Hora de compra
    Minuto de compra
    Segundo de Compra
    EJ: 09012020_201400
*/