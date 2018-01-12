class GalleryTopic < ApplicationRecord
  belongs_to :gallery 
  belongs_to :topic 
end
