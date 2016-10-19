class @ProgressBar
  constructor: (elem, url) ->
    @elem = $(elem)
    @url = url

    @message = @elem.find('.message')
    @bar = @elem.find('.progress-bar')
    @pingTime = parseInt(@elem.data('ping-time'))

  start: =>
    $.ajax({
      url: @url,
      dataType: 'json',
      success: (data) =>
        @message.html(data.message)

        percent = "#{data.percent}%"
        @bar.css('width', percent).html(percent)

        if data.percent < 100
          setTimeout(@start, @pingTime)
    })