json.extract! vehicle, :id, :tenant_id, :owner_id, :brand, :model, :color, :license_plate, :created_at, :updated_at
json.url vehicle_url(vehicle, format: :json)
