class Favorite < ApplicationRecord
	validates :name, :birthplace, :height, :category, :link, :comment,:image, presence: true
	validates :MBTI, inclusion: {in: ['ESTP','ISTP','ESTJ','ISTJ','ESFJ','ISFJ','ESFP','ISFP','ENTJ','INTJ','ENTP','INTP','ENFJ','INFJ','ENFP','INFP']}, allow_blank: true
	validates :bloodtype, inclusion: {in: ['A','B','O','AB']}, allow_blank: true
	validates :age, :height, :weight, numericality: true, allow_blank: true
	validates :gender, inclusion: {in: ['male','female']}, allow_blank: true
	belongs_to :user
	has_many :likes, dependent: :destroy
	mount_uploader :image, ImageUploader
	has_one_attached :image
	def favorited?(user)
   likes.where(user_id: user.id).exists?
end
	
	
	
end
