class NhSalesController < ApplicationController
  before_action :authenticate_user!
  before_action :admin_only
 
  before_action :set_nh_sale, only: [:show, :edit, :update, :destroy]

  # GET /nh_sales
  # GET /nh_sales.json
  def index
    respond_to do |format|
      format.html
      format.json { render json: NhSaleDatatable.new(view_context) }
    end    
  end

  # GET /nh_sales/1
  # GET /nh_sales/1.json
  def show
  end

  # GET /nh_sales/new
  def new
    @nh_sale = NhSale.new
  end

  # GET /nh_sales/1/edit
  def edit
  end

  # POST /nh_sales
  # POST /nh_sales.json
  def create
    @nh_sale = NhSale.new(nh_sale_params)

    respond_to do |format|
      if @nh_sale.save
        format.html { redirect_to @nh_sale, notice: 'Nh sale was successfully created.' }
        format.json { render :show, status: :created, location: @nh_sale }
      else
        format.html { render :new }
        format.json { render json: @nh_sale.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /nh_sales/1
  # PATCH/PUT /nh_sales/1.json
  def update
    respond_to do |format|
      if @nh_sale.update(nh_sale_params)
        format.html { redirect_to @nh_sale, notice: 'Nh sale was successfully updated.' }
        format.json { render :show, status: :ok, location: @nh_sale }
      else
        format.html { render :edit }
        format.json { render json: @nh_sale.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /nh_sales/1
  # DELETE /nh_sales/1.json
  def destroy
    @nh_sale.destroy
    respond_to do |format|
      format.html { redirect_to nh_sales_url, notice: 'Nh sale was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  
  def import
    NhSale.import(params[:file])
    redirect_to nh_sales_url, notice: "Sales Imported."
  end    

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_nh_sale
      @nh_sale = NhSale.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def nh_sale_params
      params.require(:nh_sale).permit(:from_code, :from_name, :sale_number, :confirm_date, :delivery_number, :to_code, :to_name, :depart_code, :depart_name, :supply_type, :order_no, :product_code, :product_name, :product_size, :product_tax, :purchase_unit_price, :purchase_amount, :supply_price, :purchase_tax, :purchase_price, :commission, :commission_tax)
    end

    
    
end
