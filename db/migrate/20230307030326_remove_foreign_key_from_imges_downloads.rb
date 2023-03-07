class RemoveForeignKeyFromImgesDownloads < ActiveRecord::Migration[6.1]
  def change
    remove_foreign_key :images_downloads, :images
  end
end
