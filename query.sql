
select * from tbSolicitud_Vehiculo
-- Para ingresar un vehiculo se necesita: marca, tipo, linea, modelo, piloto

-- para ingreso de una solicitud se necesita: usuario solicita, dependencia, vehiculo, piloto, (departamento, municipio, direccion)-> podria ser otra tabla de direcciones
-- Ingresada, aprobar -> puede ser rechazada, autorizar, confirmada

-- proceso ( aprobar -> autorizar -> confirmar) al momento de aprobar se puede rechazar

-- solicitud (id(identity), solicitante-> user login, dependencia(combobox),estado->ingresada,
-- fecha actual, fecha de salida, hora de salida, tipo de solicitud, tipo de comision,
--  