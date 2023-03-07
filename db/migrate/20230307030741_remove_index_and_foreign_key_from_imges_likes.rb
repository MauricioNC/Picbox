class RemoveIndexAndForeignKeyFromImgesLikes < ActiveRecord::Migration[6.1]
  def change
    remove_foreign_key :images_likes, :images
    remove_index :images_likes, name: :index_images_likes_on_image_id
  end
end
