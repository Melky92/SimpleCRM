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
    t.string :nombre

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

    t.timestamps
end
add_reference :clientes, :usuario, foreign_key: true

create_table :estado_obras do |t|
    t.string :nombre
    t.datetime :proxima_visita
    t.string :nota

    t.timestamps
end

create_table :direccion_obras do |t|
    t.string :calle
    t.string :numero
    t.string :barrio
    t.string :zona
    t.string :ciudad
    t.string :observaciones

    t.timestamps
end

create_table :cierre_obras do |t|
    t.boolean :ganado
    t.string :adjudicado
    t.string :motivo
    t.string :comentarios
    t.string :contrato

    t.timestamps
end

create_table :obras do |t|
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

    t.timestamps
end
add_reference :obras, :cliente, foreign_key: true
add_reference :obras, :estado_obra, foreign_key: true
add_reference :obras, :direccion_obra, foreign_key: true
add_reference :obras, :cierre_obra, foreign_key: true
