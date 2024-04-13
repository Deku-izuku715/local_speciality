class User < ApplicationRecord
  validates :nickname, presence: true
  has_many :items
  has_many :comments
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end