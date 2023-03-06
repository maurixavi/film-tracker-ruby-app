class ChangeRatingTypeInFilms < ActiveRecord::Migration[6.0]
  def up
    change_column :films, :my_rating, :float
  end

  def down
    change_column :films, :my_rating, :integer
  end
end
