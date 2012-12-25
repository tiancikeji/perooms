require 'net/http'
class Hotel < ActiveRecord::Base
  attr_accessible :name,:address1,:address2,:address3, :airportCode, :city, :countryCode, :deepLink,:confidence,:longitude,:latitude,:highrate,:confidence, :shortDescription, :thumbNailUrl, :enahotel_id
  has_many :rooms

end
