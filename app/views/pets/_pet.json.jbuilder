json.extract! pet, :id, :tenant_id, :owner_id, :name, :specie, :breed, :color, :created_at, :updated_at
json.url pet_url(pet, format: :json)
