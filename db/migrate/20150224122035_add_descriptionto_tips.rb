class AddDescriptiontoTips < ActiveRecord::Migration
  def change
  	add_column :tips, :description, :text
  end
end
