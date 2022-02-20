class Relationship < ApplicationRecord
  # class_name内のuserテーブルを参照
  belongs_to :follower, class_name: "User"
  belongs_to :followed, class_name: "User"
end
