class AddLastUpdateToPhotos < ActiveRecord::Migration[7.1]
  def change
    add_column :photos, :last_update, :integer
  end
end
