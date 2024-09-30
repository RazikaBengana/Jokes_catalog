class Joke < ApplicationRecord
  validates :name, presence: true
  validates :content, presence: true
  validates :author, presence: true
end
