class RenameParent1IdToParentIdInPeople < ActiveRecord::Migration[7.2]
  def change
    remove_column :people, :parent_id
    rename_column :people, :parent_1_id, :parent_id
  end
end
