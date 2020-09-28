require 'news-api'
class Interest < ApplicationRecord
    has_many :userinterests 
    has_many :users, through: :userinterests

    # ENV["NEWS_API_KEY"]

    # def get_science_news
    #     newsapi = News.new("87b0682411c5463e94de6d2489e36c7e")    
    #     top_headlines = newsapi.get_top_headlines(q: 'science',
    #     category: 'science',
    #     language: 'en',
    #     country: 'us')
    #     top_headlines
    # end

    
    # def get_sports_news_title
    #     newsapi = News.new("87b0682411c5463e94de6d2489e36c7e")    
    #     top_headlines = newsapi.get_top_headlines(q: 'sports',
    #     category: 'sports',
    #     language: 'en',
    #     country: 'us')
    #     top_headlines.map do |sport|
    #         sport.title
    #     end
    # end


    
end
