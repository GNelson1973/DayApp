class CreateDays < ActiveRecord::Migration
  def change
    create_table :days do |t|
      t.string :inspiration
      t.string :challenge

      t.timestamps null: false
    end
  end
end
