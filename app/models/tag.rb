class Tag < ApplicationRecord
  has_many :photo_tags
  has_many :photos, through: :tags
end
