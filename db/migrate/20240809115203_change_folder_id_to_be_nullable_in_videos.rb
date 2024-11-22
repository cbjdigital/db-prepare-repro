class ChangeFolderIdToBeNullableInVideos < ActiveRecord::Migration[6.0]
  def change
    change_column_null :videos, :folder_id, true
  end
end