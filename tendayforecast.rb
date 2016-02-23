require 'httparty'

class TenDayForecast
  def initialize(zip)
    @response = HTTParty.get("http://api.wunderground.com/api/#{ENV{"WUNDERGROUND_KEY"}}/forecast10day/q/#{zip}.json")
  end

  def forecast_day(period)
    @response["forecast"]["txt_forecast"]["forecastday"][period]["title"]
  end

  def forecast_night(period)
    @response["forecast"]["txt_forecast"]["forecastday"][period]["title"]
  end

  def forecast_all
    forecast = {}
    (0..19).step(1) {|period| forecast[forecast_day(period)] = forecast_night(period)}
    forecast
  end
end
