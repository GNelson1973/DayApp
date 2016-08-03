class AddActualPushUpsToDays < ActiveRecord::Migration
  def change
    add_column :days, :actual_push_ups, :integer
  end
end
