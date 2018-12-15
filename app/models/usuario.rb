class Usuario < ApplicationRecord
  belongs_to :tipo_usuario
  has_many :obra
  validates :nombre_de_usuario, uniqueness: { message: "ya existe" }
  def nombre_completo
    "#{nombres} #{apellidos} (#{nombre_de_usuario})"
  end
end
