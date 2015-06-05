class RestaurantsController < ApplicationController
  def show
    @restaurant = Restaurant.find params[:account_number]
  end
end
