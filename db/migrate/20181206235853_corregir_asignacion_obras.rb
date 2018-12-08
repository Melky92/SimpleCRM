class CorregirAsignacionObras < ActiveRecord::Migration[5.2]
  def change
    remove_reference :clientes, :usuario, foreign_key: true
    add_reference :obras, :usuario, foreign_key: true
  end
end
