class RenameFields < ActiveRecord::Migration[7.1]
  def change
    rename_column :photos, :google_drive_id, :remote_id
  end
end
