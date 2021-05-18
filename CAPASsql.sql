use Practica;

insert into Productos values ('chocolate','Tableta 100 gramos','iberica',12.5,36)

select * from Productos;

create proc MostrarProductos
as
select * from Productos
go

create proc InsetarProductos
@nombre nvarchar (100),
@desc nvarchar (100),
@Marca nvarchar (100),
@precio float,
@stock int
as
insert into Productos values (@nombre,@desc,@Marca,@precio,@stock)

create proc EditarProductos
@nombre nvarchar (100),
@desc nvarchar (100),
@Marca nvarchar (100),
@precio float,
@stock int,
@id int
as
update Productos set Nombre=@nombre,Descripcion=@desc,Marca=@Marca,Precio=@precio,Stock=@stock
where Id=@id
go

create proc EliminarProducto
@idpro int
as
delete from Productos where Id=@idpro

exec MostrarProductos;
exec InsetarProductos 'jaja','dulce','marca',5,48
exec EditarProductos 'mandarina','dulce','los bosues',100,548,9
exec EliminarProducto 12;