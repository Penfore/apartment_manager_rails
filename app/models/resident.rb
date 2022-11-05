class Resident < ApplicationRecord
  belongs_to :owner
  belongs_to :tenant
end
