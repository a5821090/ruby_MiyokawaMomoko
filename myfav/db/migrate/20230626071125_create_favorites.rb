class CreateFavorites < ActiveRecord::Migration[7.0]
  def change
    create_table :favorites do |t|
	 # f.label :post_image
	 # f.file_field :post_image
	 # f.hidden_field :post_image_cache
      t.string :name
      t.string :nickname
      t.date :birthday
      t.string :bloodtype
      t.string :birthplace
      t.string :office
      t.integer :age
      t.string :gender
      t.integer :height
      t.integer :weight
      t.string :category
      t.string :MBTI
      t.text :link
      t.text :comment
	  #t.string :image

      t.timestamps
    end
  end
end
