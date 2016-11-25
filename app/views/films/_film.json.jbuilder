json.extract! film, :id, :titre, :date_sortie, :synopsis, :avis, :auteur, :duree, :video, :created_at, :updated_at, :poster
json.url film_url(film, format: :json)