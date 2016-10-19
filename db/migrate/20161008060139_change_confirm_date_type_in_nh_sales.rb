class ChangeConfirmDateTypeInNhSales < ActiveRecord::Migration
  def change
        change_column :nh_sales, :confirm_date, :date
  end
end
