class AddRiskToViolations < ActiveRecord::Migration
  def change
    add_column :violations, :risk, :integer
  end
end
