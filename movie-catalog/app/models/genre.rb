class Genre < ApplicationRecord
    has_many :director, dependent: :destroy
    has_many :movie, dependent: :destroy
end
