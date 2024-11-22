class AddPositionToPages < ActiveRecord::Migration[7.2]
  def change
    add_column :pages, :position, :integer
  end
end
