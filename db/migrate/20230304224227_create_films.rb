class CreateFilms < ActiveRecord::Migration[6.0]
  def change
    create_table :films do |t|
      t.string :title
      t.integer :year
      t.integer :duration
      t.string :country
      t.string :director
      t.string :genre
      t.text :description
      t.date :watched
      t.integer :my_rating
      t.timestamps
    end
  end
end
