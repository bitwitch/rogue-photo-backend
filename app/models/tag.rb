class Tag < ApplicationRecord
  has_many :gallery_tags 
  has_many :galleries, through: :gallery_tags
end
