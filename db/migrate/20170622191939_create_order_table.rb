class CreateOrderTable < ActiveRecord::Migration[5.1]
  def change
      create_table :order do |t|
        t.string :user_id
        t.string :products_id
        t.string :quantity
      end
  end
end
