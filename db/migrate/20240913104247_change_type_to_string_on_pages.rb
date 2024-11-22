class ChangeTypeToStringOnPages < ActiveRecord::Migration[7.2]
  def change
    change_column :pages, :type, :string
  end
end
