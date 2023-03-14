class Film < ApplicationRecord

    has_one_attached :poster_url
    belongs_to :user
end
