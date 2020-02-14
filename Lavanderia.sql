CREATE DATABASE Labanderia;
USE

CREATE TABLE control_pedido
(
    id INTEGER PRIMARY KEY IDENTITY(1,1),
    fecha_recepcion VARCHAR(20),
    fecha_entrega VARCHAR(20),
    cliente VARCHAR(60),
    kilos VARCHAR(10),
    entrega_inmediata BINARY,
    importe VARCHAR(10),
    observaciones VARCHAR(300),
    empleado VARCHAR(60)
)

GO
CREATE PROC procedimiento1

   @fecha_recepcion VARCHAR(20),
   @fecha_entrega VARCHAR(20),
   @cliente VARCHAR(60),
   @kilos VARCHAR(10),
   @entrega_inmediata BINARY,
   @importe VARCHAR(10),
   @observaciones VARCHAR(300),
   @empleado VARCHAR(60)

   AS
   INSERT INTO control_pedido VALUES(@fecha_recepcion,@fecha_entrega,@cliente,@kilos,@entrega_inmediata,@importe,@observaciones,@empleado)

GO
CREATE PROC eliminar

@id INTEGER
AS
DELETE FROM control_pedido WHERE id=@id

go
CREATE PROC updatecampo
    @fecha_recepcion VARCHAR(20),
   @fecha_entrega VARCHAR(20),
   @cliente VARCHAR(60),
   @kilos VARCHAR(10),
   @entrega_inmediata BINARY,
   @importe VARCHAR(10),
   @observaciones VARCHAR(300),
   @empleado VARCHAR(60),
   @id INTEGER   
   AS
   UPDATE control_pedido
   SET 
   [fecha_recepcion] =  @fecha_recepcion,
   [fecha_entrega] = @fecha_entrega,
   [cliente] = @cliente,
   [kilos] = @kilos,
   [entrega_inmediata] = @entrega_inmediata,
   [importe] = @importe,
   [observaciones] = @observaciones,
   [empleado] = @empleado

   WHERE [id] = @id
