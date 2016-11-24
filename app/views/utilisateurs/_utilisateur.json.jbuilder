json.extract! utilisateur, :id, :pseudo, :password, :created_at, :updated_at
json.url utilisateur_url(utilisateur, format: :json)