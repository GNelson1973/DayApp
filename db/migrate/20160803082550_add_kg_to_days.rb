class AddKgToDays < ActiveRecord::Migration
  def change
    add_column :days, :kg, :decimal, precision: 5, scale: 1
  end
end
