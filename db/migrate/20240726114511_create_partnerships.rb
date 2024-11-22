class CreatePartnerships < ActiveRecord::Migration[7.1]
  def change
    create_table :partnerships do |t|
      t.integer :person_id
      t.integer :partner_id

      t.timestamps
    end
  end
end
