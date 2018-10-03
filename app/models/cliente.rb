class Cliente < ApplicationRecord
  belongs_to :usuario
  has_many :obra
end
