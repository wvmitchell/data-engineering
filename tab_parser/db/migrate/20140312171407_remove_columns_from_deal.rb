class RemoveColumnsFromDeal < ActiveRecord::Migration
  def change
    remove_column :deals, :purchaser, :string
    remove_column :deals, :description, :string
    remove_column :deals, :price, :float
    remove_column :deals, :address, :string
    remove_column :deals, :merchant, :string
  end
end
