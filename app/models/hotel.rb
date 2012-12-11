require 'net/http'
class Hotel < ActiveRecord::Base
  attr_accessible :address1, :airportCode, :city, :countryCode, :deepLink, :name, :shortDescription, :thumbNailUrl
  has_many :rooms

  def self.getlist(city,stateProvinceCode,countryCode,arrivalDate,departureDate)
    jsonArray = ""
    uri = URI("http://api.ean.com/ean-services/rs/hotel/v3/list?minorRev=&cid=381126&apiKey=6bbj2j6dsw4gy74q2xkgshdc&locale=US&currencyCode=USD&city="+city+"$stateProvinceCode="+stateProvinceCode+"&countryCode="+countryCode+"&supplierCacheTolerance=MED&arrivalDate="+arrivalDate+"&departureDate="+departureDate+"&room1=1,3&room2=1,5&supplierCacheTolerance=MED_ENHANCED")
    Net::HTTP.start(uri.host, uri.port,:use_ssl => uri.scheme == 'https') do |http|
      request = Net::HTTP::Get.new uri.request_uri
      response = http.request request
      jsonArray =  response.body
    end
    raw_info = JSON.parse(jsonArray)
    return raw_info
  end
end
