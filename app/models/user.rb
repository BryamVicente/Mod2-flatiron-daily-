class User < ApplicationRecord
    has_many :favorites
    has_many :articles, through: :favorites
    has_many :user_interests 
    has_many :interests, through: :user_interests


    validates :name, uniqueness: true, presence: true
    validates :password, length: {in: 6..15, message: "Must be 5-13 characters long!"}

    has_secure_password

    def get_interests_by_name 
        self.interests.map {|interest| interest.topic}
    end

    def interested_topics
        Article.all.filter do |article| 
            get_interests_by_name.include?(article.category)
        end
    end

end
