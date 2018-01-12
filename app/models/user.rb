class User < ApplicationRecord
  has_secure_password 
  has_many :galleries 

  def new_gallery(event: , date: , location:)
    gallery = Gallery.new(event: event, date: date, location: location, user_id: self.id)
    gallery && gallery.save ? gallery : false
  end 

end
