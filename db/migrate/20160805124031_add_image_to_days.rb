class AddImageToDays < ActiveRecord::Migration
  def change
    add_column :days, :image_name, :string, default: ""
  end
end
