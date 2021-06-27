class Article < ApplicationRecord
  validates :title, presense: true, length: { minimum 6, maximum: 100}
  validates :description, presense: true, length: { minimum: 10, maximum: 300}
end
