json.extract! cavalli, :id, :nome, :descrizione, :età, :created_at, :updated_at
json.url cavalli_url(cavalli, format: :json)
