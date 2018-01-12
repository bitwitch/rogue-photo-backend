class CreateGalleryTopics < ActiveRecord::Migration[5.1]
  def change
    create_table :gallery_topics do |t|
      t.integer :gallery_id
      t.integer :topic_id
      
      t.timestamps
    end
  end
end
