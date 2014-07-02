class AddImageAndIndustryAndTitleToUser < ActiveRecord::Migration
  def change
    add_column :users, :image, :string
    add_column :users, :industry, :string
    add_column :users, :title, :string
  end
end
