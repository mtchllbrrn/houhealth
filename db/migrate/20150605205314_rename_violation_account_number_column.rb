class RenameViolationAccountNumberColumn < ActiveRecord::Migration
  def change
    rename_column :violations, :account_number, :restaurant_id
  end
end
