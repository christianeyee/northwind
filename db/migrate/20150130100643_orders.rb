class Orders < ActiveRecord::Migration
  def change
  	create_table :orders, :id => false do |o|
  		o.integer :order_id, :null => false
  		o.string :customer_id
  		o.integer :employee_id
  		o.date :order_date
  		o.date :required_date
  		o.date :shipped_date
  		o.integer :ship_via
  		o.float :freight
  		o.string :ship_name
  		o.string :ship_address
  		o.string :ship_city
  		o.string :ship_region
  		o.string :postal_code
  		o.string :ship_country
   	end
   	add_index :orders, :order_id, :unique => true
  	execute "ALTER TABLE orders ADD PRIMARY KEY(order_id);"
  end
end
