class AddActionToDay < ActiveRecord::Migration
  def change
    add_column :days, :insight, :text
  end
end
