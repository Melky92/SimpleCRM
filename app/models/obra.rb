class Obra < ApplicationRecord
  belongs_to :cliente, optional: true
  belongs_to :usuario, optional: true
  belongs_to :reportado_por, :class_name => "Usuario" ,:foreign_key => "reportado_por", optional: true
end
