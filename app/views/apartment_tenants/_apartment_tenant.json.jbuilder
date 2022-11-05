json.extract! apartment_tenant, :id, :apartment_id, :tenant_id, :current, :created_at, :updated_at
json.url apartment_tenant_url(apartment_tenant, format: :json)
