# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_01_24_014805) do

  create_table "clientes", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "nombre"
    t.string "telefono"
    t.text "comentarios"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "obras", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "nombre_encargado"
    t.string "telefono_encargado"
    t.string "nombre_contratista"
    t.string "telefono_contratista"
    t.string "nombre_propietario"
    t.string "telefono_propietario"
    t.string "superficie_aproximada"
    t.string "comentarios"
    t.boolean "viguetes"
    t.boolean "caseton"
    t.string "foto"
    t.string "nombre"
    t.datetime "proxima_visita"
    t.string "nota"
    t.string "calle"
    t.string "numero"
    t.string "barrio"
    t.string "zona"
    t.string "ciudad"
    t.decimal "latitud", precision: 10, scale: 6
    t.decimal "longitud", precision: 10, scale: 6
    t.text "observaciones"
    t.boolean "ganado"
    t.string "adjudicado"
    t.string "motivo"
    t.string "contrato"
    t.datetime "fecha_cierre"
    t.bigint "cliente_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "usuario_id"
    t.bigint "reportado_por"
    t.index ["cliente_id"], name: "index_obras_on_cliente_id"
    t.index ["reportado_por"], name: "fk_rails_4c73fb8f9d"
    t.index ["usuario_id"], name: "index_obras_on_usuario_id"
  end

  create_table "tipo_usuarios", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "tipo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "usuarios", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "nombres"
    t.string "apellidos"
    t.string "email"
    t.string "contrasenha"
    t.bigint "tipo_usuario_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "nombre_de_usuario"
    t.string "id_interno"
    t.index ["tipo_usuario_id"], name: "index_usuarios_on_tipo_usuario_id"
  end

  add_foreign_key "obras", "clientes"
  add_foreign_key "obras", "usuarios"
  add_foreign_key "obras", "usuarios", column: "reportado_por"
  add_foreign_key "usuarios", "tipo_usuarios"
end
