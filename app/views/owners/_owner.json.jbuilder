json.extract! owner, :id, :name, :rg, :birthday, :email, :phone, :authorized_wpp, :created_at, :updated_at
json.url owner_url(owner, format: :json)
