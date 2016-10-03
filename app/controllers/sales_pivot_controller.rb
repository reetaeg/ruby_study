class SalesPivotController < ApplicationController
  
  def index    
    
    respond_to do |format|
      format.html
      format.json { @nh_sales=NhSale.all }
    end 
    
  end
end
