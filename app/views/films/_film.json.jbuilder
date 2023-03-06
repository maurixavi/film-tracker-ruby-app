json.extract! film, :id, :title, :year, :duration, :country, :director, :genre, :description, :watched, :my_rating, :created_at, :updated_at
json.url film_url(film, format: :json)
