class CreatePeople < ActiveRecord::Migration[7.1]
  def change
    create_table :people do |t|
      t.string :forenames
      t.string :surname
      t.string :title
      t.string :gender
      t.date :birthdate
      t.date :deathdate
      t.integer :generation
      t.integer :position
      t.integer :childof_generation
      t.integer :childof_position
      t.integer :childof_spouse_marriageno
      t.string :birthdatefeatures
      t.string :deathdatefeatures
      t.string :ancestry
      t.string :type
      t.string :marriage_person_id
      t.string :marriage_no
      t.string :marriagedate
      t.string :marriage_relation
      t.string :divorced
      t.integer :ancestry_depth, default: 0
      t.string :suffix
      t.string :nickname
      t.string :birthplace
      t.string :deathplace
      t.string :buriedplace
      t.date :burieddate
      t.string :marriedplace
      t.string :birthdateparts
      t.string :deathdateparts
      t.string :marriagedateparts
      t.string :burieddateparts
      t.string :biography
      t.boolean :highlight, default: false
      t.boolean :hidden, default: false
      t.string :fullnamedb
      t.integer :parent_id

      t.timestamps
    end
  end
end
