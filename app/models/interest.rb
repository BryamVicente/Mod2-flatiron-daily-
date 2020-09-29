class Interest < ApplicationRecord
    has_many :user_interests 
    has_many :users, through: :user_interests

    # ENV["NEWS_API_KEY"]


    
end
