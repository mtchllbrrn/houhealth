class CreateViolations < ActiveRecord::Migration
  def change
    create_table :violations do |t|
      t.integer :account_number
      t.datetime :date
      t.string :inspector
      t.string :site_name
      t.string :code
      t.integer :weight
      t.string :comment
      t.datetime :correct_by
      t.integer :score

      t.timestamps null: false
    end
  end
end
