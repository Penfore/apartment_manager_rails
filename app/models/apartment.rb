class Apartment < ApplicationRecord
  belongs_to :owner
  has_many :apartment_tenants
end
