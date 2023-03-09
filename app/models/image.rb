class Image < ApplicationRecord
  has_one_attached :photo

  belongs_to :user, foreign_key: "user_id"
  has_many :images_tags
  has_many :tags, through: :images_tags
end
