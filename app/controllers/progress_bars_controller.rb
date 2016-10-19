class ProgressBarsController < ApplicationController

  def show
    @progress_bar = current_user.progress_bars.find(params[:id])
    render json: @progress_bar
  end

end