class AddDefaultStateToTask < ActiveRecord::Migration
  def change
  	remove_column :tasks, :state
  	add_column :tasks, :state, :boolean, default: false
  end
end
