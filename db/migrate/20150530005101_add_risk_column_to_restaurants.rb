class AddRiskColumnToRestaurants < ActiveRecord::Migration
  def change
    add_column :restaurants, :risk, :integer
  end
end
