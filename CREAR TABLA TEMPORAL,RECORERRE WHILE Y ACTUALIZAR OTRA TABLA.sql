declare @tabla_registro  table(id_ int identity, persona varchar(max),accion  varchar(max))
insert into @tabla_registro  values
('Pedro','Trabaja'),
('Pablo','Estudia'),
('Maria','Cocina'),
('Ana','Dibuja')


select * from @tabla_registro order by id_



DECLARE @total_registros INT= (SELECT count(id_)  FROM @tabla_registro )
DECLARE @tabla_detalle_registro table (id int ,accion varchar(max),profesion varchar(max)) 
insert into @tabla_detalle_registro values(1,'','Empleado'),(2,'','Estudiante'),(3,'','Chef'),(4,'','Artista')

select * from @tabla_registro order by id_



DECLARE @accion VARCHAR(MAX)

DECLARE @contador INT = 1;
 
WHILE @contador <= @total_registros
BEGIN
    
	select @accion = (select accion from @tabla_registro where id_=@contador)

	update @tabla_detalle_registro set accion=@accion   where id=@contador

    SET @contador = @contador + 1;
END


select * from @tabla_detalle_registro