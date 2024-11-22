class CreateVideos < ActiveRecord::Migration[7.1]
  def change
    create_table :videos do |t|
      t.string :description
      t.string :filename
      t.string :name
      t.string :extension
      t.string :mime_type
      t.references :folder, null: false, foreign_key: true
      t.string :web_content_link
      t.string :web_content_link_o
      t.integer :width
      t.integer :height
      t.text :remote_id
      t.integer :last_update

      t.timestamps
    end
  end
end
