class Topic < ApplicationRecord
  has_many :gallery_topics 
  has_many :galleries, through: :gallery_topics
end
