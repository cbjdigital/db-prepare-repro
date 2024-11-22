class AddTypeToPage < ActiveRecord::Migration[7.2]
  def change
    add_column :pages, :type, :integer
  end
end
