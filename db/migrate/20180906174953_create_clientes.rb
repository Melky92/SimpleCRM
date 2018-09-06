class CreateClientes < ActiveRecord::Migration[5.2]
  def change
    create_table :clientes do |t|
      t.string :nombre
      t.string :telefono
      t.text :comentarios
      t.references :usuario, foreign_key: true

      t.timestamps
    end
  end
end
