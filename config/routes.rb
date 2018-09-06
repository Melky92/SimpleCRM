Rails.application.routes.draw do
  resources :clientes
  resources :usuarios
  resources :tipo_usuarios
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
