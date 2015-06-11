class RemoveRiskFromRestaurants < ActiveRecord::Migration
  def change
    remove_column :restaurants, :risk
  end
end
