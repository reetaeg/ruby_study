class SalesPivotController < ApplicationController
  
  def index    

    
    respond_to do |format|
      format.html
      format.json { @nh_sales=NhSale.where(:confirm_date => params[:startDate]..params[:endDate]) }
    end 
    
  end
end
