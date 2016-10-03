class CreateRoleMenus < ActiveRecord::Migration
  def change
    create_table :role_menus do |t|
      t.string :name
      t.integer :role_id
      t.boolean :is_used
      t.integer :menu_id

      t.timestamps null: false
    end
  end
end
