class ProgressBarWorker < ActiveJob::Base
  
  queue_as :default

  def perform (progress_bar)
    Resque.logger.info "ProgressBarWorker: #{progress_bar}"
 

    progress_bar.update_attributes!({
      message: 'Working ...',
      percent: 0
    })
        
    10.times do |i|
      sleep(1)
      progress_bar.update_attributes!(percent: i * 10)
    end

    progress_bar.update_attributes!({
      message: 'Finished!',
      percent: 100
    })
    Resque.logger.info "ProgressBarWorker: #{progress_bar}"
  end

end