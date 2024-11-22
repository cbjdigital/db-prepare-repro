class AddMediaTypesToPages < ActiveRecord::Migration[7.2]
  def change
    add_column :pages, :media_types, :json
  end
end
