class CreateObras < ActiveRecord::Migration[5.2]
  def change
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
      t.string :nombre
      t.datetime :proxima_visita
      t.string :nota
      t.string :calle
      t.string :numero
      t.string :barrio
      t.string :zona
      t.string :ciudad
      t.decimal :latitud
      t.decimal :longitud
      t.text :observaciones
      t.boolean :ganado
      t.string :adjudicado
      t.string :motivo
      t.string :comentarios
      t.string :contrato
      t.datetime :fecha_cierre
      t.references :cliente, foreign_key: true

      t.timestamps
    end
  end
end
