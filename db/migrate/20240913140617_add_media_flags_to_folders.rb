class AddMediaFlagsToFolders < ActiveRecord::Migration[7.2]
  def change
    add_column :folders, :has_photos, :boolean, default: false, null: false
    add_column :folders, :has_videos, :boolean, default: false, null: false
    add_column :folders, :has_audios, :boolean, default: false, null: false
    add_column :folders, :has_documents, :boolean, default: false, null: false

    # You may want to index these columns for faster querying
    add_index :folders, :has_photos
    add_index :folders, :has_videos
    add_index :folders, :has_audios
    add_index :folders, :has_documents
  end
end
