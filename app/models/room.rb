class Room < ActiveRecord::Base
  attr_accessible :hotel_id, :rateCode, :roomDescription, :roomTypeCode
  belongs_to :hotel
end
