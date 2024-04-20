json.extract! favorite, :id, :name, :nickname, :birthday, :bloodtype, :birthplace, :office, :age, :gender, :height, :weight, :category, :MBTI, :link, :comment, :created_at, :updated_at
json.url favorite_url(favorite, format: :json)
