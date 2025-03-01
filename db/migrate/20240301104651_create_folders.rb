class CreateFolders < ActiveRecord::Migration[7.1]
  def change
    create_table :folders do |t|
      t.string :name
      t.string :google_drive_id
      t.integer :parent_id, null: true, index: true
      t.integer :lft, null: false, index: true
      t.integer :rgt, null: false, index: true

      # optional fields
      t.integer :depth, null: false, default: 0
      t.integer :children_count, null: false, default: 0
      t.timestamps
    end
  end
end
