class AddViolationCommentsToViolations < ActiveRecord::Migration
  def change
    add_column :violations, :violation_comment, :string
  end
end
