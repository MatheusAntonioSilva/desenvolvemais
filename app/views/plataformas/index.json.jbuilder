json.array!(@plataformas) do |plataforma|
  json.extract! plataforma, :id, :plataforma
  json.url plataforma_url(plataforma, format: :json)
end
