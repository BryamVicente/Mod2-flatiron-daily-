require 'pry'
require 'news-api'

newsapi = News.new("87b0682411c5463e94de6d2489e36c7e")    

top_headlines = newsapi.get_top_headlines(q: 'sports',
category: 'sports',
language: 'en',
country: 'us')


binding.pry
puts top_headlines


