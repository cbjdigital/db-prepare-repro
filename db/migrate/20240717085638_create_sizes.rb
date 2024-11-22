class CreateSizes < ActiveRecord::Migration[7.1]
  def change
    create_table :sizes do |t|
      t.references :photo, foreign_key: true
      t.references :video, foreign_key: true
      t.string :label
      t.integer :width
      t.integer :height
      t.string :source
      t.string :url
      t.string :media

      t.timestamps
    end
  end
end
