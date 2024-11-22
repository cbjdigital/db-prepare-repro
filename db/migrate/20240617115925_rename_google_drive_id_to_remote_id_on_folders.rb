class RenameGoogleDriveIdToRemoteIdOnFolders < ActiveRecord::Migration[7.1]
  def change
    rename_column :folders, :google_drive_id, :remote_id
  end
end
