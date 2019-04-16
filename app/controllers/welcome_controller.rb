class WelcomeController < ApplicationController

  def index
    service = NasaService.new
    @nasa_pic = service.daily_apod
    @nasa_p_title = service.daily_apod[:title]
    @nasa_p_date = service.daily_apod[:date]
    @nasa_p_explanation = service.daily_apod[:explanation]
    @nasa_messg_type = service.nasa_notifications[:messageType]
    @nasa_messg_id = service.nasa_notifications[:messageID]
    @nasa_messg_time = service.nasa_notifications[:messageIssueTime]
    @nasa_messg = service.nasa_notifications[:messageBody]
    @nasa_messg_url = service.nasa_notifications[:messageURL]
    @rover_info = service.rover_photos
  end

end
