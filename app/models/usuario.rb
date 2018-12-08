class Usuario < ApplicationRecord
  belongs_to :tipo_usuario
  has_many :obra
  def nombre_completo
    "#{nombres} #{apellidos}"
  end
end
