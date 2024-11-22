class ChangeBiographyToTextInPeople < ActiveRecord::Migration[7.2]
  def change
    change_column :people, :biography, :text
  end
end
