class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :photo
  validates :post_comment, presence: true, length: { minimum: 1, maximum: 50 }
end
