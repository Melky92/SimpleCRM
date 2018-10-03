class Usuario < ApplicationRecord
  belongs_to :tipo_usuario
  has_many :cliente
end
