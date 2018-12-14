Rails.application.routes.draw do

  get 'obras_ganadas', to: 'obras#obras_ganadas'
  get 'obras_sin_vendedor', to: 'obras#obras_sin_vendedor'
  get 'obras_nuevas', to: 'obras#obras_nuevas'
  get 'obras_perdidas', to: 'obras#obras_perdidas'

  get 'obras/mapa/todas', to: 'obras#mapa_todas'
  get 'obras/mapa/ganadas', to: 'obras#mapa_ganadas'
  get 'obras/mapa/perdidas', to: 'obras#mapa_perdidas'
  get 'obras/mapa/sin_vendedor', to: 'obras#mapa_sin_vendedor'
  get 'obras/mapa/nuevas', to: 'obras#mapa_nuevas'
  get 'obras/mapa/cliente/:id_cliente', to: 'obras#mapa_cliente'
  get 'obras/mapa/vendedor/:id_usuario', to: 'obras#mapa_usuario'

  resources :obras
  resources :clientes
  resources :usuarios
  resources :tipo_usuarios
  post '/sign_in', to: 'auth#sign_in'
  get '/ver_imagen/:filename' => 'imagenes#ver'
  get '/icono/:id' => 'imagenes#icono'
  get '/privacy' => 'auth#privacy'
  root 'usuarios#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
