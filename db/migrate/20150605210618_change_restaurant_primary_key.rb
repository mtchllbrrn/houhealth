class ChangeRestaurantPrimaryKey < ActiveRecord::Migration
  def change
    remove_column :restaurants, :id # remove existing primary key
    execute "ALTER TABLE restaurants ADD PRIMARY KEY (account_number);" # make account_number the new primary key
  end
end
