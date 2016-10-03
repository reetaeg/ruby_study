class RoleMenusController < ApplicationController
  before_action :set_role_menu, only: [:show, :edit, :update, :destroy]

  # GET /role_menus
  # GET /role_menus.json
  def index
    @role_menus = RoleMenu.all
  end

  # GET /role_menus/1
  # GET /role_menus/1.json
  def show
  end

  # GET /role_menus/new
  def new
    @role_menu = RoleMenu.new
  end

  # GET /role_menus/1/edit
  def edit
  end

  # POST /role_menus
  # POST /role_menus.json
  def create
    @role_menu = RoleMenu.new(role_menu_params)

    respond_to do |format|
      if @role_menu.save
        format.html { redirect_to @role_menu, notice: 'Role menu was successfully created.' }
        format.json { render :show, status: :created, location: @role_menu }
      else
        format.html { render :new }
        format.json { render json: @role_menu.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /role_menus/1
  # PATCH/PUT /role_menus/1.json
  def update
    respond_to do |format|
      if @role_menu.update(role_menu_params)
        format.html { redirect_to @role_menu, notice: 'Role menu was successfully updated.' }
        format.json { render :show, status: :ok, location: @role_menu }
      else
        format.html { render :edit }
        format.json { render json: @role_menu.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /role_menus/1
  # DELETE /role_menus/1.json
  def destroy
    @role_menu.destroy
    respond_to do |format|
      format.html { redirect_to role_menus_url, notice: 'Role menu was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_role_menu
      @role_menu = RoleMenu.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def role_menu_params
      params.require(:role_menu).permit(:name, :role_id, :is_used, :menu_id)
    end
end
