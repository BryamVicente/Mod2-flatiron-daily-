class Interest < ApplicationRecord
    has_many :userinterests 
    has_many :users, through: :userinterests
end
