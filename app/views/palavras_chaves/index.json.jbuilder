json.array!(@palavras_chaves) do |palavras_chafe|
  json.extract! palavras_chafe, :id, :palavra
  json.url palavras_chafe_url(palavras_chafe, format: :json)
end
