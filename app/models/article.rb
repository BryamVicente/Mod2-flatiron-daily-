class Article < ApplicationRecord
    has_many :favorites
    has_many :users, through: :favorites
    # def get_news
    #     @articles.each do |article| 
    #         if @user_interest.include?("General") && article.category == "General" 
    #             link_to article.title, article_path(article)
    #         elsif @user_interest.include?("Sports") && article.category == "Sports" 
    #             link_to article.title, article_path(article)
    #         elsif @user_interest.include?("Entertainment") && article.category == "Entertainment" 
    #             link_to article.title, article_path(article)
    #         elsif @user_interest.include?("Business") && article.category == "Business" 
    #             link_to article.title, article_path(article)
    #         elsif @user_interest.include?("Health") && article.category == "Health" 
    #             link_to article.title, article_path(article)
    #         elsif @user_interest.include?("Technology") && article.category == "Technology" 
    #             link_to article.title, article_path(article)
    #         elsif @user_interest.include?("Science") && article.category == "Science" 
    #             link_to article.title, article_path(article)
    #         end 
    #     end
    # end
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
