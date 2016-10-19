class CreateProductPrices < ActiveRecord::Migration
  def change
    create_table :product_prices do |t|
      t.references :product, index: true
      t.string :price_type
      t.float :price
      t.boolean :is_used
      t.string :target

      t.timestamps null: false
    end
  end
end
