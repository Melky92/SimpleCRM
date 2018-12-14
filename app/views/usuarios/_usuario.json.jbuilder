json.extract! usuario, :id, :nombres, :apellidos, :nombre_de_usuario, :email, :contrasenha, :tipo_usuario_id, :created_at, :updated_at
json.url usuario_url(usuario, format: :json)
