class Condominium < ApplicationRecord
  has_many :apartments, dependent: :destroy
end
