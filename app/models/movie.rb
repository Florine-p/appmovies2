class Movie < ApplicationRecord
  belongs_to :list
  has_many :bookmarks
  validates :title presence: true, uniqueness :true
end
