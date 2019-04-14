require 'date'

class NasaService

  def daily_apod
    # astronomy picture of the day a.p.o.d.
    get_json("/planetary/apod?api_key=#{ENV["NASA_API_KEY"]}&date=2019-04-14&hd=bool")
  end

  def nasa_notifications
    #  Space Weather Database Of Notifications, Knowledge, Information
    query = get_json("/DONKI/notifications?startDate=2019-04-01&endDate=2019-04-14&api_key=#{ENV["NASA_API_KEY"]}&type=report")
    query[0]
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
