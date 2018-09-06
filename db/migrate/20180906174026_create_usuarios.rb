class CreateUsuarios < ActiveRecord::Migration[5.2]
  def change
    create_table :usuarios do |t|
      t.string :nombres
      t.string :apellidos
      t.string :email
      t.string :contrasenha
      t.references :tipo_usuario, foreign_key: true

      t.timestamps
    end
  end
end
