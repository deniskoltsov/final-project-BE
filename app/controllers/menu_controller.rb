class MenuController < ApplicationController

  def get_restaurants_api
    delivery_api_key = 'YmQ0OWUxN2RmNWUzYmQwZjE1MmE1OTMzZmIxNDE3YzQ3'
    food_api_key = '2f449a95047ff7afbb5182622480f2f341d5dbbd'
    address = params[:address]
    zipcode = params[:zipcode]
    puts "PARAMS:", params[:address], params[:zipcode]

    locationQuery = "https://www.delivery.com/api/merchant/search/delivery?address=#{address},+#{zipcode}&client_id=#{delivery_api_key}&&order_time=ASAP&order_type=delivery&vertical=f&merchant_type=R&item_only=0"

    puts 'locationQuery:', locationQuery

    # oneItemQuery = "https://www.delivery.com/api/merchant/932/menu/PE-82502-1-13-141?client_id=#{delivery_api_key}"

    data = HTTParty.get(locationQuery)
    render json: data
  end

end
