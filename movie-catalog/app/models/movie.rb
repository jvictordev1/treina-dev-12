class Movie < ApplicationRecord
  has_one_attached :cover
  enum released: { unreleased: 0, released: 1 }
  enum status: { draft: 2, published: 3 }
  belongs_to :director
  belongs_to :genre
end
