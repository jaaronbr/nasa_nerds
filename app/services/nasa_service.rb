require 'date'

class NasaService

  def daily_apod
    today = time_format
    # astronomy picture of the day a.p.o.d.
    get_json("/planetary/apod?api_key=#{ENV["NASA_API_KEY"]}&date=#{today}&hd=bool")
  end

  def nasa_notifications
    today = time_format
    last_month = last_thirty
    #  Space Weather Database Of Notifications, Knowledge, Information
    query = get_json("/DONKI/notifications?startDate=#{last_month}&endDate=#{today}&api_key=#{ENV["NASA_API_KEY"]}&type=report")
    query[0]
  end

  def rover_photos
    query = get_json("/mars-photos/api/v1/rovers/curiosity/photos?sol=1&api_key=#{ENV["NASA_API_KEY"]}")
    query[:photos].first
  end

  private

  def time_format
    time = Time.now
    time.strftime("%F")
  end

  def last_thirty
    time = Time.now
    last = time.prev_month
    last.strftime("%F")
  end

  def get_json(url)
    response = conn.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end

  def conn
    Faraday.new(:url => "https://api.nasa.gov") do |faraday|
      faraday.adapter Faraday.default_adapter
    end
  end
end
