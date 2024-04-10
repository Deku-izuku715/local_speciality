class Item < ApplicationRecord
  belongs_to :user
  has_one_attached :image
  validates :prefecture, presence: true
  validates :title, presence: true
  validates :text, presence: true
  validates :image, presence: true
end