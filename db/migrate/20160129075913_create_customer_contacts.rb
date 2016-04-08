class CreateCustomerContacts < ActiveRecord::Migration
  def change
    create_table :customer_contacts do |t|
      t.integer :customer_id, null: false, index: true
      t.string :contact_method
      t.datetime :date_contacted
      t.text :notes

      t.timestamps null: false
    end
  end
end
