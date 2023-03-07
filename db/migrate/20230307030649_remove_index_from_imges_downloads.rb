class RemoveIndexFromImgesDownloads < ActiveRecord::Migration[6.1]
  def change
    remove_index :images_downloads, name: :index_images_downloads_on_image_id
  end
end
