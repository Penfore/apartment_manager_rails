class Pet < ApplicationRecord
  belongs_to :tenant
  belongs_to :owner
end
