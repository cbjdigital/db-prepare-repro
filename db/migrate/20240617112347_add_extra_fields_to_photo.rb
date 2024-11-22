class AddExtraFieldsToPhoto < ActiveRecord::Migration[7.1]
  def change
    add_column :photos, :server, :string
    add_column :photos, :secret, :string
    add_column :photos, :secret_h, :string
    add_column :photos, :secret_k, :string
  end
end
