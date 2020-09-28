require 'news-api'
require 'pry'

class Article < ApplicationRecord
    has_many :favorites
    has_many :users, through: :favorites


    def get_science_news

        newsapi = News.new("87b0682411c5463e94de6d2489e36c7e")    

        top_headlines = newsapi.get_top_headlines(q: 'science',
        category: 'science',
        language: 'en',
        country: 'us')

         top_headlines
    end

    def get_business_news

        newsapi = News.new("87b0682411c5463e94de6d2489e36c7e")    
    
        top_headlines = newsapi.get_top_headlines(q: 'business',
        category: 'business',
        language: 'en',
        country: 'us')
    
         top_headlines
    end

    def get_entertainment_news

        newsapi = News.new("87b0682411c5463e94de6d2489e36c7e")    
        
        top_headlines = newsapi.get_top_headlines(q: 'entertainment',
        category: 'entertainment',
        language: 'en',
        country: 'us')
        
         top_headlines
    end


    def get_general_news

        newsapi = News.new("87b0682411c5463e94de6d2489e36c7e")    
            
        top_headlines = newsapi.get_top_headlines(q: 'general',
        category: 'general',
        language: 'en',
        country: 'us')
            
         top_headlines
    end
        
    def get_health_news

        newsapi = News.new("87b0682411c5463e94de6d2489e36c7e")    
                
        top_headlines = newsapi.get_top_headlines(q: 'health',
        category: 'health',
        language: 'en',
        country: 'us')
                
         top_headlines
    end

    def get_technology_news
        

        newsapi = News.new("87b0682411c5463e94de6d2489e36c7e")    
                
        top_headlines = newsapi.get_top_headlines(q: 'technology',
        category: 'technology',
        language: 'en',
        country: 'us')
                
         top_headlines
    end

    def get_sports_news_title
        
        newsapi = News.new("87b0682411c5463e94de6d2489e36c7e")    
                
        top_headlines = newsapi.get_top_headlines(q: 'sports',
        category: 'sports',
        language: 'en',
        country: 'us')
                
         top_headlines.map do |sport|
            sport.title
         end

    end
end
