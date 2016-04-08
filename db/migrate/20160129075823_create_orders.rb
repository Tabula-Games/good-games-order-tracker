class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :customer_id, null: false, index: true
      t.integer :distributor_id, null: false, index: true
      t.string :item
      t.string :item_url
      t.integer :quantity
      t.decimal :price
      t.decimal :deposit
      t.boolean :paid
      t.string :status
      t.string :availability
      t.datetime :customer_order_on
      t.datetime :ordered_from_distributor_on
      t.datetime :arrived_in_store_on

      t.timestamps null: false
    end
  end
end
