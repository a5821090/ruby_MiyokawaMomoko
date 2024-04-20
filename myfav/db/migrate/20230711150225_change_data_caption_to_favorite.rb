class ChangeDataCaptionToFavorite < ActiveRecord::Migration[7.0]
  def change
  change_column :favorites, :caption, :text
  end
end
