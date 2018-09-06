json.extract! cliente, :id, :nombre, :telefono, :comentarios, :usuario_id, :created_at, :updated_at
json.url cliente_url(cliente, format: :json)
