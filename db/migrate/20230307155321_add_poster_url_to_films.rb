class AddPosterUrlToFilms < ActiveRecord::Migration[6.0]
  def change
    add_column :films, :poster_url, :string
  end
end
