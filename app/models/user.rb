class User < ApplicationRecord
  has_many :boxes
  has_many :images
  has_many :images_downloads
  has_many :images_likes
end
