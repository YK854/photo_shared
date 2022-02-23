class Photo < ApplicationRecord
  attachment :picture
  acts_as_taggable   # acts_as_taggable_on :tags

  belongs_to :user, optional: true

  has_many :comments, dependent: :destroy
  has_many :favorites, dependent: :destroy

  validates :picture, presence: true
  validates :title, length: { minimum: 1, maximum: 10 }
  validates :description, length: { minimum: 0, maximum: 40 }
  validates :tag_list, presence: true

  def favorited_by?(user)
    favorites.where(user_id: user.id).exists?
  end

  def self.search_for(content, method)
    if method == "perfect"
      Photo.where(title: content)
    elsif method == "forward"
      Photo.where("title LIKE ?", content+"%")
    elsif method == 'backward'
      Photo.where("title LIKE ?", "%"+content)
    else
      Photo.where("title LIKE ?", "%"+content+"%")
    end
  end

end
