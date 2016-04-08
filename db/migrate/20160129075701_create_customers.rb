class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :name, null: false
      t.decimal :credit_limit, null: false, default: 0
      t.string :email
      t.string :mobile_phone
      t.string :home_phone
      t.string :address_line1
      t.string :address_line2
      t.string :suburb
      t.string :state
      t.integer :post_code

      t.timestamps null: false
    end
  end
end
