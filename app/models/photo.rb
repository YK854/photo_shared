class Photo < ApplicationRecord
  attachment :picture
  acts_as_taggable   # acts_as_taggable_on :tags

  belongs_to :user, optional: true

  has_many :comments, dependent: :destroy
  has_many :favorites, dependent: :destroy

  validates :picture, presence: true
  validates :title, presence: true
  validates :description, presence: true
  validates :tag_list, presence: true

  def favorited_by?(user)
    favorites.where(user_id: user.id).exists?
  end

end
