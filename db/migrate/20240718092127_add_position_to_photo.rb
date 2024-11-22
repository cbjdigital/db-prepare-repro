class AddPositionToPhoto < ActiveRecord::Migration[7.1]
  def change
    add_column :photos, :position, :integer
  end
end
