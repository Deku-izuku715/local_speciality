class User < ApplicationRecord
  validates :nickname, presence: true
  has_many :items
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end