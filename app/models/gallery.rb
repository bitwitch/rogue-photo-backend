class Gallery < ApplicationRecord
  belongs_to :user 
  has_many :gallery_topics 
  has_many :topics, through: :gallery_topics
end
