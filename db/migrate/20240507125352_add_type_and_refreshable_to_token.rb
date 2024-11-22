class AddTypeAndRefreshableToToken < ActiveRecord::Migration[7.1]
  def change
    add_column :tokens, :type, :string
    add_column :tokens, :refreshable, :boolean
  end
end
