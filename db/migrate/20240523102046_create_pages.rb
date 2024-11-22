class CreatePages < ActiveRecord::Migration[7.1]
  def change
    create_table :pages do |t|
      t.string :name
      t.boolean :active

      t.timestamps
    end
  end
end
