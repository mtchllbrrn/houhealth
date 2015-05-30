class DropViolationsTable < ActiveRecord::Migration
  def up
    drop_table :violations
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
