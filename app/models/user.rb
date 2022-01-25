class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :bookmarks, :reviews
  validates :first_name, presence: true, uniqueness: true
  validates :last_name, presence: true, uniqueness: true
end
