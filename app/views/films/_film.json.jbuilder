json.extract! film, :id, :titre, :date_sortie, :synopsis, :categorie_id, :created_at, :updated_at
json.url film_url(film, format: :json)