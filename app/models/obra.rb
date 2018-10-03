class Obra < ApplicationRecord
  belongs_to :cliente, optional: true
end
