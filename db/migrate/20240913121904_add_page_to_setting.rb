class AddPageToSetting < ActiveRecord::Migration[7.2]
  def change
    add_reference :settings, :page, foreign_key: true
  end
end
