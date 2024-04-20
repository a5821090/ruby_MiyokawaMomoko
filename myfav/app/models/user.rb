class User < ApplicationRecord
#devise :database_authenticatable, :registerable,
   #      :recoverable, :rememberable, :validatable
  has_secure_password
  has_many :favorites,dependent: :destroy
  has_many :likes,dependent: :destroy
  
  validates :username, presence: true
  validates :name, presence: true
  validates :email, presence: true
  validates :username, uniqueness: true
  
  def liked_by?(favorite_id)
  likes.where(favorite_id: favorite_id).exists?  
end
  
end
