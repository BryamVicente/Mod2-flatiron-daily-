class Article < ApplicationRecord
    has_many :favorites
    has_many :users, through: :favorites

    def self.search(search)
        if search
            article = Article.find_by(title: search)
                if article
                    self.where(article_id: article)
                else
                    Article.all
                end
        else
            Article.all
        end
    end

end
