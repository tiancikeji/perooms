require 'net/http'
class API
  API_PREFIX = 'http://api.ean.com/ean-services/rs/hotel/v3/'
  API_CID = '381126' 
  API_KEY = '6bbj2j6dsw4gy74q2xkgshdc'
  API_LOCALE = 'ZH'
  API_currencyCode = "USD"
  API_common_str = "cid="+API_CID+"&apiKey="+API_KEY+"&locale="+API_LOCALE+"&currencyCode="+API_currencyCode

  def self.sendRequest(uri)
    p uri
    jsonArray = ""
    Net::HTTP.start(uri.host, uri.port,:use_ssl => uri.scheme == 'https') do |http|
      request = Net::HTTP::Get.new uri.request_uri
      response = http.request request
      jsonArray =  response.body
    end
    raw_info = JSON.parse(jsonArray)
    return raw_info
  end

  def self.getHotelList(city,stateProvinceCode,countryCode,arrivalDate,departureDate)
    uri = URI(API_PREFIX+"list?"+API_common_str+"&city="+city+"$stateProvinceCode="+stateProvinceCode+"&countryCode="+countryCode+"&supplierCacheTolerance=MED&arrivalDate="+arrivalDate+"&departureDate="+departureDate+"&room1=1,3&room2=1,5&supplierCacheTolerance=MED_ENHANCED")
    return self.sendRequest(uri)
  end

  def self.getLocations(destinationString)
    uri = URI(API_PREFIX+"geoSearch?"+API_common_str+"&destinationString="+destinationString+"&type=2&limit=10")
    return self.sendRequest(uri)
  end

end
