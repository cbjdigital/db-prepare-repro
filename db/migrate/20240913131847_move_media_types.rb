class MoveMediaTypes < ActiveRecord::Migration[7.2]
  def change
    add_column :settings, :media_types, :json
    remove_column :pages, :media_types
  end
end
