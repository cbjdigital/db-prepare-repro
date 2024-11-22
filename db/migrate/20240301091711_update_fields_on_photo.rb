class UpdateFieldsOnPhoto < ActiveRecord::Migration[7.1]
  def change
    remove_column :photos, :title
    add_column :photos, :name, :string
    add_column :photos, :extension, :string
    add_column :photos, :mime_type, :string
    add_column :photos, :folder_id, :integer
    add_column :photos, :web_view_link, :string
    add_column :photos, :web_content_link, :string
    add_column :photos, :width, :integer
    add_column :photos, :height, :integer
  end
end
