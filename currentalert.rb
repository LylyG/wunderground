require 'httparty'

class CurrentAlerts
  def initialize(zip)
    @response = HTTParty.get("http://api.wunderground.com/api/#{ENV{"WUNDERGROUND_KEY"}}/alerts/q/#{zip}.json")
  end
end
