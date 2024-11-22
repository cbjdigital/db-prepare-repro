class AddParentsToPeople < ActiveRecord::Migration[7.1]
  def change
    add_column :people, :parent_1_id, :integer
    add_column :people, :parent_2_id, :integer
  end
end
