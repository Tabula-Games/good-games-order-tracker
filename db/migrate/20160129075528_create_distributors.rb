class CreateDistributors < ActiveRecord::Migration
  def change
    create_table :distributors do |t|
      t.string :name, null: false, unique: true
      t.integer :abn
      t.string :email
      t.integer :phone
      t.string :website
      t.string :address_line1
      t.string :address_line2
      t.string :suburb
      t.string :state
      t.integer :post_code

      t.timestamps null: false
    end
  end
end
