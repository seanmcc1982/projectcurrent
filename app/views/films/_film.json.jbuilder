json.extract! film, :id, :title, :filmcast, :plot, :poster_url, :trailer_url, :runtime, :created_at, :updated_at
json.url film_url(film, format: :json)
