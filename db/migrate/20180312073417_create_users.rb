class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :father_name
      t.string :grandpa_name
      t.string :family_name
      t.date :birthday
      t.string :gender
      t.integer :locality
      t.integer :alley
      t.integer :house_number
      t.string :neighborhood 
      t.string :city
      t.string :state
      t.string :country
      t.string :cell_phone_number
      t.string :home_phone_number
      t.string :email_address

      t.timestamps
    end
  end
end
