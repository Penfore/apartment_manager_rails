Rails.application.routes.draw do
  root 'pages#home'

  resources :emergencies
  resources :employees
  resources :pets
  resources :vehicles
  resources :residents
  resources :apartment_tenants
  resources :apartments
  resources :tenants
  resources :owners
end
