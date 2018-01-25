class User < ApplicationRecord
  has_secure_password 
  has_many :galleries 

  def new_gallery(name: , date: , location:)
    gallery = Gallery.new(name: name, date: date, location: location, user_id: self.id)
    gallery && gallery.save ? gallery : false
  end 

end
