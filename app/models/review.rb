class Review < ApplicationRecord
  belongs_to :user
  belongs_to :bookmarks
  validates :rating, presence: true, uniqueness: true
  validates :content, lenght: {minimum: 5}
  validates_inclusion_of :rating, :in => 0..5
end
