class NasaService

  def initialize(api_key)
    @api_key = api_key
  end

  def get_json(url)
    response = conn.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end

  def conn
    Faraday.new(:url => "https://api.nasa.gov") do |faraday|
      faraday.headers["Authorization"] = "token #{@api_key}"
      faraday.adapter Faraday.default_adapter
    end
  end
end
