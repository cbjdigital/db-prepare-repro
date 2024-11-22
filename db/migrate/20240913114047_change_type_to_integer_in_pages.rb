class ChangeTypeToIntegerInPages < ActiveRecord::Migration[7.2]
  def change
    remove_column :pages, :type
    add_column :pages, :type, :integer
  end
end
