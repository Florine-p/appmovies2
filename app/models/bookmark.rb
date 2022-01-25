class Bookmark < ApplicationRecord
  belongs_to :user
  belongs_to :movies
  belongs_to :review, dependent: :destroy
  validates :true, presence: true, default: false
end
