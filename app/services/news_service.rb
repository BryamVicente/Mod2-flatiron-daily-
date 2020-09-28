require 'HTTP'
require 'JSON'
require 'news-api'

class NewsService

    def get_news_title(category)
        response = HTTP.get("https://newsapi.org/v2/top-headlines?category=#{category}&country=us&apiKey=#{ENV["NEWS_API_KEY"]}").to_s
        parsed_response = JSON.parse(response)
        parsed_response.map do |elem|
            elem.title 
        end
    end

end