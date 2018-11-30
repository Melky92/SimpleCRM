Rails.application.routes.draw do
  resources :obras
  resources :clientes
  resources :usuarios
  resources :tipo_usuarios
  get '/ver_imagen/:filename' => 'imagenes#ver'
  root 'usuarios#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
