class AumentarIdInterno < ActiveRecord::Migration[5.2]
  def change
    add_column :usuarios, :id_interno, :string
  end
end
