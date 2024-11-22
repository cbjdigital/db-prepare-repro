class StorePhotoUrLsOnPhoto < ActiveRecord::Migration[7.1]
  def change
    add_column :photos, :web_content_link_h, :string
    add_column :photos, :web_content_link_k, :string
    add_column :photos, :web_content_link_o, :string
  end
end
