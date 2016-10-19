class PprogressBarJob < ActiveJob::Base
  queue_as :default

  def perform(progress_bar)
    logger.info "======> ProgressBarWorker: #{progress_bar}"
 

    progress_bar.update_attributes!({
      message: 'Working ...',
      percent: 0
    })
        
    10.times do |i|
      sleep(1)
      progress_bar.update_attributes!(percent: i * 10)
      logger.info "======> ProgressBarWorker: #{progress_bar}"
    end

    progress_bar.update_attributes!({
      message: 'Finished!',
      percent: 100
    })
  end
end
