class TrustMoneysController < ApplicationController
  before_action :set_trust_money, only: [:show, :edit, :update, :destroy]

  # GET /trust_moneys
  # GET /trust_moneys.json
  def index
    @trust_moneys = TrustMoney.all
  end

  # GET /trust_moneys/1
  # GET /trust_moneys/1.json
  def show
  end

  # GET /trust_moneys/new
  def new
    @trust_money = TrustMoney.new
  end

  # GET /trust_moneys/1/edit
  def edit
  end

  # POST /trust_moneys
  # POST /trust_moneys.json
  def create
    @trust_money = TrustMoney.new(trust_money_params)

    respond_to do |format|
      if @trust_money.save
        format.html { redirect_to @trust_money, notice: 'Trust money was successfully created.' }
        format.json { render :show, status: :created, location: @trust_money }
      else
        format.html { render :new }
        format.json { render json: @trust_money.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /trust_moneys/1
  # PATCH/PUT /trust_moneys/1.json
  def update
    respond_to do |format|
      if @trust_money.update(trust_money_params)
        format.html { redirect_to @trust_money, notice: 'Trust money was successfully updated.' }
        format.json { render :show, status: :ok, location: @trust_money }
      else
        format.html { render :edit }
        format.json { render json: @trust_money.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /trust_moneys/1
  # DELETE /trust_moneys/1.json
  def destroy
    @trust_money.destroy
    respond_to do |format|
      format.html { redirect_to trust_moneys_url, notice: 'Trust money was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_trust_money
      @trust_money = TrustMoney.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def trust_money_params
      params.require(:trust_money).permit(:source_type, :agency_id, :etc)
    end
end
