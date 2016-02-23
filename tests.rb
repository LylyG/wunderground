require 'minitest/autorun'
require 'minitest/pride'
require './currentcondition.rb'
require './tendayforecast.rb'
require './sunrisesunset.rb'
require './currentalert.rb'
require './activehurricane.rb'
require 'json'
require 'byebug'

class CurrentCondition
  def initialize(zip)
    @response = JSON.parse(File.read("currentcondition.JSON"))
  end
end

class TenDayForecast
  def initialize(zip)
    @response = JSON.parse(File.read("tendayforecast.JSON"))
  end
end

class SunriseSunset
  def initialize(zip)
    @response = JSON.parse(File.read("sunrisesunset.JSON"))
  end
end

class CurrentAlert
  def initialize(zip)
    @response = JSON.parse(File.read("currentalert.JSON"))
  end
end

class ActiveHurricane
  def initialize(zip)
    @response = JSON.parse(File.read("activehurricane.JSON"))
  end
end

class WundergroundTests < MiniTest::Test
  def test_current_conditions_at_location
    w = CurrentCondition.new("00921")
    assert_equal 84.7, w.temperature
    assert_equal "San Juan, PR", w.location
  end

  def test_ten_day_forecast
    w = TenDayForecast.new("00921")
    assert w.forecast_all.include?("Monday" => "Showers possible early. Lows overnight in the low 70s.")
  end

  def test_sunrise_and_sunset
    w = SunriseSunset.new("2006")
    assert_equal "6:36", w.sunrise
    assert_equal "The sun will rise at 6:36 and will set at 19:40.", w.rise_and_set
  end

  # def test_current_weather_alerts
  # end
  #
  # def test_active_hurricanes
  # end
end
