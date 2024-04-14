class Item < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy
  has_one_attached :image
  validates :prefecture, presence: true
  validates :title, presence: true
  validates :introduce, presence: true
  validates :image, presence: true
end