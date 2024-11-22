class AddPositionToVideo < ActiveRecord::Migration[7.1]
  def change
    add_column :videos, :position, :integer
  end
end
