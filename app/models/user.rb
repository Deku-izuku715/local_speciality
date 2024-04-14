class User < ApplicationRecord
  validates :nickname, presence: true
  has_many :items
  has_many :comments, dependent: :destroy
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end