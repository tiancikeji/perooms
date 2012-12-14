require 'net/http'
class Hotel < ActiveRecord::Base
  attr_accessible :address1, :airportCode, :city, :countryCode, :deepLink, :name, :shortDescription, :thumbNailUrl
  has_many :rooms
  def self.getlist(city,stateProvinceCode,countryCode,arrivalDate,departureDate)
    return API.getHotelList(city,stateProvinceCode,countryCode,arrivalDate,departureDate)
  end
end
