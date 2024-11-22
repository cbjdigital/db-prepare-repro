class AddSecretToTokens < ActiveRecord::Migration[7.1]
  def change
    add_column :tokens, :secret, :string
  end
end
