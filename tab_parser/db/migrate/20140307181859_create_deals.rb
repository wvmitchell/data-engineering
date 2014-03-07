class CreateDeals < ActiveRecord::Migration
  def change
    create_table :deals do |t|
      t.string :purchaser
      t.string :description
      t.float :price
      t.integer :count
      t.string :address
      t.string :merchant

      t.timestamps
    end
  end
end
