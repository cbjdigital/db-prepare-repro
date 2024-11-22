class CreateSettings < ActiveRecord::Migration[7.1]
  def change
    create_table :settings do |t|
      t.string :key
      t.string :value_text
      t.boolean :value_boolean
      t.integer :value_integer

      t.timestamps
    end
  end
end
