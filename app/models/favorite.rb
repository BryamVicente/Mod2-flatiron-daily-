class Favorite < ApplicationRecord
    belongs_to :user
    belongs_to :article
    validates :article_id, uniqueness: {scope: :user_id}
end
