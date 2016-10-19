class AddCategoryToNhSales < ActiveRecord::Migration
  def change
    add_column :nh_sales, :category_id, :integer
  end
end
