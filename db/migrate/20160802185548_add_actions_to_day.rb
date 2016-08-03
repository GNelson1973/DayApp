class AddActionsToDay < ActiveRecord::Migration
  def change
    add_column :days, :walk_run, :integer
    add_column :days, :meditation, :integer
  end
end
