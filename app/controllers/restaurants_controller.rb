class RestaurantsController < ApplicationController
  def show
    @restaurant = Restaurant.find params[:account_number]
  end

  def search
    @restaurants = Restaurant.search params[:search]
  end
end
