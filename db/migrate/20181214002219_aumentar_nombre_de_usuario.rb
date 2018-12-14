class AumentarNombreDeUsuario < ActiveRecord::Migration[5.2]
  def change
    add_column :usuarios, :nombre_de_usuario, :string
  end
end
