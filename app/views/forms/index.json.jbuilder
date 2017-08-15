json.array!(@forms) do |form|
  json.extract! form, :id, :nombre, :apellido, :email, :ciudad, :pais
  json.url form_url(form, format: :json)
end
