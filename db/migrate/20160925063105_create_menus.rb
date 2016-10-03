class CreateMenus < ActiveRecord::Migration
  def change
    create_table :menus do |t|
      t.string :name
      t.string :path
      t.boolean :is_use
      t.integer :p_id

      t.timestamps null: false
    end
  end
end
