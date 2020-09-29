class Interest < ApplicationRecord
    has_many :user_interests 
    has_many :users, through: :user_interests

    # ENV["NEWS_API_KEY"]

    def get_news
        @articles.each do |article| 
            if @user_interest.include?("General") && article.category == "General" 
                link_to article.title, article_path(article)
            elsif @user_interest.include?("Sports") && article.category == "Sports" 
                link_to article.title, article_path(article)
            elsif @user_interest.include?("Entertainment") && article.category == "Entertainment" 
                link_to article.title, article_path(article)
            elsif @user_interest.include?("Business") && article.category == "Business" 
                link_to article.title, article_path(article)
            elsif @user_interest.include?("Health") && article.category == "Health" 
                link_to article.title, article_path(article)
            elsif @user_interest.include?("Technology") && article.category == "Technology" 
                link_to article.title, article_path(article)
            elsif @user_interest.include?("Science") && article.category == "Science" 
                link_to article.title, article_path(article)
            end 
        end
    end

    
end
