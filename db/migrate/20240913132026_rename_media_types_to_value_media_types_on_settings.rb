class RenameMediaTypesToValueMediaTypesOnSettings < ActiveRecord::Migration[7.2]
  def change
    rename_column :settings, :media_types, :value_media_types
  end
end
