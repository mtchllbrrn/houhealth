class AddAttachmentsToViolations < ActiveRecord::Migration
  def change
    add_column :violations, :attachment, :string
  end
end
