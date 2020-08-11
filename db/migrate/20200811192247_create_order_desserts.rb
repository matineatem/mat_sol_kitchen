class CreateOrderDesserts < ActiveRecord::Migration[6.0]
  def change
    create_table :order_desserts do |t|
      t.integer :order_id
      t.integer :dessert_id

      t.timestamps
    end
  end
end
