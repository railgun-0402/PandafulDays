class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  attachment :image
  has_many :shop_comments
  has_many :recommends
  has_many :favorites, dependent: :destroy
  has_many :relationships
  has_many :followings, through: :relationships, source: :follow
  #中間テーブルはrelationshipsと設定
  has_many :reverse_of_relationships, class_name: 'Relationship', foreign_key: 'follow_id'
  #relationsipモデルの事と設定
  has_many :followers, through: :reverse_of_relationships, source: :user
  validates :name, length: {maximum: 20, minimum: 2}
  validates :profile, length: {maximum:100}
  acts_as_paranoid

  def follow(other_user)
    unless self == other_user
      self.relationships.find_or_create_by(follow_id: other_user.id)
    end
  end

  def unfollow(other_user)
    relationship = self.relationships.find_by(follow_id: other_user.id)
    relationship.destroy if relationship
  end

  def following?(other_user)
    self.followings.include?(other_user)
  end

end
