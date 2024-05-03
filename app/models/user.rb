class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :nickname, presence: true
  has_many :items
  has_many :comments, dependent: :destroy

  has_many :active_follows, class_name: "Follow", foreign_key: :following_id
  has_many :followings, through: :active_follows, source: :follower

  has_many :passive_follows, class_name: "Follow", foreign_key: :follower_id
  has_many :followers, through: :passive_follows, source: :following

  has_many :favorites, dependent: :destroy

  def followed_by?(user)
    follower = passive_follows.find_by(following_id: user.id)
    return follower.present?
  end
end