class AddMarriageDateAndMarriageDatePartsAndDivorceDateAndDivorceDatePartsAndMarriagePlaceToPartnerships < ActiveRecord::Migration[7.2]
  def change
    add_column :partnerships, :marriage_date, :date
    add_column :partnerships, :marriage_date_parts, :string
    add_column :partnerships, :divorce_date, :date
    add_column :partnerships, :divorce_date_parts, :string
    add_column :partnerships, :marriage_place, :string
  end
end
