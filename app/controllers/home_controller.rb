class HomeController < ApplicationController
  # Index
  def index
    @cities = City.all
  end
  # Ajax call method to get weather
  def get_weather
    weather_forecast = WeatherForecast.new(params[:location_id])
    response = weather_forecast.city_weather
    puts body = JSON.parse(response.body)
  	@city = body['city']['name']
  	@main_temperature_parameters = body['list'][0]['main']
  	respond_to do |format|
      format.js
      format.json { render json: @main_temperature_parameters }
  	end
  end
end
