class Article < ApplicationRecord
    has_many :favorites
    has_many :users, through: :favorites


    # def homepage
    #     if @interest == "Sports"
    #         get_sports_news
    #     elsif @interest == "Business"
    #         get_business_news
    #     elsif @interest == "Entertainment"
    #         get_entertainment_news
    #     elsif @interest == "General"
    #         get_general_news
    #     elsif @interest == "Health"
    #         get_health_news
    #     elsif @interest == "Science"
    #         get_science_news
    #     elsif @interest == "Technology"
    #         get_technology_news
    #     end
    # end

end
