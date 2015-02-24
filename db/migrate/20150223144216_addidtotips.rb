class Addidtotips < ActiveRecord::Migration
  def change
  	add_column :tips, :user_id, :integer
  	add_column :tips, :category_id, :integer
  end
end
