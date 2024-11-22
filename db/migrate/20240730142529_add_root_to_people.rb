class AddRootToPeople < ActiveRecord::Migration[7.1]
  def change
    add_column :people, :root, :boolean, default: false
  end
end
