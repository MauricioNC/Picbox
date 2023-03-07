class Box < ApplicationRecord
  belongs_to :user, foreign_key: "user_id"
  has_many :boxes_tags
  has_many :tags, through: :boxes_tags
end
