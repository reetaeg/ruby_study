class AddColumnToMenu < ActiveRecord::Migration
  def change
    add_column :menus, :menu_type, :integer
    add_column :menus, :icon, :string
  end
end
