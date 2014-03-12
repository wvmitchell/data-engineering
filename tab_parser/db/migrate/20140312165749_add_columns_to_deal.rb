class AddColumnsToDeal < ActiveRecord::Migration
  def change
    add_column :deals, :purchaser_id, :integer
    add_column :deals, :item_id, :integer
    add_column :deals, :merchant_id, :integer
  end
end
