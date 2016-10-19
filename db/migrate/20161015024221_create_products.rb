class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name, index: true
      t.string :code, index: true
      t.references :category, index: true
      t.string :product_type
      t.string :size
      t.integer :box_count, default:1
      t.integer :ta_count, default:1
      t.string :img_url
      t.text :description
      t.float :purchase, default:0
      t.float :purchase_tax, default:0
      t.float :supply, default:0
      t.float :supply_tax, default:0

      t.timestamps null: false
    end
  end
end
