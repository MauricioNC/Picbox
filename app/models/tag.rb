class Tag < ApplicationRecord
  has_many :boxes_tags
  has_many :boxes, through: :boxes_tags

  has_many :images_tags
  has_many :images, through: :images_tags
end
