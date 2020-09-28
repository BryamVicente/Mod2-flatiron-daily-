class User < ApplicationRecord
    has_many :favorites
    has_many :articles, through: :favorites
    has_many :userinterests 
    has_many :interests, through: :userinterests
end
