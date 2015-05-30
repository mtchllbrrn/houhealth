class DropRestaurantsTable < ActiveRecord::Migration
  def up
    drop_table :restaurants
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
