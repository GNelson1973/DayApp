class AddFieldsToDay < ActiveRecord::Migration
  def change
    add_column :days, :meditation_actual, :integer
    add_column :days, :abcrunch_actual, :integer
    add_column :days, :leg_scissors_actual, :integer
    add_column :days, :walk_run_actual, :integer
  end
end
