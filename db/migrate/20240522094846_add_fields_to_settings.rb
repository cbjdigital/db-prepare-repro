class AddFieldsToSettings < ActiveRecord::Migration[7.1]
  def change
    add_column :settings, :data_type, :string
    add_column :settings, :value_rich_text, :text
  end
end
