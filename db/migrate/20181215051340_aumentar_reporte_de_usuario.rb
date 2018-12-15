class AumentarReporteDeUsuario < ActiveRecord::Migration[5.2]
  def change
    add_column :obras, :reportado_por, :bigint, index: true
    add_foreign_key :obras, :usuarios, column: :reportado_por
  end
end
