class CreateProductsTable < ActiveRecord::Migration[5.1]
  def change
      create_table :products do |t|
        t.string :title
        t.string :price
        t.string :type
        t.string :description
        t.string :dimemsions
      end
  end
end
