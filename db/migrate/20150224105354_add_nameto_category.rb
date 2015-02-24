class AddNametoCategory < ActiveRecord::Migration
  def change
  	add_column :categories, :name, :string
  	add_column :categories, :summary, :string
  end
end
