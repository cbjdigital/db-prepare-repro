class RemoveRootsFromPeople < ActiveRecord::Migration[7.2]
  def change
    remove_column :people, :root
  end
end
