class AddTagIdToPeople < ActiveRecord::Migration[7.1]
  def change
    add_column :people, :tag_id, :integer
  end
end
