class HotelsearchController < ApplicationController
  def result
    @hotels =  Hotel.limit(20)
  end

  def getlocations
    @hotels = Hotel.where("name like ?","%#{params[:destinationString]}%").limit(10)
    render :json => @hotels
  end
end
