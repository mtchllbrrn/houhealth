class CreateViolations < ActiveRecord::Migration
  def change
    create_table :violations do |t|
      t.string :account_number
      t.string :facility_name
      t.integer :risk
      t.string :facility_type
      t.datetime :inspection_date
      t.string :inspector
      t.string :site_name
      t.string :address
      t.string :violation_code
      t.integer :violation_weight
      t.datetime :correct_by
      t.integer :score
      t.integer :number_of_employees
      t.string :permit_type
      t.string :activity_type

      t.timestamps null: false
    end
  end
end
