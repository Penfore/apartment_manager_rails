json.extract! employee, :id, :tenant_id, :owner_id, :name, :role, :shift, :created_at, :updated_at
json.url employee_url(employee, format: :json)
