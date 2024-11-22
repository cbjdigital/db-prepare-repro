class AddVideoToPages < ActiveRecord::Migration[7.2]
  def change
    add_reference :pages, :video, foreign_key: true
  end
end
