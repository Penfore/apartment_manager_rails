json.extract! tenant, :id, :name, :rg, :birthday, :email, :phone, :authorize_wpp, :moving_date, :company_name, :contact, :end_moving_date, :company_phone, :contact_name, :cnpj, :created_at, :updated_at
json.url tenant_url(tenant, format: :json)
