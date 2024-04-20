class AddUserRefToFavorite < ActiveRecord::Migration[7.0]
  def change
    add_reference :favorites, :user, null: true, foreign_key: true
  end
end
