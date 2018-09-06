# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...



rails generate scaffold TipoUsuario nombre:string

rails generate scaffold Usuario nombres:string apellidos:string email:string contrasenha:string











create_table :tipo_usuarios do |t|
    t.string :tipo

    t.timestamps
end

create_table :usuarios do |t|
    t.string :nombres
    t.string :apellidos
    t.string :email
    t.string :contrasenha

    t.timestamps
end
add_reference :usuarios, :tipo_usuario, foreign_key: true

create_table :clientes do |t|
    t.string :nombre
    t.string :telefono
    t.text :comentarios

    t.timestamps
end
add_reference :clientes, :usuario, foreign_key: true

<!-- posibles tablas auxiliares -->
create_table :estado_obras do |t|
end
create_table :direccion_obras do |t|
end
create_table :cierre_obras do |t|
end

create_table :obras do |t|
    <!-- Datos generales -->
    t.string :nombre_encargado
    t.string :telefono_encargado
    t.string :nombre_contratista
    t.string :telefono_contratista
    t.string :nombre_propietario
    t.string :telefono_propietario
    t.string :superficie_aproximada
    t.string :comentarios
    t.boolean :viguetes
    t.boolean :caseton
    t.string :foto

    <!-- Estado  -->
    t.string :nombre
    t.datetime :proxima_visita
    t.string :nota

    <!-- Direccion -->
    t.string :calle
    t.string :numero
    t.string :barrio
    t.string :zona
    t.string :ciudad
    t.decimal :latitud
    t.decimal :longitud
    t.text :observaciones

    <!-- Cierre -->
    t.boolean :ganado
    t.string :adjudicado
    t.string :motivo
    t.string :comentarios
    t.string :contrato
    t.datetime :fecha_cierre

    t.timestamps
end

add_reference :obras, :cliente, foreign_key: true
add_reference :obras, :estado_obra, foreign_key: true
add_reference :obras, :direccion_obra, foreign_key: true
add_reference :obras, :cierre_obra, foreign_key: true

bin/rails generate scaffold TipoUsuario tipo:string


bin/rails generate scaffold Usuario nombres:string apellidos:string email:string contrasenha:string tipo_usuario:references


bin/rails generate scaffold Cliente nombre:string telefono:string comentario:text usuario:references


bin/rails generate scaffold Obra nombre_encargado:string telefono_encargado:string nombre_contratista:string telefono_contratista:string nombre_propietario:string telefono_propietario:string superficie_aproximada:string comentarios:string viguetes:boolean caseton:boolean foto:string nombre:string proxima_visita:datetime nota:string calle:string numero:string barrio:string zona:string ciudad:string latitud:decimal longitud:decimal observaciones:text ganado:boolean adjudicado:string motivo:string comentarios:string contrato:string fecha_cierre:datetime  cliente:references
