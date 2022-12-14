class Owner < ApplicationRecord
  has_many :apartments, dependent: :destroy
  has_many :residents, dependent: :destroy
  has_many :vehicles, dependent: :destroy
  has_many :pets, dependent: :destroy
  has_many :employees, dependent: :destroy
  has_many :emergencies, dependent: :destroy
end
