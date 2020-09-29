require 'faker'
require 'rest-client'
require 'json'
require 'pry'

UserInterest.destroy_all
Article.destroy_all
User.destroy_all
Interest.destroy_all


User.create(username: "Mushfi123", name: "Mushfi", age: rand(15..90), password: "news123")
User.create(username: "Bryam123", name: "Bryam", age: rand(15..90), password: "abc123")

Interest.create(topic: "Sports")
Interest.create(topic: "Business")
Interest.create(topic: "Entertainment")
Interest.create(topic: "General")
Interest.create(topic: "Health")
Interest.create(topic: "Science")
Interest.create(topic: "Technology")

UserInterest.create(user_id: User.first.id, interest_id: Interest.all.sample.id)
UserInterest.create(user_id: User.second.id, interest_id: Interest.all.sample.id)

sports_articles_response = RestClient.get("http://newsapi.org/v2/top-headlines?country=us&category=sports&apiKey=ba9d4840324d432b9175918b1ac64545")
sports_articles_data = JSON.parse(sports_articles_response)
sports_articles_data["articles"].each do |article|
    add_category = Article.new(article)
    add_category.category = "Sports"
    add_category.save
end

business_articles_response = RestClient.get("http://newsapi.org/v2/top-headlines?country=us&category=business&apiKey=ba9d4840324d432b9175918b1ac64545")
business_articles_data = JSON.parse(business_articles_response)
business_articles_data["articles"].each do |article|
    add_category = Article.new(article)
    add_category.category = "Business"
    add_category.save
end

entertainment_articles_response = RestClient.get("http://newsapi.org/v2/top-headlines?country=us&category=entertainment&apiKey=ba9d4840324d432b9175918b1ac64545")
entertainment_articles_data = JSON.parse(entertainment_articles_response)
entertainment_articles_data["articles"].each do |article|
    add_category = Article.new(article)
    add_category.category = "Entertainment"
    add_category.save
end

health_articles_response = RestClient.get("http://newsapi.org/v2/top-headlines?country=us&category=health&apiKey=ba9d4840324d432b9175918b1ac64545")
health_articles_data = JSON.parse(health_articles_response)
health_articles_data["articles"].each do |article|
    add_category = Article.new(article)
    add_category.category = "Health"
    add_category.save
end

science_articles_response = RestClient.get("http://newsapi.org/v2/top-headlines?country=us&category=science&apiKey=ba9d4840324d432b9175918b1ac64545")
science_articles_data = JSON.parse(science_articles_response)
science_articles_data["articles"].each do |article|
    add_category = Article.new(article)
    add_category.category = "Science"
    add_category.save
end

technology_articles_response = RestClient.get("http://newsapi.org/v2/top-headlines?country=us&category=technology&apiKey=ba9d4840324d432b9175918b1ac64545")
technology_articles_data = JSON.parse(technology_articles_response)
technology_articles_data["articles"].each do |article|
    add_category = Article.new(article)
    add_category.category = "Technology"
    add_category.save
end

general_articles_response = RestClient.get("http://newsapi.org/v2/top-headlines?country=us&category=general&apiKey=ba9d4840324d432b9175918b1ac64545")
general_articles_data = JSON.parse(general_articles_response)
general_articles_data["articles"].each do |article|
    add_category = Article.new(article)
    add_category.category = "General"
    add_category.save
end

# binding.pry