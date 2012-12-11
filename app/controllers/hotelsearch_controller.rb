class HotelsearchController < ApplicationController
  def result
    @city = params[:city]
    @raw_info = Hotel.getlist(@city,params[:province],params[:countrycode],params[:arrivalDate],params[:departureDate])
    @size =  @raw_info["HotelListResponse"]["HotelList"]["@size"]
    @hotels =  @raw_info["HotelListResponse"]["HotelList"]["HotelSummary"]
  end
end
