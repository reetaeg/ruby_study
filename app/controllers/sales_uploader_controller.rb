class SalesUploaderController < ApplicationController

  def import
    @progress_bar = current_user.progress_bars.create!(message: 'Queued', percent: 0)
    logger.info("================  1")
    file = params[:file]
    ProgressBarWorker.perform_later(@progress_bar)
    
    logger.info("================  2")
    
  end
  
  def start
    
  end

end