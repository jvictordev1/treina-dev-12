class Genre < ApplicationRecord
    has_many :director
    has_many :genre
end
