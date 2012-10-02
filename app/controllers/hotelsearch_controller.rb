class HotelsearchController < ApplicationController
  def result
    raw_info = Hotel.getlist
    @size =  raw_info["HotelListResponse"]["HotelList"]["@size"]
    @hotels =  raw_info["HotelListResponse"]["HotelList"]["HotelSummary"]
  end
end
