class CreateLikes < ActiveRecord::Migration[7.0]
  def change
    create_table :likes do |t|
      #t.integer :user_id
      #t.integer :favorite_id
	  t.references :user,null:false, foreign_key: true
	  t.references :favorite,null:false, foreign_key: true

      t.timestamps
	  
    end
	add.index [:user_id, :favorite_id], unique: true
  end
end
