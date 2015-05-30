class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.integer :account_number
      t.string :facility_name
      t.string :address_string
      t.integer :number_of_employees
      t.string :facility_type

      t.timestamps null: false
    end
  end
end
