class AddUserIdToFilms < ActiveRecord::Migration[6.0]
  def change
    add_column :films, :user_id, :integer
    add_index :films, :user_id
  end
end
