# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

TipoUsuario.create(
    [{"id":1,"tipo":"Admin","created_at":"2018-09-06T17:41:09.000Z","updated_at":"2018-09-06T17:41:09.000Z"},{"id":2,"tipo":"Vendedor","created_at":"2018-09-08T03:54:06.000Z","updated_at":"2018-09-08T03:54:06.000Z"}]
)

Usuario.create(
    [{"id":1,"nombres":"Melky","apellidos":"Dominguez","email":"melkydominguez@gmail.com","contrasenha":"asdf","tipo_usuario_id":1,"created_at":"2018-09-06T17:41:12.000Z","updated_at":"2018-09-06T17:41:12.000Z"},{"id":2,"nombres":"Usuario","apellidos":"Prueba","email":"test","contrasenha":"1234","tipo_usuario_id":2,"created_at":"2018-09-08T04:02:10.000Z","updated_at":"2018-09-08T04:02:10.000Z"}]
)

Cliente.create(
    [{"id":1,"nombre":"asdf","telefono":"77000071","comentarios":"asdf","usuario_id":1,"created_at":"2018-09-06T17:50:23.000Z","updated_at":"2018-09-06T17:50:23.000Z"}]
)

Obra.create(
     [{"id":1,"nombre_encargado":"Pedro","telefono_encargado":"1","nombre_contratista":"11","telefono_contratista":"2","nombre_propietario":"22","telefono_propietario":"3","superficie_aproximada":"33","comentarios":"","viguetes":true,"caseton":false,"foto":"5","nombre":"45","proxima_visita":"2018-09-08T05:32:00.000Z","nota":"123456","calle":"1111","numero":"2222","barrio":"3333","zona":"4444","ciudad":"5555","latitud":-17.75,"longitud":-63.183,"observaciones":"Cha","ganado":false,"adjudicado":"","motivo":"","contrato":"","fecha_cierre":"2018-09-08T05:32:00.000Z","cliente_id":1,"created_at":"2018-09-08T05:33:54.000Z","updated_at":"2018-09-08T05:41:47.000Z"},{"id":2,"nombre_encargado":"Juan","telefono_encargado":"","nombre_contratista":"","telefono_contratista":"","nombre_propietario":"","telefono_propietario":"","superficie_aproximada":"","comentarios":"","viguetes":false,"caseton":false,"foto":"","nombre":"","proxima_visita":"2018-09-08T05:34:00.000Z","nota":"","calle":"","numero":"","barrio":"","zona":"","ciudad":"","latitud":-17.78,"longitud":-63.185,"observaciones":"","ganado":false,"adjudicado":"","motivo":"","contrato":"","fecha_cierre":"2018-09-08T05:34:00.000Z","cliente_id":1,"created_at":"2018-09-08T05:34:23.000Z","updated_at":"2018-09-08T05:34:23.000Z"}]
)
