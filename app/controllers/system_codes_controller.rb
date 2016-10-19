class SystemCodesController < ApplicationController
  before_action :set_system_code, only: [:show, :edit, :update, :destroy]

  # GET /system_codes
  # GET /system_codes.json
  def index
    @system_codes = SystemCode.all
  end

  # GET /system_codes/1
  # GET /system_codes/1.json
  def show
  end

  # GET /system_codes/new
  def new
    @system_code = SystemCode.new
  end

  # GET /system_codes/1/edit
  def edit
  end

  # POST /system_codes
  # POST /system_codes.json
  def create
    @system_code = SystemCode.new(system_code_params)

    respond_to do |format|
      if @system_code.save
        format.html { redirect_to @system_code, notice: 'System code was successfully created.' }
        format.json { render :show, status: :created, location: @system_code }
      else
        format.html { render :new }
        format.json { render json: @system_code.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /system_codes/1
  # PATCH/PUT /system_codes/1.json
  def update
    respond_to do |format|
      if @system_code.update(system_code_params)
        format.html { redirect_to @system_code, notice: 'System code was successfully updated.' }
        format.json { render :show, status: :ok, location: @system_code }
      else
        format.html { render :edit }
        format.json { render json: @system_code.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /system_codes/1
  # DELETE /system_codes/1.json
  def destroy
    @system_code.destroy
    respond_to do |format|
      format.html { redirect_to system_codes_url, notice: 'System code was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_system_code
      @system_code = SystemCode.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def system_code_params
      params.require(:system_code).permit(:code_type, :code, :name, :system_code_id, :description)
    end
end
