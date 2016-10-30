class SalesUploaderController < ApplicationController

  def import
    file = params[:file]
    @progress_bar = current_user.progress_bars.create!(message: 'Queued', percent: 0, temp:file.path)
    
    logger.info("================   1")

    ProgressBarWorker.perform_later(@progress_bar)
    
    logger.info("================  2")
    
  end
  


end