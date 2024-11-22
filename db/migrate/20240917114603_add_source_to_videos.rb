class AddSourceToVideos < ActiveRecord::Migration[7.2]
  def change
    add_column :videos, :source, :integer, default: 0
  end
end
