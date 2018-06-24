class WeatherForecast
  #Including dependency
  include HTTParty
  #setting base uri
  base_uri 'api.openweathermap.org'

  #initializing class and setting up query for search
  def initialize(city_id)
    @options = { query: { id: city_id, APPID: ENV['WEATHER_API_APP_ID'] } }
  end

  #get response from api
  def city_weather
    self.class.get("/data/2.5/forecast", @options)
  end
end