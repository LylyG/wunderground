require 'httparty'

class ActiveHurricane
  def initialize
    @response = HTTParty.get("http://api.wunderground.com/api/#{ENV{"WUNDERGROUND_KEY"}}/currenthurricane/view.json")
  end
end
