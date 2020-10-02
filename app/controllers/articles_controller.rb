class ArticlesController < ApplicationController

private
def article_params
  params.require(:article).permit(:title, :category, :source, :author, :description, :content, :publishedAt, :url, :urlToImage, :search)
end

end
