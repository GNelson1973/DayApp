class AddPushUpToDay < ActiveRecord::Migration
  def change
    add_column :days, :push_up, :integer
    add_column :days, :abdominal_crunch, :integer
    add_column :days, :leg_Scissors, :integer
  end
end
