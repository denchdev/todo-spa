class FixDeadlineForTasks < ActiveRecord::Migration
  def change
    remove_column :tasks, :deadline
    add_column :tasks, :deadline, :datetime
  end
end
