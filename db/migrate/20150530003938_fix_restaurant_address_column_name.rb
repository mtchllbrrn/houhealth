class FixRestaurantAddressColumnName < ActiveRecord::Migration
  def self.up
    rename_column :restaurants, :address_string, :address
  end
end
