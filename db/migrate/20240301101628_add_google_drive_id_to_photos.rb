class AddGoogleDriveIdToPhotos < ActiveRecord::Migration[7.1]
  def change
    add_column :photos, :google_drive_id, :string
  end
end
