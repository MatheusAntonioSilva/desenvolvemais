json.array!(@subgrupos) do |subgrupo|
  json.extract! subgrupo, :id, :nome
  json.url subgrupo_url(subgrupo, format: :json)
end
