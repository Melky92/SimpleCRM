class Obra < ApplicationRecord
  belongs_to :cliente, optional: true
  belongs_to :usuario, optional: true
end
